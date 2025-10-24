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
**Assigned:** Developer  
**Acceptance:** Module scaffold created with at least 1 agent and 1 workflow; installer config validated.  
**Story Points:** 5  
**Notes:** This creates the first real expansion pack with actual content.

**Story 13** (E2) — Scaffold `marketing` pack via BMB create-module  
**Priority:** P0  
**Assigned:** Developer  
**Acceptance:** Module scaffold created with at least 1 agent and 1 workflow; installer config validated.  
**Story Points:** 5  
**Notes:** Second expansion pack with content.

**Story 14** (E2) — Scaffold `blog` pack via BMB create-module  
**Priority:** P0  
**Assigned:** Developer  
**Acceptance:** Module scaffold created with at least 1 agent and 1 workflow; installer config validated.  
**Story Points:** 5  
**Notes:** Third expansion pack with content.

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

**Total Story Points:** 29 (P0: 18, P1: 7, P2: 6)  
**Developer Capacity:** ~20-25 points (assuming 1 developer, full-time)  
**Notes:** P0 work is front-loaded; may need to reduce P1/P2 scope if capacity constrained.

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

1. Developer: Pick up Story 15 (sync script) — highest priority
2. PM/SM: Monitor daily progress; adjust priorities if blockers arise
3. Architect: Review sync script design before implementation

---

_Sprint created by John (PM) on 2025-10-24_

