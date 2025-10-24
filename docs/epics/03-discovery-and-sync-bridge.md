## Epic: Discovery and Sync Bridge (BMAD-METHOD src/modules)

### Problem
The v6-alpha installer only discovers modules under `src/modules/` in BMAD-METHOD, requiring a reliable bridge from this repo to that path.

### Goals
- Provide rsync-based sync (recommended) and document alternatives (git subtree, submodules).
- Ensure repeatable, idempotent syncing per pack folder.

### Scope
- Shell snippet and optional helper script.
- Guidance for subtree linkage for teams preferring versioned vendoring.

### Acceptance Criteria
1. Rsync command (or script) synchronizes all packs into `BMAD-METHOD/src/modules/{pack}` and removes stale files.
2. Instructions exist for subtree option with example commands.
3. Validation checklist confirms target contains expected folders and installer config.

### References
- See `EXPANSIONS-SETUP.md` sections: Making Packs Discoverable by the Installer, Rsync, Alternative: subtree.


