## Epic: Authoring with BMAD Builder (BMB)

### Problem
Authors need a reliable, consistent way to create agents, workflows, and module scaffolds that align with BMAD conventions.

### Goals
- Enable `*create-module`, `*create-agent`, and `*create-workflow` to produce valid outputs in this repo.
- Document custom output locations per installer configuration.

### Scope
- Describe command usage and expected outputs.
- Ensure YAML agents are compiled to `.md` during installation in target projects.

### Acceptance Criteria
1. Authoring documentation exists for creating modules, agents, and workflows using BMB triggers.
2. Outputs land in configured locations (e.g., `bmad/{module}/agents`, `bmad/{module}/workflows`).
3. Example agent YAML validates and compiles correctly during install.
4. At least 3 expansion packs (medical, marketing, blog) created using BMB workflows with real agents and workflows.

### Progress Tracking

**Story 12 — Medical Pack (IN PROGRESS)**
- Status: Discovery complete; assigned to developer
- Scope: 9 agents, 8 workflows
- Discovery: `docs/discovery/medical-pack-discovery.md`
- Story detail: `docs/stories/story-12-medical-pack.md`

**Story 13 — Marketing Pack (PENDING)**
- Status: Awaiting discovery session

**Story 14 — Blog Pack (PENDING)**
- Status: Awaiting discovery session

### References
- See `EXPANSIONS-SETUP.md` sections: Authoring with BMAD, Default custom locations, Notes.
- Medical pack discovery: `docs/discovery/medical-pack-discovery.md`


