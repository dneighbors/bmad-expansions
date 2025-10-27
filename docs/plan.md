## Project Plan: BMAD Expansions

### Scope
- Establish a clear structure and process to author, manage, and distribute multiple BMAD expansion packs within this repository.
- Enable rapid creation of agents/workflows via BMAD builder workflows and consistent installation into target projects (e.g., Cursor projects).
- Provide a discoverability bridge (rsync/subtree) into BMAD-METHOD `src/modules/` until direct-path installations are available.

### Objectives
- Define a repository structure for multiple packs (one folder per pack) with required installer metadata.
- Document and operationalize authoring workflows for agents and workflows.
- Provide a reliable sync mechanism into BMAD-METHOD for installation.
- Document installation steps into target projects (including Cursor artifacts) and update flow.

### Deliverables
- `docs/epics/*` — Epics describing major capability areas.
- `docs/stories/backlog.md` — Initial, prioritized backlog mapped to epics.
- `docs/sprints/*` — Sprint plans with prioritized stories and assignments.
- `docs/discovery/*` — Discovery sessions documenting pack requirements.
- Authoring and install guidance aligned with `EXPANSIONS-SETUP.md`.

### Milestones

1. ✅ **Repository Structure Baseline** — PARTIAL COMPLETE
   - Epic and stories created for multi-pack layout and installer metadata
   - Story 11 complete (pack directories renamed)
   - Story 2 pending (installer config template)

2. ✅ **Authoring Enablement** — PRIMARY COMPLETE
   - Epic and stories created for BMB builder workflows
   - 3 production packs delivered: medical (9 agents, 8 workflows), marketing (31 agents, 15 workflows), blog (2 agents, 15 workflows)
   - Documentation stories (3-5) pending for Sprint 02

3. ✅ **Discovery and Sync Bridge** — COMPLETE
   - Epic and stories created for sync flows
   - Sync script delivered (`scripts/sync-packs.sh`)
   - Git subtree documentation deferred (rsync sufficient)

4. ⏳ **Installation into Target Projects** — PENDING
   - Epic and stories created
   - Pending: Documentation (Stories 8-9) and validation testing
   - Target for Sprint 02

5. ⏳ **Governance & Best Practices** — PENDING
   - Verification checklist (Story 10) deferred until validation complete
   - Target for Sprint 02+

### Assumptions & Constraints
- BMAD v6-alpha installer discovers modules only under `src/modules/` of the BMAD repo.
- `bmad-cli` is available and can be invoked as documented in `EXPANSIONS-SETUP.md`.
- Public GitHub repository is used for collaboration and visibility.

### Risks
- Installer discovery path may change in future versions; mitigate with clear sync scripts.
- Inconsistent pack metadata can break installation; mitigate with templates and validation.

### Success Metrics

**Target Metrics:**
- New pack scaffold can be created and installed into a target project in < 10 minutes
- Updates to a pack propagate via sync and re-install with zero manual file edits
- Cursor artifacts regenerate consistently after updates

**Sprint 01 Results:**
- ✅ 3 production packs created with 42 agents and 31 workflows total
- ✅ Sync script ready for deployment testing
- ⏳ End-to-end validation pending (Sprint 02)

---

## Status Tracking

For current sprint progress, story status, and operational tracking, see:
- **Workflow Status:** `docs/workflow-status.md` (updated 2025-10-26)
- **Sprint 01 Plan:** `docs/sprints/sprint-01-plan.md` (✅ COMPLETE — 43/43 points delivered)
- **Epics:** `docs/epics/*.md` (all updated with story progress)
- **Backlog:** `docs/stories/backlog.md`

### Current Status (2025-10-27)

**Sprint 01:** ✅ COMPLETE + IMPROVED  
**Phase:** Ready for Sprint 02 (Documentation & Validation)  
**Completed:** 7 stories, 53 story points  
**Key Deliverables:**
- Medical pack (2 agents, 1 workflow - BMB format, 6 config fields)
- Marketing pack (2 agents, 1 workflow - BMB format, 7 config fields)
- Blog pack (2 agents, 1 workflow - BMB format, 8 config fields)
- Sync script (`scripts/sync-packs.sh`)
- **Retrofit to BMB format (Story 16, 8 points)**
- **BMB-first policy (Story 17, 2 points)**

**Quality Improvements:**
- All packs retrofitted from script-generated to BMB-generated
- Proper `.agent.yaml` format (not `.md`)
- Rich configuration (6-8 interactive fields per pack)
- Detailed workflow instructions (200-300+ lines)
- BMAD Core compliant
- CONTRIBUTING.md with BMB-first mandate


