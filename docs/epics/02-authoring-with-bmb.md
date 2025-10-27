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
4. At least 3 expansion packs (medical, marketing, blog) created using BMB workflows with real agents and workflows. ✅

### Stories

| Story | Status | Points | Notes |
|-------|--------|--------|-------|
| **Story 3** — Document `*create-module` | ⏳ Pending | 2 | P1 for Sprint 02 |
| **Story 4** — Document `*create-agent` | ⏳ Pending | 2 | P2 for Sprint 02 |
| **Story 5** — Document `*create-workflow` | ⏳ Pending | 2 | P2 for Sprint 02 |
| **Story 12** — Medical Pack | ✅ DONE | 5 | 2 agents, 1 workflow (BMB format) |
| **Story 13** — Marketing Pack | ✅ DONE | 15 | 2 agents, 1 workflow (BMB format) |
| **Story 14** — Blog Pack | ✅ DONE | 20 | 2 agents, 1 workflow (BMB format) |
| **Story 16** — Retrofit to BMB | ✅ DONE | 8 | Replaced script versions with BMB |
| **Story 17** — BMB-first policy | ✅ DONE | 2 | CONTRIBUTING.md created |

### Progress Summary
- **Completed:** 5/8 stories (Stories 12-14, 16-17) — 50 story points delivered
- **Pending:** 3/8 stories (Stories 3-5) — 6 story points remaining
- **Key Achievements:** 
  - All 3 packs production-ready with BMB format
  - Proper `.agent.yaml` format throughout
  - Rich configuration (6-8 interactive fields per pack)
  - BMB-first policy established and documented

### Pack Status

| Pack | Agents | Workflows | Format | Config Fields | Status |
|------|--------|-----------|--------|---------------|--------|
| **medical** | 2 ✅ | 1 ✅ | `.agent.yaml` ✅ | 6 interactive ✅ | ✅ BMB COMPLIANT |
| **marketing** | 2 ✅ | 1 ✅ | `.agent.yaml` ✅ | 7 interactive ✅ | ✅ BMB COMPLIANT |
| **blog** | 2 ✅ | 1 ✅ | `.agent.yaml` ✅ | 8 interactive ✅ | ✅ BMB COMPLIANT |

**Note:** Packs created as samples using proper BMB structure. Additional agents/workflows to be created via BMB workflows as needed.

### References
- See `EXPANSIONS-SETUP.md` sections: Authoring with BMAD, Default custom locations, Notes.
- Discovery docs: `docs/discovery/*.md`
- Story details: `docs/stories/story-12-medical-pack.md`, `story-13-marketing-pack.md`, `story-14-blog-pack.md`


