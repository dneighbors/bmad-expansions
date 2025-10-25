# Story 13: Scaffold Marketing Pack via BMB

**Epic:** E2 — Authoring with BMAD Builder (BMB)  
**Epic Reference:** [docs/epics/02-authoring-with-bmb.md](../epics/02-authoring-with-bmb.md)  
**Priority:** P0 (Critical Path)  
**Story Points:** 15  
**Assigned:** Developer  
**Status:** ✅ DISCOVERY COMPLETE — Ready for Implementation

---

## User Story

As an author, I want the complete `marketing` pack for resource-constrained teams (CMOs, growth leads, small product teams) with 31 agents and 15 workflows so they can access a full AI marketing department.

---

## Discovery Reference

See completed discovery session: `docs/discovery/marketing-pack-discovery.md`

**Target Users:** CMOs, Growth Leads, Small Product Teams without in-house marketing experts

**Pain Points Solved:**
1. **Strategy** — No clear marketing roadmap or positioning
2. **Execution** — Can't afford full-time specialists for every channel/discipline
3. **Understanding** — Lack of analytics and insights to guide decisions
4. **Consistency** — Fragmented messaging and brand confusion
5. **Speed** — Resource constraints slow campaign velocity

---

## Acceptance Criteria

### 1. Create 31 Agent YAML Files

Use BMB `*create-agent` workflow to create each agent in `marketing/agents/`:

#### Strategic Layer (4 agents)

1. **victoria-chen-cmo.agent.yaml** — CMO / Marketing Strategist
   - Role: Chief Marketing Officer
   - Expertise: Marketing strategy, budget allocation, OKR setting, team orchestration
   - Communication style: Executive-level, strategic, ROI-focused

2. **marcus-brand-strategist.agent.yaml** — Brand Strategist
   - Role: Brand positioning expert
   - Expertise: Brand identity, voice/tone, messaging framework, competitive positioning
   - Communication style: Creative yet analytical, guardian of brand integrity

3. **sarah-editorial-content-strategist.agent.yaml** — Content Strategist
   - Role: Content planning and strategy lead
   - Expertise: Content pillars, editorial calendars, audience segmentation, SEO content strategy
   - Communication style: Organized, data-informed, audience-focused

4. **alex-social-strategist.agent.yaml** — Social Media Strategist
   - Role: Social strategy architect
   - Expertise: Platform mix optimization, community building, social listening, trend analysis
   - Communication style: Trend-savvy, community-focused, adaptive

#### Content Creation (5 agents)

5. **emma-words-copywriter.agent.yaml** — Copywriter
   - Role: Long-form content creator
   - Expertise: Blog posts, landing pages, email campaigns, white papers, case studies
   - Communication style: Persuasive, storytelling-driven, conversion-focused

6. **james-edit-content-editor.agent.yaml** — Content Editor
   - Role: Quality control and style guardian
   - Expertise: Proofreading, style guide enforcement, content polishing, AP/Chicago style
   - Communication style: Detail-oriented, diplomatic, excellence-focused

7. **olivia-search-seo.agent.yaml** — SEO Specialist
   - Role: Search visibility expert
   - Expertise: Keyword research, on-page SEO, technical SEO, AI discoverability (SearchGPT, Perplexity, Claude)
   - Communication style: Data-driven, technical, algorithm-aware

8. **ryan-video-creator.agent.yaml** — Video Content Creator
   - Role: Video marketing specialist
   - Expertise: YouTube scripts, video marketing strategy, thumbnails, audience retention
   - Communication style: Visual storyteller, engagement-focused

9. **maya-visuals-designer.agent.yaml** — Visual Content Designer
   - Role: Graphics and infographics specialist
   - Expertise: Social graphics, infographics, visual storytelling, brand consistency
   - Communication style: Creative, brand-aligned, platform-optimized

#### Platform Specialists (6 agents)

10. **zoe-tiktok-specialist.agent.yaml** — TikTok Specialist
11. **tyler-x-specialist.agent.yaml** — X (Twitter) Specialist
12. **jessica-youtube-specialist.agent.yaml** — YouTube Specialist
13. **david-facebook-specialist.agent.yaml** — Facebook Specialist
14. **sophia-instagram-specialist.agent.yaml** — Instagram Specialist
15. **michael-linkedin-specialist.agent.yaml** — LinkedIn Specialist

#### Performance Marketing (4 agents)

16. **rachel-ads-ppc.agent.yaml** — PPC Expert
17. **chris-convert-cro.agent.yaml** — Conversion Rate Optimization (CRO) Specialist
18. **nina-affiliate-expert.agent.yaml** — Affiliate Marketing Expert
19. **jordan-influence-specialist.agent.yaml** — Influencer Marketing Specialist

#### Growth & Analytics (5 agents)

20. **leo-growth-hacker.agent.yaml** — Growth Hacker
21. **priya-analytics-expert.agent.yaml** — Marketing Analytics Expert
22. **daniel-insights-analyst.agent.yaml** — Customer Insights Analyst
23. **laura-email-specialist.agent.yaml** — Email Marketing Specialist
24. **kevin-martech-automation.agent.yaml** — Marketing Automation Expert

#### PR & Partnerships (3 agents)

25. **amanda-press-pr.agent.yaml** — PR / Media Relations Specialist
26. **brian-partners-comarketing.agent.yaml** — Partnerships / Co-Marketing Lead
27. **natalie-product-marketing.agent.yaml** — Product Marketing Manager

#### Field & Community (4 agents)

28. **carlos-events-specialist.agent.yaml** — Event Marketing Specialist
29. **riley-street-guerrilla.agent.yaml** — Street Team / Guerrilla Marketing Specialist
30. **taylor-community-manager.agent.yaml** — Community Manager
31. **samantha-demand-gen.agent.yaml** — Demand Generation Lead

**All agents must include:**
- Target user context (CMOs, growth leads, small teams)
- Communication style matching their discipline
- Menu with workflows they support
- Marketing disclaimer (AI-generated, human review recommended)

---

### 2. Create 15 Workflow Folders

Use BMB `*create-workflow` to create each workflow in `marketing/workflows/`:

#### Strategic Workflows (3)

1. **marketing-strategy/** — Develop annual/quarterly marketing strategy (🔥 PRIORITY)
   - Team: Victoria Chen (CMO), Marcus Brand, Sarah Editorial, Priya Analytics
   - Input: Business goals, budget, market analysis
   - Output: Marketing strategy document with OKRs, channel mix, budget allocation

2. **brand-guidelines/** — Create comprehensive brand book
   - Team: Marcus Brand, Maya Visuals
   - Input: Brand positioning, values, target audience
   - Output: Brand guidelines (voice, tone, visual identity, usage rules)

3. **competitive-analysis/** — Market and competitor positioning
   - Team: Marcus Brand, Priya Analytics, Natalie Product
   - Input: Competitor list, market segment
   - Output: Competitive analysis report with positioning recommendations

#### Content Workflows (4)

4. **content-calendar/** — Plan editorial calendar
   - Team: Sarah Editorial, Olivia Search, Emma Words
   - Input: Content pillars, publishing frequency, audience segments
   - Output: 90-day editorial calendar with topics, keywords, channels

5. **blog-post/** — Create SEO-optimized blog post
   - Team: Emma Words, Olivia Search, James Edit, Maya Visuals
   - Input: Topic, target keyword, word count
   - Output: Published-ready blog post with meta, images, CTAs

6. **social-campaign/** — Plan multi-platform social campaign (🔥 PRIORITY)
   - Team: Alex Social, platform specialists (Zoe, Tyler, Jessica, David, Sophia, Michael)
   - Input: Campaign objective, budget, timeline
   - Output: Platform-specific content calendar with assets

7. **video-script/** — YouTube/TikTok video scripting
   - Team: Ryan Video, Emma Words, Zoe TikTok (for short-form)
   - Input: Video topic, platform, target length
   - Output: Script with hooks, B-roll notes, CTA

#### Performance Workflows (4)

8. **ppc-campaign/** — Launch paid advertising campaign (🔥 PRIORITY)
   - Team: Rachel Ads, Chris Convert, Priya Analytics
   - Input: Campaign objective, budget, target audience
   - Output: Campaign setup (ads, targeting, tracking) + optimization plan

9. **conversion-audit/** — CRO analysis and recommendations
   - Team: Chris Convert, Priya Analytics
   - Input: Landing page URL, funnel data
   - Output: CRO audit report with prioritized test roadmap

10. **influencer-campaign/** — Creator partnership workflow
    - Team: Jordan Influence, Alex Social, Priya Analytics
    - Input: Campaign goals, budget, target audience
    - Output: Influencer list, campaign briefs, contracts, tracking plan

11. **email-campaign/** — Design and execute email campaign
    - Team: Laura Email, Emma Words, Maya Visuals, Priya Analytics
    - Input: Campaign goal, audience segment, timeline
    - Output: Email sequence with copy, design, automation rules

#### Analytics Workflows (2)

12. **performance-report/** — Generate marketing dashboard
    - Team: Priya Analytics, Victoria Chen
    - Input: Reporting period, KPIs, channel data
    - Output: Executive dashboard with insights and recommendations

13. **attribution-analysis/** — Multi-touch attribution modeling
    - Team: Priya Analytics, Rachel Ads, Samantha Demand
    - Input: Conversion data, touchpoint data, attribution model
    - Output: Attribution report showing channel contribution

#### Launch & Growth Workflows (2)

14. **product-launch/** — Go-to-market campaign
    - Team: Natalie Product, Victoria Chen, Sarah Editorial, Rachel Ads, Amanda Press
    - Input: Product details, launch date, target audience
    - Output: Launch plan with messaging, channels, timeline, assets

15. **growth-experiment/** — Design and execute growth test
    - Team: Leo Growth, Chris Convert, Priya Analytics
    - Input: Growth hypothesis, success metrics
    - Output: Experiment plan, implementation guide, tracking setup

**Each workflow must include:**
- `workflow.yaml` with config (name, description, team agents, inputs, outputs)
- `instructions.md` with step-by-step execution logic
- `README.md` with usage examples
- `checklist.md` (validation criteria)

---

### 3. Update Marketing Pack README

Create compelling `marketing/README.md` that includes:
- Pack purpose and value proposition (AI marketing department for small teams)
- Target users (CMOs, growth leads, product teams)
- Agent roster organized by layer (Strategic, Content, Platform, Performance, etc.) with 1-sentence descriptions
- Workflow catalog with triggers and use cases
- Installation instructions
- Usage examples (how to invoke agents/workflows)
- Marketing disclaimer (AI-generated content, human review recommended)
- Dependencies (bmm, bmb)

**Tone:** Professional, strategic, emphasizes comprehensive marketing ops replacement

---

### 4. Validate Installer Config

Ensure `marketing/_module-installer/install-config.yaml` includes:
- `code: marketing`
- `name: "Marketing Pack"`
- `description: "Complete AI marketing department with 31 specialist agents"`
- `version: "0.1.0"`
- `dependencies: [bmm, bmb]`

---

### 5. Test Priority Workflows

Manually test these workflows end-to-end:
1. `*marketing-strategy` — Create annual strategy for sample company
2. `*social-campaign` — Plan multi-platform campaign (tests multi-agent coordination)
3. `*ppc-campaign` — Launch sample paid campaign (tests performance marketing)

Verify:
- Workflows load without errors
- Agents activate correctly with appropriate expertise
- Multi-agent coordination works smoothly
- Outputs match expected format
- Marketing disclaimers are present

---

## Technical Notes

- Use BMB workflows (`*create-agent`, `*create-workflow`) — do NOT manually code YAML/instructions
- Agent YAMLs compile to `.md` during installation in target projects
- All marketing content must include disclaimer: "AI-generated content, human review recommended for brand-critical materials"
- Platform API references (TikTok, X, LinkedIn) should note APIs may change
- Module dependencies: `bmm`, `bmb`

---

## Definition of Done

- [ ] 31 agent YAML files created in `marketing/agents/`
- [ ] 15 workflow folders created in `marketing/workflows/`
- [ ] `marketing/README.md` updated (comprehensive, compelling)
- [ ] Installer config validated
- [ ] `*marketing-strategy` tested successfully
- [ ] `*social-campaign` tested successfully
- [ ] `*ppc-campaign` tested successfully
- [ ] All files committed to `main`
- [ ] Discovery doc reference added to README

---

## Resources

- Discovery doc: `docs/discovery/marketing-pack-discovery.md`
- BMB agent creation: Use `*create-agent` workflow
- BMB workflow creation: Use `*create-workflow` workflow
- EXPANSIONS-SETUP.md: Authoring guidance

---

_Story updated by Bob (SM) and John (PM) on 2025-10-24_
