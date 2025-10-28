# Clinical Review Workflow - Execution Instructions

<critical>The workflow execution engine is governed by: {project-root}/bmad/core/tasks/workflow.xml</critical>
<critical>You MUST have already loaded and processed: {project-root}/medical/workflows/clinical-review/workflow.yaml</critical>
<critical>Communicate in {communication_language} throughout the review process</critical>

<workflow>

<step n="1" goal="Load artifact and context">
<action>Collect required inputs from workflow variables:</action>

- **Artifact Type:** {artifact_type}
- **Description:** {artifact_description}
- **File Path:** {artifact_file} (if provided)
- **Review Focus:** {review_focus}
- **Urgency:** {urgency}

<check if="artifact_file provided">
  <action>Load the artifact file into context</action>
  <action>Parse and understand the content being reviewed</action>
</check>

<check if="no artifact_file">
  <action>Work from the description provided</action>
  <action>Ask clarifying questions if description is insufficient</action>
</check>

<action>Determine team composition based on review focus and artifact type</action>
<action>Assemble required specialists from team configuration</action>

<template-output>artifact_context</template-output>
</step>

<step n="2" goal="Initial Medical Director Assessment">
<action>Dr. Michael Johnson (Medical Director) performs initial triage:</action>

**Clinical Triage Questions:**

1. **Patient Safety Impact:** Does this affect patient safety directly or indirectly?
2. **Clinical Accuracy:** Are medical claims, terminology, or concepts accurate?
3. **Regulatory Scope:** Does this touch HIPAA, PHI, or other compliance areas?
4. **Clinical Workflow:** Will this integrate with existing provider workflows?
5. **Evidence Base:** Are clinical recommendations evidence-based?

<action>Identify high-risk areas requiring specialist input</action>
<action>Flag any immediate safety concerns</action>
<action>Determine review depth based on urgency and validation_level</action>

<template-output>medical_director_assessment</template-output>
</step>

<step n="3" goal="Patient Care Perspective Review">
<action>Nurse Brittany Hinsley reviews from frontline care perspective:</action>

**Nursing Assessment Focus:**

1. **Workflow Reality:** Will this work in real bedside/clinical environments?
2. **Patient Experience:** How does this affect patient comfort, dignity, understanding?
3. **Care Coordination:** Does this support or hinder care team communication?
4. **Practical Implementation:** Can nurses actually use this in their workflow?
5. **Patient Education:** If patient-facing, is it clear and actionable?

<action>Identify workflow friction points</action>
<action>Assess patient-centeredness</action>
<action>Recommend practical improvements</action>

<template-output>nursing_perspective</template-output>
</step>

<step n="4" goal="Specialist Reviews (Conditional)" optional="true">
<action>Based on review focus and team composition, engage required specialists:</action>

<check if="Emergency Care specialist required">
  **Ashley Rutledge (Paramedic) - Emergency Scenarios:**
  - Critical decision-making under pressure
  - Prehospital care considerations
  - Trauma response protocols
  - Time-critical interventions
</check>

<check if="Medication Safety specialist required">
  **Dr. Alex Kim (Pharmacist) - Drug Safety:**
  - Drug interaction checking
  - Dosing accuracy and safety
  - Contraindication identification
  - Formulary compliance
  - Clinical pharmacy best practices
</check>

<check if="HIPAA specialist required">
  **Lisa Chang (Privacy Officer) - Compliance:**
  - PHI identification and handling
  - Consent and authorization flows
  - Access controls and audit trails
  - Breach prevention measures
  - HIPAA technical safeguards
</check>

<check if="EHR specialist required">
  **Marcus Thompson (EHR Specialist) - Integration:**
  - HL7/FHIR standards compliance
  - Data mapping accuracy
  - Interoperability considerations
  - EHR workflow integration
  - Clinical data standards
</check>

<action>Each specialist provides domain-specific review</action>
<action>Document specialist findings and recommendations</action>

<template-output>specialist_reviews</template-output>
</step>

<step n="5" goal="Synthesize Findings">
<action>Dr. Michael Johnson synthesizes all review inputs:</action>

**Synthesis Process:**

1. **Aggregate Findings:** Collect all specialist observations
2. **Prioritize Issues:** Categorize by severity (Critical, High, Medium, Low)
3. **Identify Conflicts:** Resolve any conflicting recommendations
4. **Assess Overall Risk:** Determine aggregate clinical risk level
5. **Formulate Recommendations:** Clear, actionable next steps

**Risk Categorization:**

- **Critical:** Patient safety issue, immediate action required
- **High:** Significant medical accuracy or compliance concern
- **Medium:** Workflow or usability issue affecting care quality
- **Low:** Minor improvement opportunity

<template-output>synthesized_findings</template-output>
</step>

<step n="6" goal="Generate Clinical Review Report">
<action>Create comprehensive review report using template: {template}</action>

**Report Structure:**

1. **Executive Summary**
   - Overall assessment (Approved / Approved with Conditions / Rejected / Needs Major Revision)
   - Key findings summary
   - Critical issues (if any)

2. **Artifact Overview**
   - What was reviewed
   - Review team composition
   - Review date and urgency level

3. **Medical Director Assessment**
   - Clinical triage findings
   - Patient safety evaluation
   - Regulatory considerations

4. **Nursing Perspective**
   - Workflow feasibility
   - Patient-centeredness assessment
   - Practical recommendations

5. **Specialist Reviews** (if applicable)
   - Emergency care analysis
   - Medication safety review
   - HIPAA compliance audit
   - EHR integration assessment

6. **Findings by Severity**
   - Critical Issues (must fix)
   - High Priority (should fix)
   - Medium Priority (consider fixing)
   - Low Priority (nice to have)

7. **Recommendations**
   - Required changes for approval
   - Suggested improvements
   - Follow-up review needs

8. **Medical Disclaimer**
   - Standard disclaimer about review scope
   - Reminder about professional validation

<check if="include_medical_disclaimers == 'true'">
  <action>Add comprehensive medical disclaimer to report</action>
</check>

<action>Save report to {output_file}</action>

<template-output>clinical_review_report</template-output>
</step>

<step n="7" goal="Validation and Handoff">
<action>Run validation checklist: {validation}</action>

**Validation Checks:**

- [ ] All required team members participated
- [ ] Severity levels assigned to all findings
- [ ] Recommendations are clear and actionable
- [ ] Medical terminology is accurate
- [ ] Report follows template structure
- [ ] Disclaimer included (if configured)
- [ ] Output file saved successfully

<action>Confirm report completeness with {user_name}</action>

<ask>Would you like to:
- Save and exit (report complete)
- Revise any section
- Add additional specialist input
- Export in different format
</ask>

<template-output>final_report</template-output>
</step>

</workflow>

## Notes

- **HIPAA Mode:** If enabled, Lisa Chang automatically joins all reviews
- **Validation Level:** Controls review depth (quick/standard/rigorous)
- **Urgency:** Affects time allocated and review thoroughness
- **Multi-Agent Collaboration:** Team dynamically assembled based on artifact and review focus

## Example Usage

```
@dr-michael-johnson
*clinical-review

# System prompts for inputs:
What are you reviewing? > Feature Specification
Describe what needs clinical review > New medication reminder feature for patient app
Path to artifact file > docs/features/medication-reminders.md
Specific areas of concern? > Medical Accuracy, Patient Safety, Medication Safety
Review urgency? > standard

# Workflow assembles team and executes review
# Output: clinical-review-2025-10-26.md in configured output folder
```

## Related Workflows

- `*drug-safety-check` - Focused medication safety review
- `*hipaa-audit` - Dedicated compliance audit
- `*patient-content` - Patient education material creation
- `*marketing-collab` - Marketing content validation

