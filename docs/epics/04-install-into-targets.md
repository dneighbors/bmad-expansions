## Epic: Install Packs into Target Projects (Cursor-ready)

### Problem
Teams need a clear, repeatable process to install synced packs into target projects and regenerate artifacts on updates.

### Goals
- Document install command with `--ides cursor` for Cursor artifacts.
- Define update flow (re-sync, re-install) with zero manual edits.

### Scope
- Installation command patterns and options.
- Update procedures and verification checks.

### Acceptance Criteria
1. Install command runs successfully with selected modules and generates `.cursor/rules/*` artifacts in targets.
2. Re-running install after pack updates overwrites module folders and regenerates artifacts without manual steps.
3. Verification checklist confirms expected files and updated agent compilations.

### Stories

| Story | Status | Points | Notes |
|-------|--------|--------|-------|
| **Story 8** — Install command docs | ⏳ Pending | 3 | P1 for Sprint 02 |
| **Story 9** — Update procedure docs | ⏳ Pending | 2 | P2 for Sprint 02 |
| **Story 10** — Verification checklist | ⏳ Deferred | 2 | After install flow validated |

### Progress Summary
- **Completed:** 0/3 stories
- **Pending:** 2/3 stories (Stories 8-9) — 5 story points
- **Deferred:** 1/3 stories (Story 10) — Waiting for end-to-end validation

### Next Steps
1. **Story 8** (P1): Document installer command with `--ides cursor`
2. **Story 9** (P2): Define update procedure (re-sync + re-install)
3. **Validation**: Test end-to-end flow with one pack in target project
4. **Story 10**: Create verification checklist after validation complete

### Blockers
- None — all 3 packs ready for testing
- Sync script available for deployment
- Ready for end-to-end validation in target project

### References
- See `EXPANSIONS-SETUP.md` sections: Installing Packs into a Cursor Project, Updates.


