## Backlog — BMAD Expansions

### Legend
- (E1) Repository Structure and Installer Metadata
- (E2) Authoring with BMAD Builder (BMB)
- (E3) Discovery and Sync Bridge
- (E4) Install Packs into Target Projects

### Stories

1. (E1) Create example pack scaffold at repo root
   - As a maintainer, I want a minimal pack with `agents/`, `workflows/`, `_module-installer/`, and `README.md` so that others can copy it.
   - Acceptance: Folder exists with required subfolders and example files.

2. (E1) Provide installer config template
   - As a maintainer, I want a boilerplate `_module-installer/install-config.yaml` so new packs start with correct fields.
   - Acceptance: Template includes `code`, `name`, `description`, `version`, `default_selected`, `dependencies`.

3. (E2) Document `*create-module` usage
   - As an author, I need steps to generate a module scaffold with BMB.
   - Acceptance: Doc includes trigger usage and expected output paths.

4. (E2) Document `*create-agent` flow and output locations
   - As an author, I need to create agents and know where files go in this repo.
   - Acceptance: Agent YAML example compiles during install in a target project.

5. (E2) Document `*create-workflow` flow and structure
   - As an author, I need to generate workflow folders (`workflow.yaml`, `instructions.md`, etc.).
   - Acceptance: Example workflow validates with core executor.

6. (E3) Add rsync script for syncing packs into BMAD-METHOD
   - As a maintainer, I want a one-liner or script to sync all packs into `BMAD-METHOD/src/modules/`.
   - Acceptance: Script syncs and deletes stale files; idempotent.

7. (E3) Document git subtree alternative
   - As a team, we want an option to vendor packs with history.
   - Acceptance: Steps show add, pull, and split commands with example paths.

8. (E4) Document installer command for target projects (Cursor)
   - As a developer, I want a known-good command to install packs into a project and generate `.cursor/rules/`.
   - Acceptance: Command includes `--ides cursor`; verified in a sample project.

9. (E4) Define update procedure (re-sync + re-install)
   - As a maintainer, I want a clear flow to propagate pack changes to targets.
   - Acceptance: Steps verified; artifacts regenerated without manual edits.

10. (E4) Add verification checklist for installs/updates
    - As a QA, I need a checklist to confirm expected outputs in targets.
    - Acceptance: Checklist covers modules copied, agents compiled, Cursor artifacts generated.

11. (E1) Rename pack directories to final names (medical, marketing, blog)
    - As a maintainer, I want canonical pack names without "-team" suffixes.
    - Acceptance: Directories renamed; existing metadata updated accordingly.
    - **Status:** ✅ DONE

12. (E2) Scaffold `medical` pack via BMB create-module
    - As an author, I want `medical` pack for healthcare SaaS teams with 9 agents and 8 workflows.
    - Acceptance: 9 agents created, 8 workflows created, README updated, priority workflows tested.
    - **Status:** ✅ READY FOR DEV (Discovery complete, assigned to developer, 5 points)
    - **Details:** See `docs/stories/story-12-medical-pack.md` and `docs/discovery/medical-pack-discovery.md`

13. (E2) Scaffold `marketing` pack via BMB create-module
    - As an author, I want complete marketing department with 31 agents and 15 workflows for small teams.
    - Acceptance: 31 agents created, 15 workflows created, README updated, priority workflows tested.
    - **Status:** ✅ READY FOR DEV (Discovery complete, assigned to developer, 15 points)
    - **Details:** See `docs/stories/story-13-marketing-pack.md` and `docs/discovery/marketing-pack-discovery.md`

14. (E2) Scaffold `blog` pack via BMB create-module
    - As an author, I want blog pack with author-as-agent pattern, 2 agents + 15 workflows, Derek's system ported.
    - Acceptance: 2 agents (Orion + Derek) created, 15 workflows created, content-ops ported, README updated, priority workflows tested.
    - **Status:** ✅ READY FOR DEV (Discovery complete, assigned to developer, 20 points)
    - **Details:** See `docs/stories/story-14-blog-pack.md` and `docs/discovery/blog-pack-discovery.md`

15. (E3) Create sync script to copy packs into BMAD-METHOD
    - As a maintainer, I want `scripts/sync-packs.sh` to rsync packs and manage .gitignore noise.
    - Acceptance: Script syncs to `../BMAD-METHOD/src/modules/`; adds ignore entries safely.


