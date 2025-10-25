# Medical Pack

**Bring clinical expertise into your healthcare SaaS product development workflows.**

## Purpose

The Medical Pack provides healthcare SaaS teams with on-demand access to clinical experts—from medical directors to pharmacists to HIPAA compliance officers—ensuring that your products are medically accurate, patient-centered, and regulatory compliant.

## Target Users

- **Product Teams** — Building healthcare SaaS applications
- **Developers** — Implementing clinical features
- **Designers** — Creating patient-facing experiences
- **Product Managers** — Planning healthcare products
- **Marketing Teams** — Creating medically accurate content

## Pain Points Solved

1. **Forgetting the Patient** — Features that miss patient experience and needs
2. **Medical Inaccuracy** — Content and features that aren't clinically sound
3. **Security/Compliance Gaps** — PHI exposure and HIPAA violations
4. **Lack of Domain Expertise** — Dev teams don't know what they don't know

## Agent Roster

### Clinical Leadership
- **Dr. Michael Johnson** (`@dr-michael-johnson`) — Medical Director with clinical strategy and administrative expertise

### Frontline Care
- **Nurse Brittany Hinsley** (`@nurse-brittany-hinsley`) — Patient Care Specialist focused on bedside workflows and patient advocacy
- **Ashley Rutledge** (`@ashley-rutledge`) — Paramedic Specialist for emergency care and time-critical scenarios

### Clinical Specialties
- **Dr. Alex Kim** (`@dr-alex-kim`) — Clinical Pharmacist for medication safety and drug interactions
- **Maya Patel** (`@maya-patel`) — Medical Writer for patient education and clinical content
- **Dr. James Carter** (`@dr-james-carter`) — Medical Educator for training curriculum design

### Technical & Compliance
- **Lisa Chang** (`@lisa-chang`) — Privacy & Security Officer for HIPAA compliance and PHI protection
- **Marcus Thompson** (`@marcus-thompson`) — EHR Integration Specialist for HL7, FHIR, and health IT interoperability
- **Rachel Johnson** (`@rachel-johnson`) — Medical Billing Expert for revenue cycle and coding workflows

## Workflows

### 🔥 Priority Workflows

#### `*clinical-review` — Multi-Agent Clinical Review
**Team:** Dr. Johnson, Nurse Hinsley, Ashley Rutledge, Dr. Kim, Lisa Chang  
**Use When:** Reviewing features, user stories, or designs for clinical safety and accuracy  
**Output:** Clinical validation report with safety/compliance findings

```
@dr-michael-johnson
*clinical-review
```

#### `*marketing-collab` — Marketing Content Collaboration
**Team:** Dr. Johnson, Maya Patel  
**Use When:** Creating marketing content that needs clinical validation  
**Output:** Medically accurate, patient-centered marketing copy

```
@maya-patel
*marketing-collab
```

### Additional Workflows

- **`*patient-content`** — Create patient education materials (Maya Patel, Nurse Hinsley)
- **`*ehr-integration-plan`** — Design EHR integration architecture (Marcus Thompson)
- **`*drug-safety-check`** — Medication feature safety review (Dr. Kim, Dr. Johnson)
- **`*hipaa-audit`** — HIPAA compliance review (Lisa Chang)
- **`*provider-training`** — Healthcare provider training curriculum (Dr. Carter, Nurse Hinsley, Dr. Johnson)
- **`*billing-workflow`** — Medical billing and coding workflow design (Rachel Johnson)

## Installation

### Prerequisites

The Medical Pack requires the following BMAD modules:
- `bmm` — BMAD Method Modular (core workflows)
- `bmb` — BMAD Builder (module authoring tools)

### Install via BMAD Installer

```bash
# From your project root
bmad install medical
```

## Usage Examples

### Example 1: Feature Story Review

Before implementing a medication reminder feature:

```
@dr-michael-johnson
*clinical-review
```

Paste your user story, and the team will review for:
- Medication safety considerations
- Patient notification best practices
- HIPAA compliance for medication data
- Emergency override scenarios
- Provider workflow integration

### Example 2: Patient Education Content

Creating in-app guidance for diabetes management:

```
@maya-patel
*patient-content
```

Provide the topic and target reading level, and Maya will create plain-language content validated by Nurse Hinsley.

### Example 3: EHR Integration Planning

Designing FHIR API integration with Epic:

```
@marcus-thompson
*ehr-integration-plan
```

Marcus will design data models, workflow mappings, and FHIR resource specifications.

## Medical Disclaimer

**IMPORTANT:** All agents in the Medical Pack provide clinical expertise for product development purposes only. Agent outputs do not constitute professional medical advice, diagnosis, or treatment. Healthcare applications must be reviewed by qualified healthcare professionals and legal counsel before deployment. Users are responsible for ensuring compliance with applicable medical device regulations, HIPAA requirements, and state/federal healthcare laws.

## Dependencies

- **BMAD Core** — Required
- **BMM** (BMAD Method Modular) — Required
- **BMB** (BMAD Builder) — Required

## Version

**0.1.0** — Initial release

## Discovery Documentation

For detailed information about pack design and use cases, see:
- `docs/discovery/medical-pack-discovery.md` (in bmad-expansions repo)

## Contributing

This pack was authored using BMAD Builder workflows. To contribute:
1. Use `@bmad-builder` agent
2. Run `*create-agent` or `*create-workflow` workflows
3. Follow BMAD Core agent and workflow conventions

## License

Part of the BMAD Method ecosystem. See main BMAD-METHOD repository for license details.
