# Story 15: Create sync script to copy packs into BMAD-METHOD

**Epic:** E3 — Discovery and Sync Bridge  
**Epic Reference:** [docs/epics/03-discovery-and-sync-bridge.md](../epics/03-discovery-and-sync-bridge.md)  
**Priority:** P0 (Critical Path)  
**Story Points:** 3  
**Assigned:** Developer (TBD)

---

## User Story

As a maintainer, I want `scripts/sync-packs.sh` to rsync packs and manage .gitignore noise so that I can reliably sync expansion packs into BMAD-METHOD without manual file operations.

---

## Acceptance Criteria

1. Script located at `scripts/sync-packs.sh` is executable.
2. Script syncs all pack directories (excluding `bmad/`, `docs/`, `.git/`, etc.) from this repo into `../BMAD-METHOD/src/modules/{pack-name}/`.
3. Script uses `rsync -a --delete` to ensure idempotency (removes stale files).
4. Script appends pack names to `../BMAD-METHOD/.gitignore` (if not already present) to prevent git noise in BMAD-METHOD.
5. Script validates that `../BMAD-METHOD/` exists; exits with clear error if not.
6. Script includes dry-run mode (`--dry-run` flag) for safe testing.
7. Script outputs summary of synced packs.

---

## Technical Notes

- Exclude directories: `bmad/`, `docs/`, `.git/`, `.cursor/`, `node_modules/`, `scripts/`
- Each pack must contain `_module-installer/install-config.yaml` to be considered valid.
- Use `grep -qF` to check for existing .gitignore entries before appending.

---

## Example Usage

```bash
# Normal mode
./scripts/sync-packs.sh

# Dry-run mode
./scripts/sync-packs.sh --dry-run
```

---

## Definition of Done

- [ ] Script created and executable
- [ ] All acceptance criteria validated
- [ ] Tested with at least 3 packs (medical, marketing, blog)
- [ ] Documentation updated in README or EXPANSIONS-SETUP
- [ ] Committed to `main`

---

_Created by John (PM) on 2025-10-24_

