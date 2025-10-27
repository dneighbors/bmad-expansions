# Story 16: Retrofit Existing Packs to BMB Format

**Epic:** E2 - Authoring with BMAD Builder (BMB)  
**Sprint:** Sprint 01 (retroactive cleanup)  
**Story Points:** 8  
**Priority:** P0 (Critical)  
**Status:** 🔄 IN PROGRESS

---

## User Story

As a **maintainer**, I want to **replace script-generated packs with proper BMB-generated versions** so that **all expansion packs comply with BMAD Core standards and demonstrate proper methodology**.

---

## Context

During Sprint 01, we created medical, marketing, and blog packs using custom bash scripts instead of BMB workflows. This created technical debt:

- ❌ Wrong format (`.md` instead of `.agent.yaml`)
- ❌ Minimal configuration (0-1 fields instead of 6-8)
- ❌ Generic quality (TODO stubs instead of detailed guides)
- ❌ Non-compliant with BMAD Core standards
- ❌ Can't document authentically (didn't use our own tools)

Validation work (sprint-01-validation branch) created proper BMB versions:
- ✅ medical-bmad/ (2 agents + 1 workflow, 6 config fields)
- ✅ marketing-bmad/ (2 agents + 1 workflow, 7 config fields)  
- ✅ blog-bmad/ (2 agents + 1 workflow, 8 config fields)

This story retrofits the repo to use BMB versions as the canonical packs.

---

## Acceptance Criteria

### 1. Delete Script-Generated Packs
- [ ] Delete `medical/` directory and all contents
- [ ] Delete `marketing/` directory and all contents
- [ ] Delete `blog/` directory and all contents

### 2. Rename BMB Versions
- [ ] Rename `medical-bmad/` → `medical/`
- [ ] Rename `marketing-bmad/` → `marketing/`
- [ ] Rename `blog-bmad/` → `blog/`

### 3. Update Configuration References
- [ ] Update `_module-installer/install-config.yaml` in each pack (code: "medical" not "medical-bmad")
- [ ] Update agent IDs to remove "-bmad" suffix
- [ ] Update workflow paths to remove "-bmad" suffix

### 4. Update Documentation
- [ ] Update README files to remove "(BMB Generated)" markers
- [ ] Update discovery docs if they reference old paths
- [ ] Update story docs (12-14) to note BMB compliance
- [ ] Update workflow-status.md with retrofit note

### 5. Update Sync Script
- [ ] Ensure `scripts/sync-packs.sh` references correct pack names
- [ ] Test sync to BMAD-METHOD with new structure

### 6. Validation
- [ ] All agents in `.agent.yaml` format
- [ ] All config files have 6+ interactive fields
- [ ] All workflows have detailed instructions
- [ ] No broken references
- [ ] Git history clean

---

## Tasks

### Phase 1: Cleanup (Delete Old)
1. ✅ Verify sprint-01-validation branch has BMB versions
2. ⏳ Delete `medical/` directory
3. ⏳ Delete `marketing/` directory
4. ⏳ Delete `blog/` directory
5. ⏳ Commit deletion: "refactor: remove script-generated packs for BMB retrofit"

### Phase 2: Rename (Install New)
6. ⏳ Rename `medical-bmad/` → `medical/`
7. ⏳ Rename `marketing-bmad/` → `marketing/`
8. ⏳ Rename `blog-bmad/` → `blog/`
9. ⏳ Commit rename: "refactor: rename BMB packs to canonical names"

### Phase 3: Update References
10. ⏳ Update medical install-config.yaml (code: "medical")
11. ⏳ Update marketing install-config.yaml (code: "marketing")
12. ⏳ Update blog install-config.yaml (code: "blog")
13. ⏳ Update agent IDs in all `.agent.yaml` files
14. ⏳ Update workflow paths in all `workflow.yaml` files
15. ⏳ Commit: "fix: update pack codes and references after rename"

### Phase 4: Documentation
16. ⏳ Update medical/README.md (remove BMB marker)
17. ⏳ Update marketing/README.md (remove BMB marker)
18. ⏳ Update blog/README.md (remove BMB marker)
19. ⏳ Update docs/workflow-status.md (note retrofit)
20. ⏳ Update docs/stories/story-12-medical-pack.md (BMB compliance)
21. ⏳ Update docs/stories/story-13-marketing-pack.md (BMB compliance)
22. ⏳ Update docs/stories/story-14-blog-pack.md (BMB compliance)
23. ⏳ Commit: "docs: update pack documentation after BMB retrofit"

### Phase 5: Validation
24. ⏳ Verify all agent files are `.agent.yaml`
25. ⏳ Verify all configs have 6+ fields
26. ⏳ Test sync script with new structure
27. ⏳ Check for broken references
28. ⏳ Final commit: "chore: complete Story 16 - BMB retrofit"

---

## Definition of Done

- [ ] All script-generated packs deleted
- [ ] BMB versions renamed to canonical names
- [ ] All references updated (no "-bmad" suffixes)
- [ ] Documentation updated
- [ ] Sync script validated
- [ ] All changes committed to sprint-01-validation branch
- [ ] Branch ready for merge to main

---

## Notes

### Why This Matters
- Ensures all packs comply with BMAD Core standards
- Demonstrates dogfooding (using our own methodology)
- Provides authentic examples for documentation
- Establishes quality baseline for future packs

### Retroactive Sprint Assignment
This work is assigned to Sprint 01 retroactively because:
1. It corrects Sprint 01 shortcuts
2. Should have been done properly from the start
3. Validation proved BMB approach is superior

### Link to Validation Work
- **Branch:** sprint-01-validation
- **Comparison:** FINAL-COMPARISON.md
- **Samples:** medical-bmad/, marketing-bmad/, blog-bmad/

---

## Related Stories

- **Story 12** - Medical pack (needs BMB compliance note)
- **Story 13** - Marketing pack (needs BMB compliance note)
- **Story 14** - Blog pack (needs BMB compliance note)
- **Story 17** - Establish BMB-first policy (dependent)

---

_Created: 2025-10-27_  
_Sprint: Sprint 01 (retroactive)_  
_Priority: P0 (must fix before Sprint 02)_

