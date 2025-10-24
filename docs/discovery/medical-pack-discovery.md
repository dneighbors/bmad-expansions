# Medical Pack Discovery Session

**Date:** 2025-10-24  
**Facilitator:** John (PM)  
**Participants:** Mary (Analyst), Sophie (UX Designer), Brainstorming Coach  
**Stakeholder:** Deke

---

## Session Goal

Define agents, workflows, and use cases for the **Medical Pack** expansion to enable scoped development in Sprint 01.

---

## Discovery Questions

### 1. Target Users & Use Cases
**Lead: Mary (Analyst)**

- Who will use the Medical Pack?
  - [ ] Medical writers / content creators
  - [ ] Healthcare professionals (doctors, nurses)
  - [ ] Medical educators / trainers
  - [ ] Health tech product teams
  - [ ] Medical researchers
  - [ ] Other: _____________

- What are the primary use cases?
  - [ ] Patient education materials
  - [ ] Clinical documentation
  - [ ] Medical research papers
  - [ ] Health blog/article authoring
  - [ ] Medical training content
  - [ ] Drug/device documentation
  - [ ] Other: _____________

- What pain points does this solve?

---

### 2. Agent Personas
**Lead: Sophie (UX Designer)**

For each proposed agent:
- Name & Role
- Expertise area
- Communication style
- Primary workflows supported

**Proposed Agents:**
1. Agent TBD — _(define role, expertise, style)_
2. Agent TBD — _(define role, expertise, style)_
3. Agent TBD — _(define role, expertise, style)_

---

### 3. Workflows
**Lead: Brainstorming Coach**

For each workflow:
- Name & trigger command
- Input requirements
- Output artifacts
- Steps overview

**Proposed Workflows:**
1. Workflow TBD — _(define trigger, inputs, outputs, steps)_
2. Workflow TBD — _(define trigger, inputs, outputs, steps)_

---

### 4. Dependencies & Constraints
**Lead: John (PM)**

- External dependencies (APIs, data sources, medical terminology databases)
- Compliance considerations (HIPAA, medical accuracy disclaimers)
- Content review requirements (SME validation)
- Module dependencies (bmm, bmb, others?)

---

## Next Steps

1. Complete discovery questions (all participants)
2. Prioritize agents/workflows (PM + stakeholder)
3. Create detailed Story 12 with acceptance criteria
4. Hand off to developer for implementation

---

## Session Notes

_(Participants: add your research, ideas, and recommendations below)_

### Mary (Analyst) — Research & Use Cases

**Primary Users:** Healthcare SaaS product teams (developers, PMs, designers, marketers)

**Use Cases:**
- Product planning & requirements (invite medical expertise early)
- Feature design reviews (patient safety, clinical accuracy)
- Content creation (in-app guidance, patient education, training)
- Marketing collaboration (messaging that's medically sound + patient-centered)
- Compliance review (HIPAA, PHI, security)
- EHR integration planning (workflows, data models)

**Pain Points We're Solving:**
1. Forgetting the patient — features that miss patient experience/needs
2. Medical inaccuracy — content/features that aren't clinically sound
3. Security/compliance gaps — PHI exposure, HIPAA violations
4. Lack of domain expertise — dev teams don't know what they don't know

---

### Sally (UX Designer) — Agent Personas & Journeys

**Confirmed Agent Roster (8 agents):**

1. **Dr. Michael Johnson — Medical Director**
   - Role: Clinical strategy + administrative oversight
   - Expertise: Patient outcomes, care pathways, provider workflows, clinical guidelines
   - Style: Balances medical rigor with operational pragmatism

2. **Nurse Brittany Hinsley — Patient Care Specialist**
   - Role: Frontline care + patient advocacy
   - Expertise: Bedside workflows, patient experience, care coordination
   - Style: Empathetic, practical, patient-first

3. **Ashley Rutledge — Paramedic Specialist**
   - Role: Emergency care + field medicine expert
   - Expertise: Prehospital care, trauma response, critical decision-making under pressure
   - Style: Action-oriented, rapid assessment, protocol-driven

4. **Dr. Alex Kim — Pharmacist**
   - Role: Medication safety + drug expertise
   - Expertise: Drug interactions, dosing, formularies, clinical pharmacy
   - Style: Detail-oriented, safety-focused

5. **Maya Patel — Medical Writer**
   - Role: Clinical content specialist
   - Expertise: Patient education, clinical documentation, plain language
   - Style: Clear, accurate, accessible

6. **Dr. James Carter — Medical Educator**
   - Role: Training + knowledge transfer
   - Expertise: Clinical education, curriculum design, provider training
   - Style: Pedagogical, structured, outcome-focused

7. **Lisa Chang — Privacy & Security Officer**
   - Role: HIPAA/PHI compliance expert
   - Expertise: Data security, consent, breach prevention, audit trails
   - Style: Vigilant, policy-driven, risk-aware

8. **Marcus Thompson — EHR Integration Specialist**
   - Role: Health IT + interoperability expert
   - Expertise: HL7, FHIR, EHR workflows, data standards
   - Style: Technical, pragmatic, standards-focused

9. **Rachel Johnson — Medical Billing Expert**
   - Role: Revenue cycle + coding specialist
   - Expertise: CPT/ICD codes, claims, reimbursement, payer rules
   - Style: Process-oriented, detail-focused

---

### Carson (Brainstorming Coach) — Creative Ideation

**ALL Workflows for MVP (8 workflows):**

1. **`*clinical-review`** — Multi-agent clinical review
   - **Team:** Dr. Michael Johnson (Medical Director), Nurse Brittany Hinsley, Ashley Rutledge (Paramedic), Dr. Alex Kim (Pharmacist), Lisa Chang (Privacy Officer)
   - **Input:** Feature spec, user story, or design artifact
   - **Output:** Clinical validation report with safety/accuracy/compliance findings
   - **Priority:** 🔥 CRITICAL for story reviews

2. **`*patient-content`** — Patient-facing content creation
   - **Team:** Maya Patel (Medical Writer), Nurse Brittany Hinsley (validation)
   - **Input:** Content brief, target audience, medical topic
   - **Output:** Patient education materials (plain language, medically accurate)

3. **`*ehr-integration-plan`** — EHR integration design
   - **Team:** Marcus Thompson (EHR Specialist)
   - **Input:** Integration requirements, EHR system details
   - **Output:** Data model, workflow mapping, FHIR resource specs

4. **`*drug-safety-check`** — Medication feature review
   - **Team:** Dr. Alex Kim (Pharmacist), Dr. Michael Johnson (Medical Director)
   - **Input:** Medication feature spec, drug database design
   - **Output:** Safety analysis (interactions, dosing, contraindications)

5. **`*hipaa-audit`** — Compliance review
   - **Team:** Lisa Chang (Privacy Officer)
   - **Input:** Feature spec, data flows, PHI handling
   - **Output:** HIPAA compliance report with remediation recommendations

6. **`*provider-training`** — Training curriculum creation
   - **Team:** Dr. James Carter (Medical Educator), Nurse Brittany Hinsley, Dr. Michael Johnson (Medical Director)
   - **Input:** Training objectives, target learners, content scope
   - **Output:** Training curriculum, assessments, learning outcomes

7. **`*billing-workflow`** — Documentation & coding workflows
   - **Team:** Rachel Johnson (Billing Expert)
   - **Input:** Clinical workflow, documentation requirements
   - **Output:** Billing workflow design, coding templates, documentation guides

8. **`*marketing-collab`** — Marketing content collaboration
   - **Team:** Dr. Michael Johnson (Medical Director), Maya Patel (Medical Writer)
   - **Input:** Marketing brief, target audience, messaging goals
   - **Output:** Medically accurate marketing content with clinical validation
   - **Priority:** 🔥 CRITICAL for messaging

---

### John (PM) — Synthesis & Recommendations

**MVP Scope for Story 12:**
- **9 Agents** (all personas confirmed)
- **8 Workflows** (all workflows included)
- **Priority workflows:** `*clinical-review` (story reviews), `*marketing-collab` (messaging)

**Dependencies:**
- Medical terminology databases (SNOMED, RxNorm, ICD-10)
- Clinical guidelines (CDC, WHO)
- HIPAA/HITECH regulations
- EHR standards (HL7 FHIR)
- Module dependencies: bmm, bmb

**Risks & Mitigations:**
- Medical inaccuracy → Include disclaimers + validation workflows
- Compliance gaps → Privacy Officer + audit checklists
- Scope creep → All 9 agents/8 workflows confirmed for first round

**Next Steps:**
1. Create detailed agent YAML specs (9 files)
2. Create workflow definitions (8 folders with workflow.yaml + instructions.md)
3. Validate installer config
4. Test `*clinical-review` and `*marketing-collab` end-to-end


