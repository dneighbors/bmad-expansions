# Contributing to BMAD Expansions

Thank you for contributing to BMAD expansion packs! This document outlines the process and standards for creating and maintaining expansion packs.

---

## BMB-First Policy 🚨

**MANDATORY:** All agents, workflows, and modules MUST be created using BMAD Builder (BMB) workflows.

### Why BMB-First?

During Sprint 01, we created packs using bash scripts (shortcut) and BMB workflows (proper method). The results were clear:

| Metric | Script | BMB | Winner |
|--------|--------|-----|--------|
| **Format** | `.md` (wrong) | `.agent.yaml` (correct) | ✅ BMB |
| **Config Fields** | 0-1 basic | 6-8 interactive | ✅ BMB |
| **Workflow Quality** | TODO stubs | 300+ line guides | ✅ BMB |
| **BMAD Core Compliance** | ❌ No | ✅ Yes | ✅ BMB |
| **Quality** | C+ | A | ✅ BMB (3-4x better) |

**Bottom line:** BMB takes 42x longer but produces 3-4x higher quality. Worth it.

**Key principle:** "If we're selling a methodology, we must USE that methodology."

---

## Creating Agents

### ✅ Required Process

```
@bmad-builder
*create-agent

# Follow interactive prompts:
# - Agent type (Simple/Expert/Module)
# - Basic identity (name, title, icon, filename)
# - Module assignment
# - Persona elements
# - Commands and workflows
```

### ✅ Expected Output

- **Format:** `.agent.yaml` (source file, compiled to `.md` during install)
- **Location:** `{pack}/agents/{name}.agent.yaml`
- **Size:** ~150-180 lines
- **Structure:**
  ```yaml
  agent:
    id: "{pack}/agents/{name}"
    name: "Agent Name"
    title: "Agent Title"
    icon: "🎯"
    type: "module"
  
  persona:
    role: "..."
    identity: |
      ...
    communication_style: |
      ...
    principles: |
      ...
  
  menu:
    - cmd: "*help"
      action: "show_menu"
    - cmd: "*workflow-name"
      workflow: "{project-root}/{pack}/workflows/..."
  
  resources:
    ...
  
  activation:
    load_config: true
    ...
  
  metadata:
    created_by: "BMB *create-agent workflow"
    ...
  ```

### ❌ Prohibited

- Creating `.md` files directly
- Copy-pasting from templates
- Using bash scripts or bulk generators
- Manual file creation without BMB

---

## Creating Workflows

### ✅ Required Process

```
@bmad-builder
*create-workflow

# Follow interactive prompts:
# - Workflow name and description
# - Type (document/action/interactive)
# - Input variables
# - Team composition
# - Steps and logic
```

### ✅ Expected Output

- **Location:** `{pack}/workflows/{name}/`
- **Files:**
  - `workflow.yaml` (~120+ lines with rich configuration)
  - `instructions.md` (200-300+ lines following workflow.xml patterns)
  - `checklist.md` (validation criteria)
  - `template.md` (if document workflow)
  - `README.md` (usage examples)

- **workflow.yaml Structure:**
  ```yaml
  name: workflow-name
  description: "Detailed description"
  workflow_type: "document"
  
  # Configuration loading
  config_source: "{project-root}/{pack}/config.yaml"
  ...
  
  # Input variables (6+ recommended)
  variables:
    input_name:
      prompt: "What is...?"
      type: "single-select"
      options: [...]
  
  # Team composition (conditional assembly)
  team:
    - agent: "primary-agent"
      role: "Lead role"
      required: true
    - agent: "specialist-agent"
      role: "Specialist role"
      required_if: "condition"
  
  # Metadata
  metadata:
    created_by: "BMB *create-workflow"
    complexity: "medium"
    estimated_duration: "30-60 minutes"
  ```

### ❌ Prohibited

- Creating workflow folders manually
- Using TODO placeholder content
- Static team lists (use conditional assembly)
- Minimal variable collection (<4 inputs)

---

## Creating Modules

### ✅ Required Process

```
@bmad-builder
*create-module

# Follow interactive prompts:
# - Module concept and purpose
# - Component architecture (agents + workflows)
# - Configuration needs
# - Installation requirements
```

### ✅ Expected Output

- **Directory Structure:**
  ```
  {pack}/
  ├── agents/                    # .agent.yaml files
  ├── workflows/                 # Workflow folders
  ├── tasks/                     # Optional task files
  ├── templates/                 # Shared templates
  ├── data/                      # Module data
  ├── _module-installer/
  │   └── install-config.yaml
  └── README.md
  ```

- **Configuration:** 6+ interactive fields in `install-config.yaml`
- **README:** Comprehensive with examples, quick start, roadmap

### ❌ Prohibited

- Creating module structure manually
- Copying from other packs without BMB
- Minimal configuration (0-2 fields)
- Generic README without examples

---

## Quality Standards

### Agent Quality Checklist

- [ ] `.agent.yaml` format (not `.md`)
- [ ] 150+ lines with rich persona
- [ ] Clear role, identity, style, principles
- [ ] Meaningful menu commands (not just *help and *exit)
- [ ] Resources defined (if expert/module agent)
- [ ] Activation config present
- [ ] Metadata complete (created_by, version, date)

### Workflow Quality Checklist

- [ ] workflow.yaml 100+ lines
- [ ] 4+ input variables with prompts
- [ ] Conditional team assembly (not all agents required always)
- [ ] instructions.md 200+ lines following workflow.xml
- [ ] Step-by-step execution guide
- [ ] Validation checklist present
- [ ] Metadata complete (complexity, duration)

### Module Quality Checklist

- [ ] Complete directory structure (agents, workflows, tasks, templates, data)
- [ ] install-config.yaml with 6+ interactive fields
- [ ] Configuration adapts to user needs
- [ ] README with examples and quick start
- [ ] At least 2 agents and 1 workflow as starter
- [ ] Roadmap for remaining components

---

## Validation Process

### Before Submitting PR

1. **Format Check:**
   - All agents in `.agent.yaml` format
   - All workflows have complete file set
   - No `.md` agent files

2. **Quality Check:**
   - Run through quality checklists above
   - Validate configuration has 6+ fields
   - Ensure workflows have detailed instructions

3. **Reference Check:**
   - All paths use correct pack names
   - No broken workflow references
   - Agent IDs match file locations

4. **Documentation Check:**
   - README updated with new components
   - Examples provided for key workflows
   - Roadmap reflects remaining work

---

## Sprint 02+ Requirements

All stories in Sprint 02 and beyond that involve creating agents or workflows MUST:

1. **Use BMB workflows** - No exceptions
2. **Document the experience** - Capture actual BMB usage for docs
3. **Meet quality standards** - Pass all checklists
4. **Include in PR description** - Confirm BMB compliance

### PR Template Requirement

When submitting PRs with new agents/workflows, include:

```markdown
## BMB Compliance

- [ ] All agents created via `*create-agent`
- [ ] All workflows created via `*create-workflow`
- [ ] All quality checklists passed
- [ ] Format: `.agent.yaml` not `.md`
- [ ] Configuration: 6+ interactive fields
- [ ] Documentation: Examples provided
```

---

## Exceptions

### When Script/Manual Creation is Acceptable

**NONE.** There are no exceptions. BMB-first is mandatory.

### When to Seek Guidance

If you encounter a scenario where BMB workflows don't support your needs:

1. Document the gap
2. Open an issue describing the limitation
3. Propose BMB workflow enhancement
4. Wait for guidance before proceeding manually

**Do not create workarounds.** Fix the tooling instead.

---

## Examples

### Good: Creating Medical Agent

```
@bmad-builder
*create-agent

Agent type: Module
Name: Dr. Sarah Chen
Title: Cardiologist
Icon: 🫀
Module: medical

# BMB guides through:
# - Persona development
# - Command structure
# - Resource definition
# - Workflow integration

Output: medical/agents/dr-sarah-chen.agent.yaml
✅ Proper format, rich metadata, BMAD Core compliant
```

### Bad: Creating Medical Agent

```bash
#!/bin/bash
# ❌ PROHIBITED
cp template-agent.md medical/agents/dr-sarah-chen.md
sed -i 's/TEMPLATE/Dr. Sarah Chen/g' medical/agents/dr-sarah-chen.md
```

**Why bad:**
- Wrong format (`.md` not `.agent.yaml`)
- Bypasses BMB quality process
- Minimal content
- Not BMAD Core compliant
- Doesn't demonstrate methodology

---

## Enforcement

### PR Review Requirements

All PRs adding agents/workflows will be checked for:

1. BMB workflow usage
2. Proper file format
3. Quality standards compliance
4. Documentation completeness

**PRs that bypass BMB will be rejected.**

### Retroactive Compliance

Sprint 01 packs were retrofitted to BMB format (Story 16). All packs now comply. Future packs must maintain this standard from day one.

---

## Questions?

- See validation work: `FINAL-COMPARISON.md`
- See stories: `docs/stories/story-16-retrofit-packs-bmb.md`, `story-17-bmb-first-policy.md`
- See Sprint 02 plan for BMB documentation stories

---

## Summary

**The Rule:** BMB-first, always. No shortcuts.

**The Reason:** Quality, compliance, credibility.

**The Result:** Expansion packs we're proud of.

---

_Established: 2025-10-27_  
_Policy: Mandatory for all future work_  
_Enforced: PR review process_

