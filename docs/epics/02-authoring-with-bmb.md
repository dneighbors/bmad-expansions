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
| **Story 12** — Medical Pack | ✅ DONE | 5 | 9 agents, 8 workflows (BMB format) |
| **Story 13** — Marketing Pack | ✅ DONE | 15 | 31 agents, 15 workflows (BMB format) |
| **Story 14** — Blog Pack | ✅ DONE | 20 | 2 agents, 15 workflows (BMB format) |
| **Story 16** — Retrofit to BMB | ✅ DONE | 8 | Replaced script versions with BMB |
| **Story 17** — BMB-first policy | ✅ DONE | 2 | CONTRIBUTING.md created |
| **Story 28** — Complete workflow files | 🆕 NEW | 21 | **CRITICAL** - Workflows missing instructions/checklists |

### Progress Summary
- **Completed:** 5/9 stories (Stories 12-14, 16-17) — 50 story points delivered
- **Pending:** 3/9 stories (Stories 3-5) — 6 story points remaining
- **Sprint 02 Priority:** 1/9 stories (Story 28) — 21 story points - **CRITICAL**
- **Key Achievements:** 
  - All 3 packs production-ready with BMB format
  - 42 agents created in proper `.agent.yaml` format
  - 38 workflow configurations (workflow.yaml) created
  - Rich configuration (6-8 interactive fields per pack)
  - BMB-first policy established and documented

### ⚠️ Critical Gap Identified
- **Issue:** Workflows missing instructions.md, checklist.md, README.md (114 files)
- **Impact:** Workflows non-functional, don't appear in Cursor after install
- **Resolution:** Story 28 created as P0 for Sprint 02
- **Current State:** Agents work perfectly; workflows need completion

### Pack Status

| Pack | Agents | Workflows (Config) | Workflows (Complete) | Format | Config Fields | Status |
|------|--------|--------------------|-----------------------|--------|---------------|--------|
| **medical** | 9 ✅ | 8 ✅ | ⚠️ 0/8 | `.agent.yaml` ✅ | 6 interactive ✅ | ⚠️ AGENTS ONLY |
| **marketing** | 31 ✅ | 15 ✅ | ⚠️ 0/15 | `.agent.yaml` ✅ | 7 interactive ✅ | ⚠️ AGENTS ONLY |
| **blog** | 2 ✅ | 15 ✅ | ⚠️ 0/15 | `.agent.yaml` ✅ | 8 interactive ✅ | ⚠️ AGENTS ONLY |
| **TOTAL** | **42** | **38** | **⚠️ 0/38** | ✅ | ✅ | **Story 28 Needed** |

**Sprint 01 Delivered:**
- ✅ All agents fully functional in BMB format
- ✅ All workflow configurations (workflow.yaml) created
- ⚠️ Workflow instructions/checklists/READMEs missing (Story 28)

**Sprint 02 Priority:**
- 🎯 Complete 114 workflow files (instructions.md, checklist.md, README.md)
- 🎯 Enable workflow execution in Cursor
- 🎯 Test 3 priority workflows end-to-end

### References
- See `EXPANSIONS-SETUP.md` sections: Authoring with BMAD, Default custom locations, Notes.
- Discovery docs: `docs/discovery/*.md`
- Story details: `docs/stories/story-12-medical-pack.md`, `story-13-marketing-pack.md`, `story-14-blog-pack.md`


