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
| **Story 12** — Medical Pack | ✅ DONE | 5 | Commit 5f95ddf; 9 agents, 8 workflows |
| **Story 13** — Marketing Pack | ✅ DONE | 15 | Commit 1faca00; 31 agents, 15 workflows |
| **Story 14** — Blog Pack | ✅ DONE | 20 | Commit 210549c; 2 agents, 15 workflows |

### Progress Summary
- **Completed:** 3/6 stories (Stories 12-14) — 40 story points delivered
- **Pending:** 3/6 stories (Stories 3-5) — 6 story points remaining
- **Key Achievement:** All 3 packs production-ready (medical, marketing, blog)

### Pack Status

| Pack | Agents | Workflows | Discovery Doc | Status |
|------|--------|-----------|---------------|--------|
| **medical** | 9 ✅ | 8 ✅ | `docs/discovery/medical-pack-discovery.md` | ✅ COMPLETE |
| **marketing** | 31 ✅ | 15 ✅ | `docs/discovery/marketing-pack-discovery.md` | ✅ COMPLETE |
| **blog** | 2 ✅ | 15 ✅ | `docs/discovery/blog-pack-discovery.md` | ✅ COMPLETE |

### References
- See `EXPANSIONS-SETUP.md` sections: Authoring with BMAD, Default custom locations, Notes.
- Discovery docs: `docs/discovery/*.md`
- Story details: `docs/stories/story-12-medical-pack.md`, `story-13-marketing-pack.md`, `story-14-blog-pack.md`


