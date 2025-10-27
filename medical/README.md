# Medical Pack (BMB Generated)

**Version:** 1.0.0  
**Author:** Derek Neighbors  
**Created:** 2025-10-26  
**Method:** BMB Workflows (`*create-module`, `*create-agent`, `*create-workflow`)

---

## Overview

The Medical Pack provides healthcare domain expertise for SaaS product teams building health tech solutions. This module brings clinical knowledge, regulatory compliance, and patient-centered design principles to your development workflow.

**Created using BMAD Builder (BMB) workflows** to demonstrate proper module structure and agent/workflow format.

---

## What This Pack Provides

### 🏥 Clinical Expertise
- Medical Directors, Nurses, Paramedics, Pharmacists
- Evidence-based clinical guidance
- Patient safety and outcomes focus

### 📋 Compliance & Regulatory
- HIPAA compliance review
- PHI handling guidance
- Healthcare security best practices

### 🔗 Health Tech Integration
- EHR integration planning (HL7 FHIR)
- Clinical workflow mapping
- Billing and documentation workflows

### 📝 Medical Content
- Patient education materials
- Clinical documentation
- Medical marketing validation

---

## Installation

```bash
bmad install medical-bmad
```

During installation, you'll be asked to configure:
- Output paths for clinical reviews
- HIPAA compliance mode
- Clinical validation thoroughness
- EHR system type
- Medical disclaimer preferences

---

## Components

### Agents (9 Total)

####  Dr. Michael Johnson - Medical Director 🏥
**Role:** Chief Medical Officer + Clinical Strategy Lead  
**Expertise:** Patient outcomes, care pathways, clinical guidelines  
**Key Workflows:** Clinical review, drug safety, marketing collaboration

**File:** `agents/dr-michael-johnson.agent.yaml` → compiled to `.md` during install

#### Nurse Brittany Hinsley - Patient Care Specialist 👩‍⚕️
**Role:** Registered Nurse + Patient Advocacy Expert  
**Expertise:** Bedside workflows, patient experience, care coordination  
**Key Workflows:** Clinical review, patient content, provider training

**File:** `agents/nurse-brittany-hinsley.agent.yaml` → compiled to `.md` during install

#### Additional Agents (To Be Created)
- Ashley Rutledge - Paramedic Specialist 🚑
- Dr. Alex Kim - Pharmacist 💊
- Maya Patel - Medical Writer ✍️
- Dr. James Carter - Medical Educator 👨‍🏫
- Lisa Chang - Privacy & Security Officer 🔒
- Marcus Thompson - EHR Integration Specialist 💻
- Rachel Johnson - Medical Billing Expert 💰

---

### Workflows (8 Total)

#### 1. **`*clinical-review`** 🔥 PRIORITY
Multi-specialist clinical review of features, specs, or content

**Team:** Dr. Johnson, Nurse Hinsley, + conditional specialists (Paramedic, Pharmacist, Privacy Officer, EHR Specialist)  
**Input:** Feature spec, user story, design, or content  
**Output:** Clinical validation report with findings and recommendations  
**Use Case:** Review stories before development, validate designs, check marketing materials

**Status:** ✅ Workflow created with full instructions

#### 2. **`*patient-content`**
Create patient-facing educational materials

**Team:** Maya Patel (Medical Writer), Nurse Hinsley  
**Input:** Content brief, target audience, medical topic  
**Output:** Patient education materials (plain language, medically accurate)

**Status:** ⏳ To be created

#### 3. **`*ehr-integration-plan`**
Design EHR integration architecture

**Team:** Marcus Thompson (EHR Specialist)  
**Input:** Integration requirements, EHR system details  
**Output:** Data model, workflow mapping, FHIR resource specs

**Status:** ⏳ To be created

#### 4. **`*drug-safety-check`**
Medication feature safety review

**Team:** Dr. Alex Kim (Pharmacist), Dr. Johnson  
**Input:** Medication feature spec, drug database design  
**Output:** Safety analysis (interactions, dosing, contraindications)

**Status:** ⏳ To be created

#### 5. **`*hipaa-audit`**
HIPAA compliance review

**Team:** Lisa Chang (Privacy Officer)  
**Input:** Feature spec, data flows, PHI handling  
**Output:** HIPAA compliance report with remediation

**Status:** ⏳ To be created

#### 6. **`*provider-training`**
Clinical training curriculum creation

**Team:** Dr. James Carter, Nurse Hinsley, Dr. Johnson  
**Input:** Training objectives, target learners  
**Output:** Training curriculum, assessments

**Status:** ⏳ To be created

#### 7. **`*billing-workflow`**
Documentation & coding workflow design

**Team:** Rachel Johnson (Billing Expert)  
**Input:** Clinical workflow, documentation requirements  
**Output:** Billing workflow, coding templates

**Status:** ⏳ To be created

#### 8. **`*marketing-collab`** 🔥 PRIORITY
Medical validation of marketing content

**Team:** Dr. Johnson, Maya Patel  
**Input:** Marketing brief, messaging  
**Output:** Medically accurate marketing content

**Status:** ⏳ To be created

---

## Quick Start

### 1. Load the Medical Director

```
@dr-michael-johnson
```

### 2. View Available Commands

```
*help
```

### 3. Run Clinical Review

```
*clinical-review
```

The workflow will prompt you for:
- What you're reviewing
- Artifact description or file path
- Areas of focus (safety, accuracy, compliance, etc.)
- Review urgency

---

## Module Structure

```
medical-bmad/
├── agents/                          # Agent definitions (.agent.yaml source)
│   ├── dr-michael-johnson.agent.yaml
│   ├── nurse-brittany-hinsley.agent.yaml
│   └── [7 more agents to be created]
├── workflows/                       # Workflow folders
│   ├── clinical-review/             # ✅ Created
│   │   ├── workflow.yaml
│   │   ├── instructions.md
│   │   ├── checklist.md
│   │   └── template.md
│   └── [7 more workflows to be created]
├── tasks/                           # Optional task files
├── templates/                       # Shared templates
├── data/                            # Medical data and resources
│   ├── clinical-guidelines/
│   ├── terminology/
│   ├── compliance/
│   ├── nursing/
│   └── patient-education/
├── _module-installer/               # Installation configuration
│   └── install-config.yaml
└── README.md                        # This file
```

---

## Configuration

After installation, configure in `bmad/medical-bmad/config.yaml`:

### Key Settings

- **`clinical_output_path`** - Where reviews are saved
- **`hipaa_compliance_mode`** - enabled | advisory | disabled
- **`include_medical_disclaimers`** - Auto-add disclaimers to outputs
- **`clinical_validation_level`** - quick | standard | rigorous
- **`ehr_system`** - Your primary EHR (Epic, Cerner, etc.)

---

## Example Workflows

### Story Review Before Development

```
@dr-michael-johnson
*clinical-review

What are you reviewing? > User Story
Describe: > As a patient, I want to view my medication list and receive reminders
Focus: > Medical Accuracy, Patient Safety, Medication Safety
Urgency: > standard

→ Generates clinical-review-2025-10-26.md with findings
```

### Patient Education Content

```
@maya-patel
*patient-content

Topic: > Managing Type 2 Diabetes
Audience: > Adult patients, 6th-8th grade reading level
Length: > 500-750 words

→ Generates patient education material
```

### HIPAA Compliance Check

```
@lisa-chang
*hipaa-audit

Feature: > Patient messaging with photo attachments
Focus: > PHI handling, consent, encryption

→ Generates HIPAA compliance report
```

---

## Development Roadmap

### Phase 1: Core Agents ✅
- [x] Dr. Michael Johnson (Medical Director)
- [x] Nurse Brittany Hinsley (Patient Care)
- [ ] Ashley Rutledge (Paramedic)
- [ ] Dr. Alex Kim (Pharmacist)
- [ ] Lisa Chang (Privacy Officer)

### Phase 2: Content & Training Agents
- [ ] Maya Patel (Medical Writer)
- [ ] Dr. James Carter (Medical Educator)

### Phase 3: Integration & Billing
- [ ] Marcus Thompson (EHR Specialist)
- [ ] Rachel Johnson (Billing Expert)

### Workflows
- [x] clinical-review (Multi-specialist review)
- [ ] patient-content (Education materials)
- [ ] drug-safety-check (Medication safety)
- [ ] hipaa-audit (Compliance)
- [ ] ehr-integration-plan (Integration design)
- [ ] provider-training (Training curriculum)
- [ ] billing-workflow (Documentation & coding)
- [ ] marketing-collab (Marketing validation)

---

## BMB Workflow Commands

### Create Additional Agents

```
@bmad-builder
*create-agent

# Follow prompts to create remaining 7 agents
# Save to: medical-bmad/agents/{agent-name}.agent.yaml
```

### Create Additional Workflows

```
@bmad-builder
*create-workflow

# Follow prompts to create remaining 7 workflows
# Save to: medical-bmad/workflows/{workflow-name}/
```

---

## Differences from Script-Generated Medical Pack

This pack was created using **BMB workflows** to demonstrate proper BMAD structure:

### Key Differences

1. **Agent Format:** `.agent.yaml` (source) → compiled to `.md` during install
   - Script version: `.md` files created directly
   - BMB version: YAML source with richer metadata

2. **Configuration:** Interactive installer with 6 configuration options
   - Script version: Minimal config
   - BMB version: HIPAA mode, validation level, EHR system, etc.

3. **Workflow Richness:** Detailed instructions following workflow.xml patterns
   - Script version: TODO stubs
   - BMB version: Step-by-step execution guide with conditionals

4. **Module Structure:** Full directory tree (tasks, templates, data, resources)
   - Script version: Basic agents + workflows only
   - BMB version: Complete module infrastructure

5. **Documentation:** Comprehensive README with examples and roadmap
   - Script version: Basic README
   - BMB version: Quick start, examples, configuration guide

---

## Medical Disclaimer

This module provides medical domain expertise for product planning and development purposes only. All clinical content, features, and workflows must be reviewed and validated by licensed healthcare professionals before deployment in production environments. This guidance does not constitute medical advice, clinical recommendations, or replace proper clinical validation processes.

For patient-facing features or content, always:
- Consult licensed medical professionals
- Conduct clinical validation studies
- Follow regulatory approval processes
- Include appropriate medical disclaimers

---

## Contributing

To extend this module:

1. **Add agents** using `@bmad-builder *create-agent`
2. **Add workflows** using `@bmad-builder *create-workflow`
3. **Test** with real healthcare scenarios
4. **Document** usage examples and best practices

---

## Related Packs

- **Marketing Pack** - Collaborate on medical marketing content
- **Blog Pack** - Create medically accurate blog content

---

**Questions?** See `docs/stories/story-12-medical-pack.md` and `docs/discovery/medical-pack-discovery.md`

**BMB Documentation:** Stories 3-5 in Sprint 02 will document the workflows used to create this pack.

