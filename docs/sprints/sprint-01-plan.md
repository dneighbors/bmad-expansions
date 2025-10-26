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
**Status:** ✅ COMPLETE  
**Completed:** 2025-10-24  
**Acceptance:** Directories renamed; existing metadata updated accordingly.

**Story 12** (E2) — Scaffold `medical` pack via BMB create-module  
**Status:** ✅ COMPLETE (commit 5f95ddf)  
**Priority:** P0  
**Story Points:** 5  
**Completed:** Sprint 01  
**Acceptance:** 9 agents + 8 workflows created; README updated; priority workflows tested.  
**Notes:** Full discovery at `docs/discovery/medical-pack-discovery.md`.

**Story 13** (E2) — Scaffold `marketing` pack via BMB create-module  
**Status:** ✅ COMPLETE (commit 1faca00)  
**Priority:** P0  
**Story Points:** 15  
**Completed:** Sprint 01  
**Acceptance:** 31 agents + 15 workflows created; README updated; priority workflows tested.  
**Notes:** Complete AI marketing department. Discovery at `docs/discovery/marketing-pack-discovery.md`.

**Story 14** (E2) — Scaffold `blog` pack via BMB create-module  
**Status:** ✅ COMPLETE (commit 210549c)  
**Priority:** P0  
**Story Points:** 20  
**Completed:** Sprint 01  
**Acceptance:** 2 agents + 15 workflows; Derek's content-ops system ported; README updated; priority workflows tested.  
**Notes:** Workflow-heavy content operations. Discovery at `docs/discovery/blog-pack-discovery.md`.

**Story 15** (E3) — Create sync script to copy packs into BMAD-METHOD  
**Status:** ✅ COMPLETE (commit c79eabd)  
**Priority:** P0  
**Story Points:** 3  
**Completed:** Sprint 01  
**Acceptance:** Script syncs to `../BMAD-METHOD/src/modules/`; adds ignore entries safely; idempotent.  
**Deliverable:** `scripts/sync-packs.sh`

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

- [x] Code committed and pushed to `main`
- [x] Acceptance criteria validated
- [x] Documentation updated (epics, workflow-status, backlog)
- [x] No regressions in existing functionality

## Sprint Results ✅

**Sprint Goal:** ✅ ACHIEVED  
**Story Points:** 43/43 delivered (100%)  
**Stories Completed:** 5/5 (Stories 11-15)

### Deliverables

1. ✅ **Medical Pack** — 9 agents, 8 workflows (commit 5f95ddf)
2. ✅ **Marketing Pack** — 31 agents, 15 workflows (commit 1faca00)
3. ✅ **Blog Pack** — 2 agents, 15 workflows (commit 210549c)
4. ✅ **Sync Script** — `scripts/sync-packs.sh` (commit c79eabd)
5. ✅ **Documentation** — 3 discovery docs, updated epics

### Key Achievements

- All 3 expansion packs production-ready
- BMB workflows proved to be velocity multipliers
- Discovery-first approach eliminated blockers
- Zero critical issues or scope changes

---

## Risks & Mitigation

**Risk:** BMAD-METHOD path assumptions may differ across environments.  
**Mitigation:** Script uses relative path `../BMAD-METHOD`; add validation check.

**Risk:** Sync script may clobber unexpected files in BMAD-METHOD.  
**Mitigation:** Use `--delete` only for known pack directories; add dry-run mode.

---

## Next Actions — Sprint 02

**Sprint 02 Focus:** Documentation & Validation

### Recommended Sprint 02 Backlog (13 points)

**P1 Stories (7 points):**
1. Story 2 — Installer config template (2 pts)
2. Story 3 — Document `*create-module` (2 pts)
3. Story 8 — Document installer command (3 pts)

**P2 Stories (6 points):**
4. Story 4 — Document `*create-agent` (2 pts)
5. Story 5 — Document `*create-workflow` (2 pts)
6. Story 9 — Update procedure docs (2 pts)

**Validation:**
7. End-to-end test in target Cursor project

---

_Sprint created by John (PM) on 2025-10-24_  
_Sprint completed 2025-10-26 — see workflow-status.md for retrospective_

