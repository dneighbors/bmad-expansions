# Story 28: Complete Workflow Files for All Packs

**Epic:** E2 (Authoring with BMB)  
**Status:** 🆕 NEW (Sprint 02)  
**Priority:** P0 - CRITICAL  
**Story Points:** 21

---

## User Story

As a user installing expansion packs, I want all workflows to be fully functional with complete instructions, checklists, and READMEs so that I can actually execute workflows from Cursor.

---

## Problem Statement

### Current State (v1.0 - Sprint 01)
- ❌ Only `workflow.yaml` files created for all workflows
- ❌ Missing `instructions.md` - Detailed step-by-step execution guide
- ❌ Missing `checklist.md` - Validation/completion checklist
- ❌ Missing `README.md` - Workflow overview and quick reference
- ❌ Workflows don't appear in Cursor `.cursor/rules/` after installation
- ❌ Users cannot execute workflows even though they're "installed"

### Root Cause
Sprint 01 focused on rapid delivery of agents and workflow configurations. To meet sprint goals, only `workflow.yaml` files were created. This was sufficient for structural validation but insufficient for end-user functionality.

### Impact
- **Severity:** HIGH - Workflows are non-functional
- **Scope:** 38 workflows across 3 packs (Marketing: 15, Medical: 8, Blog: 15)
- **User Experience:** Users see agents but no workflows after installation
- **Workaround:** None - workflows cannot be executed without these files

---

## Acceptance Criteria

### Marketing Pack (15 workflows × 3 files = 45 files)
- [ ] All 15 workflows have `instructions.md` with detailed step-by-step guides
- [ ] All 15 workflows have `checklist.md` with validation criteria
- [ ] All 15 workflows have `README.md` with overview and usage
- [ ] Workflows appear in `.cursor/rules/bmad/marketing/workflows/` after install
- [ ] Test: Execute `*marketing-strategy` workflow end-to-end

### Medical Pack (8 workflows × 3 files = 24 files)
- [ ] All 8 workflows have `instructions.md`
- [ ] All 8 workflows have `checklist.md`
- [ ] All 8 workflows have `README.md`
- [ ] Workflows appear in `.cursor/rules/bmad/medical/workflows/` after install
- [ ] Test: Execute `*clinical-review` workflow end-to-end

### Blog Pack (15 workflows × 3 files = 45 files)
- [ ] All 15 workflows have `instructions.md`
- [ ] All 15 workflows have `checklist.md`
- [ ] All 15 workflows have `README.md`
- [ ] Workflows appear in `.cursor/rules/bmad/blog/workflows/` after install
- [ ] Test: Execute `*daily-content-system` workflow end-to-end

### Quality Standards
- [ ] Instructions follow BMAD workflow format (persona, steps, validation)
- [ ] Checklists are actionable and complete
- [ ] READMEs provide clear quick-start examples
- [ ] All files reference correct team agents from pack
- [ ] Files use proper BMB metadata headers

---

## File Structure Required

Each workflow folder must contain:

```
workflow-name/
├── workflow.yaml        ✅ EXISTS (created in Sprint 01)
├── instructions.md      ❌ MISSING (create in Sprint 02)
├── checklist.md         ❌ MISSING (create in Sprint 02)
└── README.md            ❌ MISSING (create in Sprint 02)
```

---

## Example: Complete Workflow Files

### `instructions.md` Template
```markdown
# [Workflow Name] — Instructions

## Overview
[Brief description of what this workflow accomplishes]

## Team
- **Lead Agent:** [Agent name and role]
- **Supporting Agents:** [Other agents involved]

## Prerequisites
- [List of inputs, data, or context needed]

## Execution Steps

### Phase 1: [Phase Name]
1. **[Step Name]**
   - Agent: [Which agent performs this]
   - Action: [What they do]
   - Output: [What's produced]
   - Validation: [How to verify success]

[Continue for all phases...]

## Output
- [List of deliverables]
- Location: {output_folder}/[filename]

## Validation
- [ ] [Completion criteria 1]
- [ ] [Completion criteria 2]
```

### `checklist.md` Template
```markdown
# [Workflow Name] — Validation Checklist

## Pre-Execution
- [ ] All required inputs gathered
- [ ] Team agents available
- [ ] Output folder configured

## Execution Quality
- [ ] All workflow steps completed
- [ ] Agent responses reviewed
- [ ] Output files generated

## Output Validation
- [ ] [Specific quality criteria]
- [ ] [Format compliance checks]
- [ ] [Completeness verification]

## Post-Execution
- [ ] Output saved to correct location
- [ ] Workflow documented for future reference
- [ ] Feedback captured for improvement
```

### `README.md` Template
```markdown
# [Workflow Name]

**Description:** [One-line description]

## Quick Start

\```
@[lead-agent]
*[workflow-trigger]

[Example input]
\```

## What It Does
[2-3 sentence explanation]

## Inputs
- [Input 1]: [Description]
- [Input 2]: [Description]

## Outputs
- [Output 1]: [Description and location]

## Team
- [Agent 1] — [Role]
- [Agent 2] — [Role]

## Configuration
Loaded from: \`bmad/[pack]/config.yaml\`

## Example Use Cases
1. [Use case 1]
2. [Use case 2]

## See Also
- [Related workflow 1]
- [Related workflow 2]
```

---

## Implementation Approach

### Phase 1: Template Creation (2 points)
1. Create master templates for instructions.md, checklist.md, README.md
2. Document file format standards
3. Review with team

### Phase 2: Priority Workflows (8 points)
Create complete files for highest-priority workflows:
- Marketing: `*marketing-strategy`, `*ppc-campaign`, `*social-campaign`
- Medical: `*clinical-review`, `*hipaa-audit`
- Blog: `*daily-content-system`, `*blog-post-creation`

### Phase 3: Batch Completion (11 points)
Complete remaining workflows using templates:
- Marketing: 12 remaining workflows
- Medical: 6 remaining workflows  
- Blog: 13 remaining workflows

### Phase 4: Testing & Validation (2 points)
- Install all 3 packs in test project
- Verify all workflows appear in Cursor
- Execute 1 workflow per pack end-to-end
- Document any installation issues

---

## Dependencies

- ✅ Story 16/17: BMB-format agents complete
- ✅ Sprint 01: workflow.yaml files exist
- ✅ BMAD Core: Workflow installer supports all file types
- ⏳ CONTRIBUTING.md: Document workflow file requirements

---

## Risk Assessment

**Risk:** 114 files is significant scope creep  
**Mitigation:** Use templates and scripting for consistency; prioritize critical workflows first

**Risk:** Quality varies across 38 workflows  
**Mitigation:** Review samples from each pack; establish quality bar before batch creation

**Risk:** Discovery sessions didn't detail workflow steps  
**Mitigation:** Infer from workflow.yaml variables and team composition; validate with stakeholders

---

## Testing Strategy

### Unit Testing
- [ ] Each workflow has all 4 required files
- [ ] Files follow template structure
- [ ] Agent references are valid
- [ ] Config paths are correct

### Integration Testing
- [ ] Sync script succeeds with complete workflows
- [ ] BMAD installer discovers all workflows
- [ ] Workflows appear in `.cursor/rules/`
- [ ] No installation errors or warnings

### End-to-End Testing
- [ ] User can trigger workflow from Cursor
- [ ] Instructions are clear and actionable
- [ ] Agents reference correct config values
- [ ] Output files generate correctly

---

## Definition of Done

- [ ] All 38 workflows have complete 4-file structure (114 new files)
- [ ] Files follow BMB standards and templates
- [ ] Test installation succeeds for all 3 packs
- [ ] All workflows visible in Cursor after install
- [ ] 3 priority workflows tested end-to-end (1 per pack)
- [ ] Documentation updated with workflow completeness status
- [ ] Sprint 01 validation testing can be re-run successfully

---

## Notes

This story represents technical debt from Sprint 01's rapid delivery focus. The structural foundation (workflow.yaml) is solid, but user-facing content is incomplete. This is a known limitation documented in Sprint 01 retrospective.

**Estimated Effort Breakdown:**
- Template creation: 2 points
- Priority workflows (7 × 3 files): 8 points  
- Batch completion (31 × 3 files): 11 points
- Testing and validation: 2 points
- **Total: 21 points**

**Sprint 02 Allocation:**
This represents roughly 40% of a typical sprint capacity. Consider splitting into Story 28a (Priority workflows) and Story 28b (Batch completion) if needed.

