# Story 12: Scaffold Medical Pack via BMB

**Epic:** E2 — Authoring with BMAD Builder (BMB)  
**Priority:** P0 (Critical Path)  
**Story Points:** 5  
**Assigned:** Developer  
**Status:** Ready for Development

---

## User Story

As an author, I want the `medical` pack scaffolded using official BMB workflows so that healthcare SaaS teams can invite medical expertise into their product/dev/marketing workflows.

---

## Discovery Reference

See completed discovery session: `docs/discovery/medical-pack-discovery.md`

**Target Users:** Healthcare SaaS product teams (developers, PMs, designers, marketers)

**Pain Points Solved:**
1. Forgetting the patient — features that miss patient experience/needs
2. Medical inaccuracy — content/features that aren't clinically sound
3. Security/compliance gaps — PHI exposure, HIPAA violations
4. Lack of domain expertise — dev teams don't know what they don't know

---

## Acceptance Criteria

### 1. Create 9 Agent YAML Files

Use BMB `*create-agent` workflow to create each agent in `medical/agents/`:

1. **dr-michael-johnson.agent.yaml** — Medical Director
   - Role: Clinical strategy + administrative oversight
   - Expertise: Patient outcomes, care pathways, provider workflows, clinical guidelines
   - Communication style: Balances medical rigor with operational pragmatism

2. **nurse-brittany-hinsley.agent.yaml** — Patient Care Specialist
   - Role: Frontline care + patient advocacy
   - Expertise: Bedside workflows, patient experience, care coordination
   - Communication style: Empathetic, practical, patient-first

3. **ashley-rutledge.agent.yaml** — Paramedic Specialist
   - Role: Emergency care + field medicine expert
   - Expertise: Prehospital care, trauma response, critical decision-making under pressure
   - Communication style: Action-oriented, rapid assessment, protocol-driven

4. **dr-alex-kim.agent.yaml** — Pharmacist
   - Role: Medication safety + drug expertise
   - Expertise: Drug interactions, dosing, formularies, clinical pharmacy
   - Communication style: Detail-oriented, safety-focused

5. **maya-patel.agent.yaml** — Medical Writer
   - Role: Clinical content specialist
   - Expertise: Patient education, clinical documentation, plain language
   - Communication style: Clear, accurate, accessible

6. **dr-james-carter.agent.yaml** — Medical Educator
   - Role: Training + knowledge transfer
   - Expertise: Clinical education, curriculum design, provider training
   - Communication style: Pedagogical, structured, outcome-focused

7. **lisa-chang.agent.yaml** — Privacy & Security Officer
   - Role: HIPAA/PHI compliance expert
   - Expertise: Data security, consent, breach prevention, audit trails
   - Communication style: Vigilant, policy-driven, risk-aware

8. **marcus-thompson.agent.yaml** — EHR Integration Specialist
   - Role: Health IT + interoperability expert
   - Expertise: HL7, FHIR, EHR workflows, data standards
   - Communication style: Technical, pragmatic, standards-focused

9. **rachel-johnson.agent.yaml** — Medical Billing Expert
   - Role: Revenue cycle + coding specialist
   - Expertise: CPT/ICD codes, claims, reimbursement, payer rules
   - Communication style: Process-oriented, detail-focused

**All agents must include:**
- Medical disclaimer in persona/principles
- Reference to target users (healthcare SaaS teams)
- Menu with workflows they support

---

### 2. Create 8 Workflow Folders

Use BMB `*create-workflow` to create each workflow in `medical/workflows/`:

1. **clinical-review/** — Multi-agent clinical review (🔥 PRIORITY)
   - Team: Dr. Johnson, Nurse Hinsley, Ashley Rutledge, Dr. Kim, Lisa Chang
   - Input: Feature spec, user story, or design artifact
   - Output: Clinical validation report with safety/accuracy/compliance findings
   - Steps: Load artifact → multi-agent review → generate report → save findings

2. **patient-content/** — Patient-facing content creation
   - Team: Maya Patel, Nurse Hinsley (validation)
   - Input: Content brief, target audience, medical topic
   - Output: Patient education materials (plain language, medically accurate)

3. **ehr-integration-plan/** — EHR integration design
   - Team: Marcus Thompson
   - Input: Integration requirements, EHR system details
   - Output: Data model, workflow mapping, FHIR resource specs

4. **drug-safety-check/** — Medication feature review
   - Team: Dr. Kim, Dr. Johnson
   - Input: Medication feature spec, drug database design
   - Output: Safety analysis (interactions, dosing, contraindications)

5. **hipaa-audit/** — Compliance review
   - Team: Lisa Chang
   - Input: Feature spec, data flows, PHI handling
   - Output: HIPAA compliance report with remediation recommendations

6. **provider-training/** — Training curriculum creation
   - Team: Dr. Carter, Nurse Hinsley, Dr. Johnson
   - Input: Training objectives, target learners, content scope
   - Output: Training curriculum, assessments, learning outcomes

7. **billing-workflow/** — Documentation & coding workflows
   - Team: Rachel Johnson
   - Input: Clinical workflow, documentation requirements
   - Output: Billing workflow design, coding templates, documentation guides

8. **marketing-collab/** — Marketing content collaboration (🔥 PRIORITY)
   - Team: Dr. Johnson, Maya Patel
   - Input: Marketing brief, target audience, messaging goals
   - Output: Medically accurate marketing content with clinical validation

**Each workflow must include:**
- `workflow.yaml` with config (name, description, team agents, inputs, outputs)
- `instructions.md` with step-by-step execution logic
- `README.md` with usage examples
- `checklist.md` (validation criteria)

---

### 3. Update Medical Pack README

Create compelling `medical/README.md` that includes:
- Pack purpose and value proposition
- Target users (healthcare SaaS teams)
- Agent roster with 1-sentence descriptions
- Workflow catalog with triggers and use cases
- Installation instructions
- Usage examples (how to invoke agents/workflows)
- Medical disclaimer
- Dependencies (bmm, bmb)

**Tone:** Professional, clear, emphasizes patient safety + clinical accuracy

---

### 4. Validate Installer Config

Ensure `medical/_module-installer/install-config.yaml` includes:
- `code: medical`
- `name: "Medical Pack"`
- `description: "Clinical expertise agents for healthcare SaaS teams"`
- `version: "0.1.0"`
- `dependencies: [bmm, bmb]`

---

### 5. Test Priority Workflows

Manually test these workflows end-to-end:
1. `*clinical-review` — Review a sample user story
2. `*marketing-collab` — Generate marketing content for a sample feature

Verify:
- Workflows load without errors
- Agents activate correctly
- Outputs match expected format
- Medical disclaimers are present

---

## Technical Notes

- Use BMB workflows (`*create-agent`, `*create-workflow`) — do NOT manually code YAML/instructions
- Agent YAMLs compile to `.md` during installation in target projects
- All medical content must include disclaimer: "This is not a substitute for professional medical advice"
- PHI handling workflows must reference HIPAA compliance

---

## Definition of Done

- [ ] 9 agent YAML files created in `medical/agents/`
- [ ] 8 workflow folders created in `medical/workflows/`
- [ ] `medical/README.md` updated (compelling, complete)
- [ ] Installer config validated
- [ ] `*clinical-review` tested successfully
- [ ] `*marketing-collab` tested successfully
- [ ] All files committed to `main`
- [ ] Discovery doc reference added to README

---

## Resources

- Discovery doc: `docs/discovery/medical-pack-discovery.md`
- BMB agent creation: Use `*create-agent` workflow
- BMB workflow creation: Use `*create-workflow` workflow
- EXPANSIONS-SETUP.md: Authoring guidance

---

_Story updated by John (PM) on 2025-10-24_

