# Sprint 01 Plan — BMAD Expansions Foundation

**Sprint Goal:** Establish foundational infrastructure (pack scaffolds, sync tooling, documentation) to enable rapid authoring and distribution of expansion packs.

**Duration:** 1 week (estimated)

**Team:**
- Developer (TBD assignment)
- Architect (for review/validation)

---

## Sprint Backlog (Prioritized)

### 🔥 Critical Path — Must Complete

**Story 11** (E1) — Rename pack directories to final names (medical, marketing, blog)  
**Status:** ✅ DONE (completed by analyst)  
**Assigned:** N/A  
**Acceptance:** Directories renamed; existing metadata updated accordingly.

**Story 12** (E2) — Scaffold `medical` pack via BMB create-module  
**Priority:** P0  
**Assigned:** Developer (READY FOR DEV)  
**Acceptance:** 9 agents + 8 workflows created; README updated; priority workflows tested.  
**Story Points:** 5  
**Notes:** Full discovery complete. See `docs/stories/story-12-medical-pack.md` and `docs/discovery/medical-pack-discovery.md`.  
**Status:** ✅ DISCOVERY COMPLETE — Ready for implementation

**Story 13** (E2) — Scaffold `marketing` pack via BMB create-module  
**Priority:** P0  
**Assigned:** Developer (READY FOR DEV)  
**Acceptance:** 31 agents + 15 workflows created; README updated; priority workflows tested.  
**Story Points:** 15  
**Notes:** Full discovery complete. Complete AI marketing department for small teams. See `docs/stories/story-13-marketing-pack.md` and `docs/discovery/marketing-pack-discovery.md`.  
**Status:** ✅ DISCOVERY COMPLETE — Ready for implementation

**Story 14** (E2) — Scaffold `blog` pack via BMB create-module  
**Priority:** P0  
**Assigned:** Developer (READY FOR DEV)  
**Acceptance:** 2 agents + 15 workflows; port Derek's content-ops system; README updated; priority workflows tested.  
**Story Points:** 20  
**Notes:** Full discovery complete. Workflow-heavy content operations with blog author as agent pattern. See `docs/stories/story-14-blog-pack.md` and `docs/discovery/blog-pack-discovery.md`.  
**Status:** ✅ DISCOVERY COMPLETE — Ready for implementation

**Story 15** (E3) — Create sync script to copy packs into BMAD-METHOD  
**Priority:** P0  
**Assigned:** Developer  
**Acceptance:** Script syncs to `../BMAD-METHOD/src/modules/`; adds ignore entries safely; idempotent.  
**Story Points:** 3  
**Notes:** Enables deployment after packs are created.

---

### 🎯 High Priority — Complete if Critical Path Done

**Story 2** (E1) — Provide installer config template  
**Priority:** P1  
**Assigned:** Developer  
**Acceptance:** Template includes `code`, `name`, `description`, `version`, `default_selected`, `dependencies`.  
**Story Points:** 2  
**Notes:** Template enables rapid pack creation.

**Story 3** (E2) — Document `*create-module` usage  
**Priority:** P1  
**Assigned:** Developer  
**Acceptance:** Doc includes trigger usage and expected output paths.  
**Story Points:** 2

**Story 8** (E4) — Document installer command for target projects (Cursor)  
**Priority:** P1  
**Assigned:** Developer  
**Acceptance:** Command includes `--ides cursor`; verified in a sample project.  
**Story Points:** 3

---

### 📦 Medium Priority — If Time Allows

**Story 4** (E2) — Document `*create-agent` flow and output locations  
**Priority:** P2  
**Assigned:** Developer  
**Acceptance:** Agent YAML example compiles during install in a target project.  
**Story Points:** 2

**Story 5** (E2) — Document `*create-workflow` flow and structure  
**Priority:** P2  
**Assigned:** Developer  
**Acceptance:** Example workflow validates with core executor.  
**Story Points:** 2

**Story 9** (E4) — Define update procedure (re-sync + re-install)  
**Priority:** P2  
**Assigned:** Developer  
**Acceptance:** Steps verified; artifacts regenerated without manual edits.  
**Story Points:** 2

---

### 🔮 Deferred to Sprint 02

**Story 1** (E1) — Create example pack scaffold at repo root  
**Rationale:** Already have 3 packs (medical, marketing, blog); example can wait.

**Story 7** (E3) — Document git subtree alternative  
**Rationale:** Rsync is sufficient for MVP; subtree is nice-to-have.

**Story 10** (E4) — Add verification checklist for installs/updates  
**Rationale:** Defer until install flow is validated end-to-end.

**Story 6** (E3) — Add rsync script for syncing packs into BMAD-METHOD  
**Rationale:** Duplicate of Story 15; consolidated.

---

## Sprint Capacity

**Total Story Points:** 50 (P0: 43, P1: 7, P2: 6)  
**Developer Capacity:** ~40-50 points with BMB workflows (1 developer, 996 mode)  
**Notes:** Aggressive sprint. Medical: 5pts, Marketing: 15pts, Blog: 20pts, Sync: 3pts. BMB workflows accelerate agent/workflow creation.

---

## Definition of Done

- [ ] Code committed and pushed to `main`
- [ ] Acceptance criteria validated
- [ ] Documentation updated (if applicable)
- [ ] No regressions in existing functionality

---

## Risks & Mitigation

**Risk:** BMAD-METHOD path assumptions may differ across environments.  
**Mitigation:** Script uses relative path `../BMAD-METHOD`; add validation check.

**Risk:** Sync script may clobber unexpected files in BMAD-METHOD.  
**Mitigation:** Use `--delete` only for known pack directories; add dry-run mode.

---

## Next Actions

1. **Developer:** Pick up Story 12 (medical pack) — 9 agents, 8 workflows
2. **Developer:** Story 13 (marketing pack) — 31 agents, 15 workflows  
3. **Developer:** Story 14 (blog pack) — 2 agents, 15 workflows, port Derek's system
4. **Developer:** Story 15 (sync script) — deployment tooling
5. **SM:** Monitor daily progress; update workflow-status.md
6. **PM:** Available for discovery questions/clarifications

---

_Sprint created by John (PM) on 2025-10-24_

