# Story 17: Establish and Document BMB-First Policy

**Epic:** E2 - Authoring with BMAD Builder (BMB)  
**Sprint:** Sprint 01 (policy establishment)  
**Story Points:** 2  
**Priority:** P0 (Critical)  
**Status:** 🔄 IN PROGRESS

---

## User Story

As a **maintainer**, I want **documented policy requiring all future agents/workflows use BMB workflows** so that **we maintain quality standards and demonstrate proper methodology**.

---

## Context

Sprint 01 taught us a critical lesson: taking shortcuts (bash scripts) creates technical debt. The validation work proved that BMB workflows produce significantly higher quality output:

- ✅ Correct format (`.agent.yaml` not `.md`)
- ✅ Rich configuration (6-8 fields not 0-1)
- ✅ Detailed workflows (300+ lines not TODO stubs)
- ✅ BMAD Core compliant
- ✅ 3-4x higher quality

**Key Principle:** "If we're selling a methodology, we must USE that methodology."

This story establishes BMB-first as the mandatory process going forward.

---

## Acceptance Criteria

### 1. Policy Document Created
- [ ] CONTRIBUTING.md created at repo root
- [ ] BMB-first policy clearly stated
- [ ] Rationale explained
- [ ] Process documented
- [ ] Examples provided

### 2. Process Documentation
- [ ] How to create agents via BMB
- [ ] How to create workflows via BMB
- [ ] How to create modules via BMB
- [ ] Quality standards defined
- [ ] Validation checklist

### 3. Integration
- [ ] Referenced in README.md
- [ ] Referenced in Sprint 02 planning
- [ ] Referenced in Epic 02 documentation
- [ ] Added to backlog stories going forward

### 4. Enforcement
- [ ] PR template includes BMB compliance check
- [ ] Documentation stories (3-5) reference policy
- [ ] Future pack creation must follow policy

---

## Tasks

1. ✅ Create Story 17 document
2. ⏳ Create CONTRIBUTING.md with BMB-first policy
3. ⏳ Document agent creation process
4. ⏳ Document workflow creation process
5. ⏳ Document module creation process
6. ⏳ Create quality standards checklist
7. ⏳ Update README.md to reference CONTRIBUTING.md
8. ⏳ Update Sprint 02 plan with policy reference
9. ⏳ Commit: "docs(story-17): establish BMB-first policy"

---

## Definition of Done

- [ ] CONTRIBUTING.md exists with complete BMB-first policy
- [ ] Process documented with examples
- [ ] Quality standards defined
- [ ] Referenced in key project documents
- [ ] Policy applies to all future work

---

## Policy Summary

### BMB-First Mandate

**Effective immediately:** All new agents, workflows, and modules MUST be created using BMB workflows.

**Required Workflows:**
- `@bmad-builder *create-agent` for all agents
- `@bmad-builder *create-workflow` for all workflows
- `@bmad-builder *create-module` for all modules

**Prohibited:**
- ❌ Bash scripts to generate agents
- ❌ Manual `.md` file creation
- ❌ Copy-paste from templates
- ❌ Bulk generation tools

**Quality Standards:**
- ✅ Agents in `.agent.yaml` format
- ✅ 6+ interactive configuration fields per module
- ✅ 200+ line workflow instructions
- ✅ Conditional team assembly where appropriate
- ✅ BMAD Core compliance

---

## Rationale

### Why BMB-First?

1. **Dogfooding** - We must use our own methodology
2. **Quality** - BMB produces 3-4x higher quality
3. **Compliance** - Ensures BMAD Core standards
4. **Documentation** - Can authentically document what we do
5. **Credibility** - Shows we practice what we preach

### Cost-Benefit

**Time Investment:** 42x longer (5 hours vs 30 minutes)  
**Quality Improvement:** 3-4x better output  
**Verdict:** Worth it for quality and credibility

---

## Related Stories

- **Story 16** - Retrofit packs to BMB (dependency)
- **Story 3** - Document `*create-module` (uses this policy)
- **Story 4** - Document `*create-agent` (uses this policy)
- **Story 5** - Document `*create-workflow` (uses this policy)

---

_Created: 2025-10-27_  
_Sprint: Sprint 01 (policy establishment)_  
_Priority: P0 (foundational for Sprint 02)_

