#!/bin/bash
# Sync expansion packs from bmad-expansions to BMAD-METHOD
# Story 15: https://github.com/dneighbors/bmad-expansions

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Directories to exclude from sync
EXCLUDE_DIRS=("bmad" "docs" ".git" ".cursor" "node_modules" "scripts" ".github")

# Dry-run mode
DRY_RUN=false
if [[ "$1" == "--dry-run" ]]; then
    DRY_RUN=true
fi

echo -e "${BLUE}🚀 BMAD Expansion Pack Sync Script${NC}"
echo "=================================="
echo ""

# Check for required dependencies
echo -e "${BLUE}Checking dependencies...${NC}"

if ! command -v rsync &> /dev/null; then
    echo -e "${RED}❌ ERROR: rsync is not installed${NC}"
    echo ""
    echo "rsync is required for syncing packs. Please install it:"
    echo ""
    
    # Detect OS and provide specific instructions
    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        case "$ID" in
            ubuntu|debian|pop)
                echo "  sudo apt update && sudo apt install -y rsync"
                ;;
            fedora)
                echo "  sudo dnf install -y rsync"
                ;;
            arch|manjaro)
                echo "  sudo pacman -S rsync"
                ;;
            opensuse*)
                echo "  sudo zypper install rsync"
                ;;
            rhel|centos)
                echo "  sudo yum install -y rsync"
                ;;
            *)
                echo "  # For your system ($ID), please install rsync using your package manager"
                echo "  # Common: apt, dnf, pacman, zypper, yum"
                ;;
        esac
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "  # macOS (usually pre-installed, or use Homebrew):"
        echo "  brew install rsync"
    else
        echo "  # Please install rsync using your system's package manager"
    fi
    
    echo ""
    echo "Then run this script again."
    exit 1
fi

echo -e "${GREEN}✓${NC} rsync found"
echo ""

# Determine source directory (this repo)
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
echo -e "${BLUE}Source directory:${NC} ${SOURCE_DIR}"
echo ""

# Interactive prompt for target directory
DEFAULT_TARGET_DIR_RAW="${SOURCE_DIR}/../BMAD-METHOD"
# Resolve to absolute path for cleaner display
DEFAULT_TARGET_DIR="$(cd "${DEFAULT_TARGET_DIR_RAW}" 2>/dev/null && pwd || echo "${DEFAULT_TARGET_DIR_RAW}")"

echo -e "${BLUE}Where is your BMAD-METHOD repository?${NC}"
echo -e "${YELLOW}Default:${NC} ${DEFAULT_TARGET_DIR}"
echo ""
read -p "BMAD-METHOD path [press Enter for default]: " USER_TARGET_DIR

# Use default if user just pressed Enter
if [[ -z "${USER_TARGET_DIR}" ]]; then
    TARGET_DIR="${DEFAULT_TARGET_DIR}"
else
    TARGET_DIR="${USER_TARGET_DIR}"
    # Expand ~ to home directory if present
    TARGET_DIR="${TARGET_DIR/#\~/$HOME}"
fi

echo ""
echo -e "${GREEN}✓${NC} Using target: ${TARGET_DIR}"
echo ""

# Validate target directory exists
if [[ ! -d "${TARGET_DIR}" ]]; then
    echo -e "${RED}❌ ERROR: BMAD-METHOD directory not found at ${TARGET_DIR}${NC}"
    echo ""
    echo "Please ensure the directory exists and try again."
    echo ""
    exit 1
fi

TARGET_MODULES="${TARGET_DIR}/src/modules"
if [[ ! -d "${TARGET_MODULES}" ]]; then
    echo -e "${RED}❌ ERROR: Target modules directory not found at ${TARGET_MODULES}${NC}"
    echo ""
    echo "Please ensure BMAD-METHOD has src/modules/ directory"
    exit 1
fi

GITIGNORE_FILE="${TARGET_DIR}/.gitignore"

if [[ "${DRY_RUN}" == true ]]; then
    echo -e "${YELLOW}🔍 DRY-RUN MODE - No changes will be made${NC}"
    echo ""
fi

# Find all valid pack directories (contain _module-installer/install-config.yaml)
echo -e "${BLUE}🔍 Discovering expansion packs...${NC}"
PACKS=()
for dir in "${SOURCE_DIR}"/*; do
    if [[ -d "${dir}" && -f "${dir}/_module-installer/install-config.yaml" ]]; then
        pack_name=$(basename "${dir}")
        
        # Check if this is an excluded directory
        skip=false
        for exclude in "${EXCLUDE_DIRS[@]}"; do
            if [[ "${pack_name}" == "${exclude}" ]]; then
                skip=true
                break
            fi
        done
        
        if [[ "${skip}" == false ]]; then
            PACKS+=("${pack_name}")
        fi
    fi
done

if [[ ${#PACKS[@]} -eq 0 ]]; then
    echo -e "${YELLOW}⚠️  No expansion packs found${NC}"
    exit 0
fi

echo -e "${GREEN}✓${NC} Found ${#PACKS[@]} expansion pack(s):"
for pack in "${PACKS[@]}"; do
    echo "  • ${pack}"
done
echo ""

# Confirm before syncing (unless dry-run)
if [[ "${DRY_RUN}" == false ]]; then
    echo -e "${BLUE}Ready to sync ${#PACKS[@]} pack(s) to BMAD-METHOD?${NC}"
    echo -e "  Source: ${SOURCE_DIR}"
    echo -e "  Target: ${TARGET_MODULES}"
    echo ""
    read -p "Continue? [Y/n]: " CONFIRM
    
    if [[ ! -z "${CONFIRM}" && ! "${CONFIRM}" =~ ^[Yy]$ ]]; then
        echo ""
        echo -e "${YELLOW}Sync cancelled${NC}"
        exit 0
    fi
    echo ""
fi

# Sync each pack
echo -e "${BLUE}📦 Syncing packs...${NC}"
for pack in "${PACKS[@]}"; do
    source_pack="${SOURCE_DIR}/${pack}/"
    target_pack="${TARGET_MODULES}/${pack}/"
    
    if [[ "${DRY_RUN}" == true ]]; then
        echo -e "${YELLOW}[DRY-RUN]${NC} Would sync: ${pack}"
        echo "  Source: ${source_pack}"
        echo "  Target: ${target_pack}"
        echo ""
        rsync -av --dry-run --delete "${source_pack}" "${target_pack}" | grep -E "^\S" | head -10
        echo "  ..."
    else
        echo -e "${GREEN}✓${NC} Syncing: ${pack}"
        rsync -a --delete "${source_pack}" "${target_pack}"
    fi
done
echo ""

# Update .gitignore in BMAD-METHOD
echo -e "${BLUE}📝 Updating .gitignore...${NC}"
if [[ ! -f "${GITIGNORE_FILE}" ]]; then
    if [[ "${DRY_RUN}" == true ]]; then
        echo -e "${YELLOW}[DRY-RUN]${NC} Would create: ${GITIGNORE_FILE}"
    else
        echo -e "${GREEN}✓${NC} Creating ${GITIGNORE_FILE}"
        touch "${GITIGNORE_FILE}"
    fi
fi

for pack in "${PACKS[@]}"; do
    ignore_entry="src/modules/${pack}"
    
    if grep -qF "${ignore_entry}" "${GITIGNORE_FILE}" 2>/dev/null; then
        echo "  • ${pack} already in .gitignore"
    else
        if [[ "${DRY_RUN}" == true ]]; then
            echo -e "${YELLOW}[DRY-RUN]${NC} Would add: ${ignore_entry}"
        else
            echo -e "${GREEN}✓${NC} Adding: ${ignore_entry}"
            echo "${ignore_entry}" >> "${GITIGNORE_FILE}"
        fi
    fi
done
echo ""

# Summary
echo "=================================="
if [[ "${DRY_RUN}" == true ]]; then
    echo -e "${YELLOW}🔍 DRY-RUN COMPLETE${NC}"
    echo ""
    echo "No changes were made."
    echo "Run without --dry-run to apply changes:"
    echo ""
    echo "  ./scripts/sync-packs.sh"
else
    echo -e "${GREEN}✅ SYNC COMPLETE${NC}"
    echo ""
    echo "Successfully synced ${#PACKS[@]} pack(s):"
    for pack in "${PACKS[@]}"; do
        echo "  ✓ ${pack}"
    done
    echo ""
    echo -e "${BLUE}Next steps:${NC}"
    echo "  1. Navigate to BMAD-METHOD: cd ${TARGET_DIR}"
    echo "  2. Build/update BMAD: npm install (or npm run build if needed)"
    echo "  3. Navigate to your target project"
    echo "  4. Install packs: bmad-cli install"
    echo "  5. Select from: $(IFS=, ; echo "${PACKS[*]}")"
    echo ""
    echo -e "${YELLOW}Note:${NC} BMAD needs to rebuild to discover the new/updated modules"
fi
echo "=================================="

