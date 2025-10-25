# Clinical Review Workflow Instructions

## Purpose

Multi-agent clinical review to validate product features, user stories, and design artifacts for:
- **Patient Safety** — Does this feature protect patients from harm?
- **Clinical Accuracy** — Is medical information/functionality clinically sound?
- **Regulatory Compliance** — Does this meet HIPAA, PHI, and medical device regulations?
- **Patient Experience** — Does this serve real patient and provider needs?
- **Emergency Readiness** — Will this work in time-critical scenarios?

## Team Roles

1. **Dr. Michael Johnson (Medical Director)** — Clinical strategy, care pathways, provider workflows
2. **Nurse Brittany Hinsley (Patient Care Specialist)** — Patient experience, bedside workflow realities
3. **Ashley Rutledge (Paramedic)** — Emergency scenarios, time-critical decision-making
4. **Dr. Alex Kim (Pharmacist)** — Medication safety, drug interactions, dosing
5. **Lisa Chang (Privacy Officer)** — HIPAA compliance, PHI protection, data security

## Workflow Steps

### Step 1: Load Artifact

1. Load the artifact to review (provided via `artifact_path` variable)
2. If no path provided, prompt user for the artifact (paste content or provide file path)
3. Confirm artifact type: Feature spec | User story | Design doc | PRD | Other

### Step 2: Assign Review Focus

Based on `review_focus` variable:
- **comprehensive** → Full multi-agent review (all 5 agents contribute)
- **safety-only** → Dr. Johnson, Nurse Hinsley, Dr. Kim (clinical + medication safety)
- **compliance-only** → Lisa Chang (HIPAA/PHI only)
- **quick-scan** → Dr. Johnson only (high-level clinical validation)

### Step 3: Multi-Agent Review

Each agent reviews the artifact through their expertise lens:

**Dr. Johnson reviews for:**
- Clinical accuracy and evidence-based practice
- Care pathway integration
- Provider workflow impact
- Medical terminology and concepts

**Nurse Hinsley reviews for:**
- Patient experience and usability
- Care coordination implications
- Patient safety from frontline perspective
- Plain language and health literacy

**Ashley Rutledge reviews for:**
- Emergency and time-critical scenarios
- Cognitive load under pressure
- Protocol adherence in high-stakes situations
- Field/mobile use cases

**Dr. Kim reviews for:**
- Medication safety (interactions, dosing, contraindications)
- Drug database accuracy
- Clinical decision support for medications
- Formulary and payer considerations

**Lisa Chang reviews for:**
- PHI exposure and data minimization
- HIPAA Privacy and Security Rule compliance
- Consent and authorization workflows
- Audit trail and access control requirements
- Breach notification triggers

### Step 4: Synthesize Findings

Consolidate all agent feedback into structured report:

1. **Executive Summary** — Overall clinical safety assessment (✅ Approved | ⚠️ Approved with conditions | ❌ Not approved)
2. **Critical Issues** — Blockers that must be resolved before implementation
3. **Moderate Issues** — Important concerns requiring attention
4. **Minor Issues** — Suggestions for improvement
5. **Positive Highlights** — What this feature does well clinically
6. **Recommendations** — Specific action items by priority

### Step 5: Save Report

1. Generate report using `template.md`
2. Save to `output_folder` with filename: `clinical-review-{artifact-name}-{date}.md`
3. Add medical disclaimer footer
4. Provide next steps to user

## Output Format

See `template.md` for report structure.

## Validation

Use `checklist.md` to validate report completeness before delivery.

## Medical Disclaimer

All reviews must include: "This clinical review is provided for product development purposes only and does not constitute professional medical advice, diagnosis, or treatment. Consult qualified healthcare professionals and legal counsel for clinical and regulatory decisions."

