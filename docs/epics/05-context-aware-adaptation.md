# Epic 05: Context-Aware Adaptation

**Status:** 📋 BACKLOG (Post-MVP)  
**Priority:** Medium  
**Estimated Effort:** 21-34 points (3-4 sprints)

---

## Overview

Make expansion pack agents and workflows truly adaptive to user configuration, automatically tailoring language, examples, recommendations, and complexity based on installer responses.

**Current State (v1.0):**
- Configuration captured during installation
- Values saved to `config.yaml` and available to agents
- Agents have access but don't automatically adapt
- Users must explicitly reference context in prompts

**Desired State:**
- Agents automatically adapt personas to user industry/context
- Workflows filter options based on maturity level
- Examples and recommendations match user's specific situation
- Disclaimers toggle on/off based on user preference
- Agent language reflects user's target audience (B2B vs B2C)

---

## Business Value

### Why This Matters

**User Experience:**
- Reduces cognitive load - agents "just know" your context
- More relevant recommendations without restating context
- Faster time-to-value - no need to teach agents your situation

**Differentiation:**
- Expansion packs feel like custom-built solutions
- Demonstrates BMAD's contextual AI capabilities
- Justifies premium positioning vs. generic prompts

**Adoption:**
- Lower barrier to effective use
- Better first-run experience
- Higher perceived value from installation questions

---

## Success Metrics

- **Relevance Score:** 80%+ of agent responses reference user context appropriately
- **User Feedback:** "Feels like it was built for my business" sentiment
- **Prompt Length:** 30% reduction in prompt length (users don't re-state context)
- **Configuration Completion:** 95%+ of users complete installer questions
- **Perceived Value:** Config questions seen as value-add, not friction

---

## Stories

### Marketing Pack (12 points)

**Story 18: Industry-Adaptive Marketing Language**
- As a marketer, I want agents to use industry-specific examples and terminology automatically
- Acceptance:
  - SaaS: PLG, free trials, MQLs, pipeline
  - Healthcare: Patient acquisition, compliance, testimonials
  - E-Commerce: ROAS, cart abandonment, product feeds
  - FinTech: Regulatory compliance, trust signals, security
- Points: 5

**Story 19: Audience-Based Channel Recommendations**
- As a marketer, I want recommended channels to match my target audience (B2B vs B2C)
- Acceptance:
  - B2B defaults: LinkedIn, Email, Content, Webinars, Trade shows
  - B2C defaults: Instagram, TikTok, Facebook Ads, Influencers, Retail
  - Recommendations auto-prioritized in workflows
- Points: 3

**Story 20: Maturity-Adjusted Complexity**
- As a startup marketer, I want simplified recommendations without enterprise complexity
- Acceptance:
  - Startup: 2-3 channels, lean budgets, quick wins, founder-led
  - Growing: 3-5 channels, scaling tactics, basic automation
  - Established: Multi-channel, advanced attribution, agency coordination
  - Enterprise: Global campaigns, complex governance, advanced tech stacks
- Points: 3

**Story 21: Conditional Disclaimer Display**
- As a user, I want to toggle marketing disclaimers on/off based on my preference
- Acceptance:
  - If `include_marketing_disclaimers: "Yes"` → Show disclaimers in agent responses
  - If `include_marketing_disclaimers: "No"` → Suppress disclaimers
  - Agent persona templates support conditional logic
- Points: 1

---

### Medical Pack (10 points)

**Story 22: Specialty-Specific Clinical Context**
- As a healthcare product team, I want agents to reference my medical specialty automatically
- Acceptance:
  - Cardiology: Heart failure, cardiac devices, ACC/AHA guidelines
  - Emergency Medicine: Triage, trauma protocols, time-sensitive care
  - Primary Care: Preventive care, chronic disease, care coordination
  - Specialty stored in config, referenced in agent personas
- Points: 5

**Story 23: EHR-Vendor Integration Guidance**
- As a health IT team, I want EHR-specific integration guidance automatically
- Acceptance:
  - Epic: App Orchard, MyChart, Epic on FHIR patterns
  - Cerner: Code Console, Patient Portal, FHIR R4
  - Athenahealth: MDP, API documentation, OAuth flows
  - Marcus Thompson (EHR Specialist) references stored EHR vendor
- Points: 3

**Story 24: Compliance-Mode Audit Rigor**
- As a compliance officer, I want audit depth to match my HIPAA compliance mode
- Acceptance:
  - Basic: High-level checklist, common violations
  - Standard: Detailed audit, technical safeguards, BAAs
  - Comprehensive: Deep dive, penetration testing, third-party review prep
  - Lisa Chang (Privacy Officer) adjusts audit thoroughness
- Points: 2

---

### Blog Pack (9 points)

**Story 25: Author Voice Customization**
- As a blogger, I want the author agent to reflect my name and voice automatically
- Acceptance:
  - Derek Neighbors agent persona uses configured `author_name`
  - Voice characteristics referenced from `content_focus` pillars
  - Authenticity maintained across all workflows
- Points: 3

**Story 26: Cadence-Based Calendar Recommendations**
- As a blogger, I want content calendar suggestions to match my publishing frequency
- Acceptance:
  - Daily: Focus on efficiency, batch creation, repurposing
  - 3x/week: Balance depth and consistency
  - Weekly: Deep dives, comprehensive research
  - Orion and Derek adjust planning based on `publishing_cadence`
- Points: 3

**Story 27: SEO Priority Slider**
- As a blogger, I want SEO optimization to match my authenticity vs. discoverability preference
- Acceptance:
  - High SEO: Keyword-first, structured formatting, meta optimization
  - Balanced: Natural integration, reader-first with SEO layer
  - Reader-first: Authentic voice priority, light SEO enhancement
  - Olivia Search (SEO) adjusts based on `seo_priority` setting
- Points: 3

---

## Technical Approach

### Phase 1: Template Engine Enhancement
- Add conditional logic support to agent persona templates
- Support variable interpolation: `{config:company_industry}`
- Enable if/else blocks: `{{#if marketing_maturity equals "Startup"}}...{{/if}}`

### Phase 2: Agent Persona Adaptation
- Refactor agent `.agent.yaml` personas to use conditional blocks
- Create industry-specific example libraries
- Build maturity-level complexity filters

### Phase 3: Workflow Configuration
- Add config-based default value population
- Filter workflow options based on user context
- Pre-select channels/platforms based on audience type

### Phase 4: Resource Libraries
- Create industry-specific framework libraries
- Build EHR-vendor integration guides
- Develop specialty-specific clinical examples

---

## Dependencies

- **BMAD Core:** Template engine with conditional logic support
- **Config System:** Reliable config loading in agent activation
- **Story 16/17:** BMB-format agents with proper activation blocks

---

## Risks & Mitigations

**Risk:** Over-personalization reduces agent flexibility
- **Mitigation:** Keep base agent knowledge broad, layer context on top
- **Fallback:** Users can always override with explicit prompts

**Risk:** Configuration becomes too complex
- **Mitigation:** Sensible defaults for all questions, optional skip
- **Progressive disclosure:** Start simple, add depth over time

**Risk:** Template logic makes agents harder to maintain
- **Mitigation:** Clear documentation, linting for conditional blocks
- **Testing:** Automated tests for each config combination

---

## Future Enhancements (Beyond Epic 05)

- **Learning from Usage:** Agents learn preferred channels/tactics from past interactions
- **Dynamic Agent Assembly:** Only activate agents matching user's focus areas
- **Cross-Pack Context:** Medical pack aware of marketing pack's target audience
- **A/B Testing:** Test config-driven recommendations vs. generic

---

## Acceptance Criteria

- [ ] All expansion packs support conditional disclaimer display
- [ ] Marketing pack adapts language to industry (3+ industries tested)
- [ ] Marketing pack filters channels by audience type (B2B vs B2C)
- [ ] Marketing pack adjusts complexity by maturity level (4 levels)
- [ ] Medical pack references specialty in clinical examples
- [ ] Medical pack provides EHR-specific integration guidance
- [ ] Medical pack adjusts audit rigor by compliance mode
- [ ] Blog pack uses configured author name in persona
- [ ] Blog pack adjusts calendar planning by cadence
- [ ] Blog pack adapts SEO optimization by priority setting
- [ ] Documentation updated with "how adaptation works"
- [ ] User testing validates improved relevance (80%+ satisfaction)

---

## Out of Scope (Not in Epic 05)

- AI-powered learning from user's past content
- Cross-pack context sharing (e.g., marketing knows medical's EHR)
- Dynamic agent roster based on selections
- Real-time config updates without reinstall
- Multi-tenant config (teams with different contexts)

---

**Epic Owner:** TBD  
**Target Release:** Post-MVP (Sprint 05-08 timeframe)

