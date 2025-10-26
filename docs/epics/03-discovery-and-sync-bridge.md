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
1. Rsync command (or script) synchronizes all packs into `BMAD-METHOD/src/modules/{pack}` and removes stale files. ✅
2. Instructions exist for subtree option with example commands.
3. Validation checklist confirms target contains expected folders and installer config.

### Stories

| Story | Status | Points | Notes |
|-------|--------|--------|-------|
| **Story 6** — Rsync script (duplicate) | ✅ DONE | - | Consolidated with Story 15 |
| **Story 7** — Git subtree docs | ⏳ Deferred | 2 | Rsync sufficient for MVP |
| **Story 15** — Sync script | ✅ DONE | 3 | Commit c79eabd; `scripts/sync-packs.sh` |

### Progress Summary
- **Completed:** 1/3 stories (Story 15) — 3 story points delivered
- **Deferred:** 2/3 stories (Stories 6, 7) — Git subtree is nice-to-have
- **Key Deliverable:** `scripts/sync-packs.sh` ready for deployment

### Sync Script Features
- ✅ Idempotent rsync to `../BMAD-METHOD/src/modules/`
- ✅ Deletes stale files per pack
- ✅ .gitignore integration
- ✅ Ready for testing with all 3 packs

### References
- See `EXPANSIONS-SETUP.md` sections: Making Packs Discoverable by the Installer, Rsync, Alternative: subtree.
- Sync script: `scripts/sync-packs.sh`
- Story detail: `docs/stories/story-15-sync-script.md`


