#!/bin/bash
# Sync expansion packs from bmad-expansions to BMAD-METHOD
# Story 15: https://github.com/dneighbors/bmad-expansions

set -e

# Configuration
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${SOURCE_DIR}/../BMAD-METHOD"
TARGET_MODULES="${TARGET_DIR}/src/modules"
GITIGNORE_FILE="${TARGET_DIR}/.gitignore"

# Directories to exclude from sync
EXCLUDE_DIRS=("bmad" "docs" ".git" ".cursor" "node_modules" "scripts" ".github")

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Dry-run mode
DRY_RUN=false
if [[ "$1" == "--dry-run" ]]; then
    DRY_RUN=true
    echo -e "${YELLOW}🔍 DRY-RUN MODE${NC}"
fi

echo "🚀 BMAD Expansion Pack Sync Script"
echo "=================================="
echo ""
echo "Source: ${SOURCE_DIR}"
echo "Target: ${TARGET_MODULES}"
echo ""

# Validate target directory exists
if [[ ! -d "${TARGET_DIR}" ]]; then
    echo -e "${RED}❌ ERROR: BMAD-METHOD directory not found at ${TARGET_DIR}${NC}"
    echo ""
    echo "Expected directory structure:"
    echo "  bmad-expansions/  (this repo)"
    echo "  BMAD-METHOD/      (sibling repo)"
    echo ""
    exit 1
fi

if [[ ! -d "${TARGET_MODULES}" ]]; then
    echo -e "${RED}❌ ERROR: Target modules directory not found at ${TARGET_MODULES}${NC}"
    echo "Please ensure BMAD-METHOD has src/modules/ directory"
    exit 1
fi

# Find all valid pack directories (contain _module-installer/install-config.yaml)
echo "🔍 Discovering expansion packs..."
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

echo "Found ${#PACKS[@]} expansion pack(s):"
for pack in "${PACKS[@]}"; do
    echo "  - ${pack}"
done
echo ""

# Sync each pack
echo "📦 Syncing packs..."
for pack in "${PACKS[@]}"; do
    source_pack="${SOURCE_DIR}/${pack}/"
    target_pack="${TARGET_MODULES}/${pack}/"
    
    if [[ "${DRY_RUN}" == true ]]; then
        echo -e "${YELLOW}[DRY-RUN]${NC} Would sync: ${pack} → ${target_pack}"
        rsync -av --dry-run --delete "${source_pack}" "${target_pack}" | grep -v "/$" | tail -5
    else
        echo -e "${GREEN}✓${NC} Syncing: ${pack}"
        rsync -a --delete "${source_pack}" "${target_pack}"
    fi
done
echo ""

# Update .gitignore in BMAD-METHOD
echo "📝 Updating .gitignore..."
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
        echo "  ${pack} already in .gitignore"
    else
        if [[ "${DRY_RUN}" == true ]]; then
            echo -e "${YELLOW}[DRY-RUN]${NC} Would add to .gitignore: ${ignore_entry}"
        else
            echo -e "${GREEN}✓${NC} Adding to .gitignore: ${ignore_entry}"
            echo "${ignore_entry}" >> "${GITIGNORE_FILE}"
        fi
    fi
done
echo ""

# Summary
echo "=================================="
if [[ "${DRY_RUN}" == true ]]; then
    echo -e "${YELLOW}🔍 DRY-RUN COMPLETE${NC}"
    echo "No changes were made. Run without --dry-run to apply changes."
else
    echo -e "${GREEN}✅ SYNC COMPLETE${NC}"
    echo ""
    echo "Synced ${#PACKS[@]} pack(s) to BMAD-METHOD:"
    for pack in "${PACKS[@]}"; do
        echo "  ✓ ${pack}"
    done
fi
echo "=================================="

