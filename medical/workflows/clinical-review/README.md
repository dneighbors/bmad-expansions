# Clinical Review Workflow

## Overview

Multi-agent workflow for reviewing product features, user stories, and design artifacts for clinical safety, accuracy, and compliance.

## When to Use

- Before implementing any healthcare-related feature
- During sprint planning to validate story clinical feasibility
- During design review to catch safety issues early
- Before marketing content goes live
- When pivoting product direction

## Team

- **Dr. Michael Johnson** — Medical Director
- **Nurse Brittany Hinsley** — Patient Care Specialist
- **Ashley Rutledge** — Paramedic Specialist
- **Dr. Alex Kim** — Clinical Pharmacist
- **Lisa Chang** — Privacy & Security Officer

## Usage

### Invoke via Medical Director
```
@dr-michael-johnson
*clinical-review
```

### Provide Artifact
- Paste feature spec, user story, or design doc
- Or provide file path to artifact

### Receive Report
- Clinical validation findings
- Safety/compliance issues (Critical/Moderate/Minor)
- Approval status with recommendations

## Example

**Input:** User story for medication dosing calculator feature

**Output:** Clinical review report covering:
- Drug interaction checking requirements
- Dosing algorithm validation
- Emergency override scenarios
- PHI handling in dosing history
- Patient safety guardrails

## Output

Structured markdown report: `clinical-review-{artifact-name}-{date}.md`

## See Also

- `*drug-safety-check` — Deep-dive medication feature review
- `*hipaa-audit` — Compliance-only review
- `*marketing-collab` — Marketing content validation

