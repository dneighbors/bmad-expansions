# BMB Workflow vs. Script Generation Comparison

**Date:** 2025-10-26  
**Branch:** `sprint-01-validation`  
**Context:** Sprint 01 used bash scripts instead of BMB workflows

---

## Executive Summary

During Sprint 01, we created 3 expansion packs (42 agents, 31 workflows) using **custom bash scripts** rather than the documented **BMB workflows** (`*create-module`, `*create-agent`, `*create-workflow`).

This document compares the two approaches and provides recommendations.

---

## Key Differences

### 1. Agent File Format

#### Script-Generated (Current Packs)
- **Format:** `.md` files with frontmatter + embedded XML
- **Location:** `{pack}/agents/{name}.md`
- **Structure:** Hand-coded templates with sed replacements

```markdown
---
name: "agent-name"
description: "Agent Title"
---

You must fully embody this agent's persona...

```xml
<agent id="pack/agents/agent-name.md" ...>
...
</agent>
```
```

#### BMB Workflow-Generated (Proper Format)
- **Format:** `.agent.yaml` source files (compiled to `.md` during install)
- **Location:** `bmad/{module}/agents/{name}.agent.yaml`
- **Structure:** YAML with defined schema, compiled by installer

```yaml
agent:
  id: "{module}/agents/{filename}"
  name: "Agent Name"
  title: "Agent Title"
  icon: "🏥"
  
persona:
  role: "Role description"
  identity: "Identity and expertise"
  communication_style: "How they communicate"
  principles: "Guiding principles"
  
menu:
  - cmd: "*help"
    action: "show_menu"
  - cmd: "*workflow-name"
    workflow: "{project-root}/{module}/workflows/workflow-name/workflow.yaml"
```

**Why This Matters:**
- YAML agents can be validated, linted, and type-checked
- Installer compiles YAML → MD with proper activation blocks
- Easier to maintain and extend
- Machine-readable for tooling

---

### 2. Workflow Structure

#### Script-Generated
- Created all 4 files manually: `workflow.yaml`, `instructions.md`, `README.md`, `checklist.md`
- Minimal content, lots of TODOs
- Generic templates

#### BMB Workflow-Generated
- Guided creation with contextual prompts
- Rich instructions following workflow.xml patterns
- Proper validation criteria
- Team composition guidance

**Comparison:**

| Aspect | Script | BMB Workflow |
|--------|--------|--------------|
| **Time to create** | Fast (seconds) | Slower (minutes) |
| **Quality** | Minimal, generic | Rich, contextual |
| **Validation** | Manual | Built-in checklist |
| **Instructions** | TODO stubs | Detailed steps |
| **Team setup** | Basic list | Role descriptions |

---

### 3. Module Structure

#### Script-Generated Structure
```
{pack}/
├── agents/          # .md files (final format)
├── workflows/       # Workflow folders
├── _module-installer/
│   └── install-config.yaml
└── README.md
```

####  BMB Workflow Structure
```
bmad/{module}/
├── agents/          # .agent.yaml (source format)
├── workflows/       # Workflow folders
├── tasks/           # Optional task files
├── templates/       # Shared templates
├── data/            # Module data
├── _module-installer/
│   ├── install-config.yaml
│   ├── installer.js (optional)
│   └── assets/      # Install-time assets
└── README.md
```

**Key Differences:**
- BMB includes `tasks/`, `templates/`, `data/` directories
- BMB uses `.agent.yaml` source (not final `.md`)
- BMB supports `installer.js` for custom install logic
- BMB structure aligns with BMAD Core standards

---

### 4. Configuration Files

#### Script-Generated `install-config.yaml`
```yaml
code: medical
name: "Medical Pack"
default_selected: false

prompt:
  - "Medical Pack for healthcare SaaS teams"
```

#### BMB-Generated `install-config.yaml`
```yaml
code: medical
name: "Medical Pack"
default_selected: false
description: "Healthcare domain expertise for SaaS product teams"
version: "1.0.0"
author: "Derek Neighbors"

prompt:
  - "Thank you for choosing Medical Pack!"
  - "Provides clinical review, compliance, and healthcare expertise"

# Configuration fields (interactive or static)
output_path:
  prompt: "Where should medical pack save clinical reviews?"
  default: "output/medical"
  result: "{project-root}/{value}"

hipaa_mode:
  prompt: "Enable HIPAA compliance checks?"
  default: "yes"
  result: "{value}"
  single-select:
    - value: "yes"
      label: "Yes - Include HIPAA validation"
    - value: "no"
      label: "No - Skip compliance checks"
```

**Why This Matters:**
- BMB prompts for configuration needs during creation
- Interactive fields allow user customization
- Better install experience
- Supports complex configuration patterns

---

## Process Comparison

### Script-Based Creation (What We Did)

**Pros:**
- ✅ **Fast** - Created 42 agents in minutes
- ✅ **Consistent** - All agents follow same template
- ✅ **Batch processing** - Can generate many at once

**Cons:**
- ❌ **Not using our own tooling** - Dogfooding failure
- ❌ **Minimal quality** - Generic templates, shallow content
- ❌ **Wrong format** - `.md` instead of `.agent.yaml`
- ❌ **No validation** - No built-in quality checks
- ❌ **Hard to document** - Can't write docs for process we didn't follow

### BMB Workflow Creation (Proper Method)

**Pros:**
- ✅ **Proper format** - `.agent.yaml` → compiled `.md`
- ✅ **Quality guidance** - Interactive prompts ensure completeness
- ✅ **Validation built-in** - Checklists and quality gates
- ✅ **Dogfooding** - Using our own methodology
- ✅ **Documentable** - Can write authentic how-to guides

**Cons:**
- ❌ **Slower** - Interactive, one component at a time
- ❌ **Sequential** - Can't easily batch-create
- ❌ **Learning curve** - Requires understanding workflows

---

## Impact on Sprint 02 Documentation Stories

### Stories 3-5: Document BMB Usage

**Problem:** We need to document:
- Story 3: `*create-module` usage
- Story 4: `*create-agent` flow
- Story 5: `*create-workflow` flow

**But we didn't actually use these workflows!**

**Options:**

1. **Write theoretical docs** - Document what *should* happen (❌ not authentic)
2. **Recreate samples using BMB** - Create 2-3 components properly (✅ authentic examples)
3. **Retrofit existing packs** - Convert script-generated to BMB format (⚠️ major rework)

**Recommendation:** Option 2 - Create sample components using BMB for documentation.

---

## Recommendations

### Immediate Actions (Sprint 01 Validation)

1. **Create sample components via BMB**
   - 1 agent per pack using `*create-agent`
   - 1 workflow per pack using `*create-workflow`
   - Document the experience for Stories 3-5

2. **Compare outputs**
   - Side-by-side comparison: script vs. BMB
   - Identify quality gaps
   - Assess effort to retrofit

3. **Decision point**
   - Keep script-generated packs as-is? (faster to market)
   - Retrofit to BMB format? (higher quality, proper format)
   - Hybrid approach? (keep agents, enhance workflows)

### Long-Term Process (Sprint 02+)

1. **Establish creation standards**
   - All new agents MUST use `*create-agent`
   - All new workflows MUST use `*create-workflow`
   - Use `.agent.yaml` format (not `.md`)

2. **Update documentation**
   - Stories 3-5: Document actual BMB usage
   - Include real examples from validation work
   - Create quickstart guides

3. **Tooling improvements**
   - Consider batch mode for BMB workflows
   - Template library for common patterns
   - Validation tooling for existing components

---

## Quality Assessment

### Script-Generated Packs (Current)

**Strengths:**
- Complete (42 agents, 31 workflows)
- Consistent structure
- Fast delivery

**Weaknesses:**
- Wrong file format (`.md` not `.agent.yaml`)
- Minimal content quality
- No validation
- Not following our own process

**Grade:** C+ (functional but not exemplary)

### BMB-Generated Components (Proper)

**Expected Strengths:**
- Correct format (`.agent.yaml`)
- High content quality
- Built-in validation
- Following proper process
- Documentable examples

**Expected Weaknesses:**
- Time-intensive
- Requires workflow knowledge

**Expected Grade:** A (proper methodology, high quality)

---

## Cost-Benefit Analysis

### Option A: Keep Script-Generated Packs

**Cost:** Low (already done)  
**Benefit:** Fast to market, complete packs  
**Risk:** Technical debt, wrong format, can't document properly

### Option B: Retrofit All to BMB Format

**Cost:** HIGH (~20-30 hours to redo 42 agents + 31 workflows)  
**Benefit:** Proper format, high quality, authentic docs  
**Risk:** Delays Sprint 02, resource intensive

### Option C: Hybrid Approach (RECOMMENDED)

**Cost:** Medium (4-6 hours)  
**Benefit:** Sample proper components, authentic docs, keep existing work  
**Risk:** Mixed quality across packs

**Hybrid Plan:**
1. Keep existing script-generated packs for now (Ship Sprint 01)
2. Create 6 sample components via BMB (2 per pack)
3. Use samples for documentation (Stories 3-5)
4. Establish BMB-first policy for future components
5. Gradually retrofit high-priority agents/workflows

---

## Conclusion

**Sprint 01 Reality Check:**
- We took a shortcut (bash scripts) to hit velocity
- Delivered functional packs but missed process/quality
- Can't authentically document what we didn't do

**Path Forward:**
- Create representative samples via BMB
- Document the proper process
- Establish BMB-first policy going forward
- Pragmatically accept Sprint 01 technical debt

**Key Lesson:**  
> "If we're selling a methodology, we must USE that methodology."

---

## Next Steps

1. Create sample components (medical, marketing, blog)
2. Document comparison with concrete examples
3. Make go/no-go decision on retrofitting
4. Update Sprint 02 scope based on findings

---

_This comparison informs validation work and Sprint 02 planning._

