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
1. Repository Structure Baseline
   - Create epic and stories for multi-pack layout and installer metadata.
2. Authoring Enablement
   - Create epic and stories for using BMB builder workflows to author agents/workflows/modules.
3. Discovery and Sync Bridge
   - Create epic and stories for rsync/subtree flows into BMAD-METHOD `src/modules/`.
4. Installation into Target Projects
   - Create epic and stories for installing into target projects (e.g., Cursor) and regenerating artifacts on updates.
5. Governance & Best Practices
   - Document best practices and acceptance criteria; define verification checks.

### Assumptions & Constraints
- BMAD v6-alpha installer discovers modules only under `src/modules/` of the BMAD repo.
- `bmad-cli` is available and can be invoked as documented in `EXPANSIONS-SETUP.md`.
- Public GitHub repository is used for collaboration and visibility.

### Risks
- Installer discovery path may change in future versions; mitigate with clear sync scripts.
- Inconsistent pack metadata can break installation; mitigate with templates and validation.

### Success Metrics
- New pack scaffold can be created and installed into a target project in < 10 minutes.
- Updates to a pack propagate via sync and re-install with zero manual file edits.
- Cursor artifacts regenerate consistently after updates.

### Current Status (2025-10-24)

**Sprint 01 Active:**
- Story 11 (E1): ✅ Pack directories renamed
- Story 12 (E2): 🔄 Medical pack discovery complete, assigned to developer
- Story 13-15: ⏳ Pending

**Completed Artifacts:**
- 4 Epics defined
- 15 Stories in backlog
- Sprint 01 plan created
- Medical pack discovery session complete (9 agents, 8 workflows scoped)

### Next Steps
- Developer implements Story 12 (medical pack)
- Run discovery sessions for Stories 13-14 (marketing, blog packs)
- Implement Story 15 (sync script) after packs are built


