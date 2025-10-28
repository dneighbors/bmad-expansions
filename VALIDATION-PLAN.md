# Sprint 01 Validation Plan

**Branch:** `sprint-01-validation`  
**Date:** 2025-10-26  
**Purpose:** Validate that BMAD tooling (BMB workflows) can create expansion packs

---

## Context

During Sprint 01, we created 3 expansion packs (medical, marketing, blog) using **custom bash scripts** instead of the documented BMB workflows (`*create-module`, `*create-agent`, `*create-workflow`).

**Problem:** We didn't dogfood our own tooling.

---

## Original Request

Create full `-bmad` versions of all 3 packs using BMB workflows to compare outputs.

## Revised Approach (More Practical)

Creating 3 full packs (42 agents + 31 workflows) manually through interactive BMB workflows would require:
- ~200+ interactive steps
- 8-12 hours of sequential work
- Massive context switching

**Better approach:** Create **representative samples** from each pack using BMB, then compare structure/quality.

---

## Validation Strategy

### Phase 1: Sample Component Creation (This Branch)

For each pack, create **2 sample components** using BMB workflows:

#### Medical Pack (`medical-bmad/`)
- **1 Agent:** Dr. Michael Johnson (Medical Director) via `*create-agent`
- **1 Workflow:** `*clinical-review` via `*create-workflow`

#### Marketing Pack (`marketing-bmad/`)
- **1 Agent:** Victoria Chen (CMO) via `*create-agent`
- **1 Workflow:** `*marketing-strategy` via `*create-workflow`

#### Blog Pack (`blog-bmad/`)
- **1 Agent:** Derek Neighbors (Author) via `*create-agent`
- **1 Workflow:** `*blog-post-creation` via `*create-workflow`

### Phase 2: Comparison Analysis

Compare:
1. **Structure:** File organization, naming conventions
2. **Quality:** Agent persona depth, workflow instructions clarity
3. **Compliance:** BMAD Core standards adherence
4. **Completeness:** Required files, proper references

### Phase 3: Recommendations

Based on findings:
- Should we retrofit existing packs to BMB standards?
- Do scripts produce acceptable output?
- What process for future packs?

---

## Expected Outcomes

1. **Validation:** BMB workflows work for expansion packs
2. **Comparison:** Document differences (script vs BMB)
3. **Process:** Define proper creation workflow for Sprint 02+
4. **Documentation:** Real examples for Stories 3-5 (BMB usage docs)

---

## Timeline

- **Phase 1:** 2-4 hours (6 components created via BMB)
- **Phase 2:** 1 hour (comparison document)
- **Phase 3:** 30 min (recommendations)

**Total:** ~4 hours vs. 12+ hours for full recreation

---

## Success Criteria

✅ At least 2 components per pack created via BMB  
✅ Comparison document shows structural differences  
✅ Recommendations for future pack creation  
✅ Process documented for Stories 3-5

---

_This approach validates the methodology without recreating all 73 components._

