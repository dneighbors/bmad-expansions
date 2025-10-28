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
    - **Status:** ✅ DONE (5 points, commit 5f95ddf)
    - **Details:** See `docs/stories/story-12-medical-pack.md` and `docs/discovery/medical-pack-discovery.md`

13. (E2) Scaffold `marketing` pack via BMB create-module
    - As an author, I want complete marketing department with 31 agents and 15 workflows for small teams.
    - Acceptance: 31 agents created, 15 workflows created, README updated, priority workflows tested.
    - **Status:** ✅ DONE (15 points, commit 1faca00)
    - **Details:** See `docs/stories/story-13-marketing-pack.md` and `docs/discovery/marketing-pack-discovery.md`

14. (E2) Scaffold `blog` pack via BMB create-module
    - As an author, I want blog pack with author-as-agent pattern, 2 agents + 15 workflows, Derek's system ported.
    - Acceptance: 2 agents (Orion + Derek) created, 15 workflows created, content-ops ported, README updated, priority workflows tested.
    - **Status:** ✅ DONE (20 points, commit 210549c)
    - **Details:** See `docs/stories/story-14-blog-pack.md` and `docs/discovery/blog-pack-discovery.md`

15. (E3) Create sync script to copy packs into BMAD-METHOD
    - As a maintainer, I want `scripts/sync-packs.sh` to rsync packs and manage .gitignore noise.
    - Acceptance: Script syncs to `../BMAD-METHOD/src/modules/`; adds ignore entries safely.
    - **Status:** ✅ DONE (3 points, commit c79eabd)
    - **Details:** See `docs/stories/story-15-sync-script.md`

16. (E2) Retrofit existing packs to BMB format and standards
    - As a maintainer, I want to replace script-generated packs with proper BMB-generated versions to ensure BMAD Core compliance.
    - Acceptance: Script-generated packs deleted, BMB versions renamed (remove -bmad suffix), all references updated, proper `.agent.yaml` format throughout.
    - **Status:** 🔄 IN PROGRESS (8 points)
    - **Details:** Replace medical/marketing/blog with medical-bmad/marketing-bmad/blog-bmad (properly formatted)
    - **Epic:** E2 (Authoring with BMB)
    - **Sprint:** Sprint 01 (retroactive cleanup)

17. (E2) Establish and document BMB-first policy
    - As a maintainer, I want documented policy requiring all future agents/workflows use BMB workflows to maintain quality standards.
    - Acceptance: Policy document created, process documented, integrated into contribution guidelines, Sprint 02 stories reference policy.
    - **Status:** ⏳ PENDING (2 points)
    - **Details:** Create CONTRIBUTING.md with BMB-first requirements, update Sprint 02 planning
    - **Epic:** E2 (Authoring with BMB)
    - **Sprint:** Sprint 01 (policy establishment)

28. (E2) Complete workflow files for all packs
    - As a user installing expansion packs, I want all workflows to be fully functional with complete instructions, checklists, and READMEs so that I can actually execute workflows from Cursor.
    - Acceptance: All 38 workflows have instructions.md, checklist.md, README.md (114 new files); workflows appear in Cursor after install; 3 priority workflows tested end-to-end.
    - **Status:** 🆕 NEW (21 points) - CRITICAL for Sprint 02
    - **Details:** See `docs/stories/story-28-complete-workflow-files.md`
    - **Epic:** E2 (Authoring with BMB)
    - **Sprint:** Sprint 02 (highest priority)
    - **Issue:** Only workflow.yaml created in Sprint 01; missing user-facing files
    - **Impact:** Workflows non-functional, don't appear in Cursor

