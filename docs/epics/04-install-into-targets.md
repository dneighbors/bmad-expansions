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

### References
- See `EXPANSIONS-SETUP.md` sections: Installing Packs into a Cursor Project, Updates.


