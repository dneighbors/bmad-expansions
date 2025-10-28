# Marketing Pack (BMB Generated)

**Version:** 1.0.0  
**Author:** Derek Neighbors  
**Created:** 2025-10-26  
**Method:** BMB Workflows

---

## Overview

Complete AI marketing department with 31 specialists across strategy, content, performance, social media, PR, and analytics. Perfect for small teams and startups that need enterprise-level marketing expertise.

**Created using BMAD Builder (BMB) workflows** to demonstrate proper module structure.

---

## Installation

```bash
bmad install marketing
```

**Configuration Options:**
- Marketing output path
- Company industry (SaaS, E-Commerce, Healthcare, etc.)
- Marketing focus areas (demand-gen, content, social, performance)
- Target audience (B2B, B2C, B2B2C, D2C)
- Marketing maturity level
- Marketing disclaimer mode

---

## Team (31 Specialists)

### Strategic Layer (4)
- **Victoria Chen** - CMO 👩‍💼 ✅ Created
- Marcus Rodriguez - Brand Strategist 🎨
- Sarah Mills - Content Strategist 📋
- Alex Park - Social Media Strategist 📱

### Content Creation (5)
- Emma Wilson - Copywriter ✍️
- James Harper - Content Editor 🔍
- Olivia Santos - SEO Specialist 🔎
- Ryan Mitchell - Video Creator 🎥
- Maya Foster - Visual Designer 🎨

### Platform Specialists (6)
- Zoe Nguyen - TikTok Specialist 🎵
- Tyler Brooks - X/Twitter Specialist 🐦
- Jessica Lee - YouTube Specialist ▶️
- David Kumar - Facebook Specialist 👍
- Sophia Martinez - Instagram Specialist 📸
- Michael Anderson - LinkedIn Specialist 💼

### Performance Marketing (4)
- **Rachel Cooper** - PPC Expert 💰 ✅ Created
- Chris Wallace - CRO Specialist 📈
- Nina Patel - Affiliate Marketing 🤝
- Jordan Hayes - Influencer Marketing ⭐

### Growth & Analytics (5)
- Leo Chen - Growth Hacker 🚀
- Priya Sharma - Analytics Expert 📊
- Daniel Torres - Customer Insights 🔍
- Laura Kim - Email Marketing 📧
- Kevin Brown - Marketing Automation ⚙️

### PR & Partnerships (3)
- Amanda Collins - PR Specialist 📰
- Brian Thompson - Partnerships Lead 🤝
- Natalie Rivera - Product Marketing 📦

### Field & Community (4)
- Carlos Mendez - Event Marketing 🎪
- Riley Morgan - Guerrilla Marketing 🎯
- Taylor Reed - Community Manager 💬
- Samantha Wright - Demand Generation 🎯

---

## Workflows (15 Total)

### Strategic (3)
1. **`*marketing-strategy`** ✅ Created - Develop annual/quarterly strategy
2. `*brand-guidelines` - Create comprehensive brand book
3. `*competitive-analysis` - Market and competitor analysis

### Content (4)
4. `*content-calendar` - Plan editorial calendar
5. `*blog-post` - Create SEO-optimized content
6. `*social-campaign` - Plan multi-platform campaigns
7. `*video-script` - YouTube/TikTok video scripting

### Performance (3)
8. `*ppc-campaign` - Launch paid advertising
9. `*landing-page` - Design high-converting pages
10. `*email-campaign` - Plan email marketing

### PR & Partnerships (2)
11. `*press-release` - Write press releases
12. `*partnership-outreach` - Plan partnerships

### Field & Analytics (3)
13. `*event-plan` - Plan event marketing
14. `*guerrilla-campaign` - Plan guerrilla marketing
15. `*analyst-report` - Generate analytics insights

---

## Quick Start

```
@victoria-chen-cmo
*marketing-strategy

# Follow prompts for strategy development
```

---

## Module Structure (BMB Standard)

```
marketing/
├── agents/                          # .agent.yaml source files
│   ├── victoria-chen-cmo.agent.yaml     ✅
│   ├── rachel-ads-ppc.agent.yaml        ✅
│   └── [29 more agents to be created]
├── workflows/
│   ├── marketing-strategy/              ✅
│   │   └── workflow.yaml
│   └── [14 more workflows to be created]
├── _module-installer/
│   └── install-config.yaml              ✅
└── README.md                            ✅
```

---

## Configuration

### Installation Questions

During installation, you'll answer 7 questions that capture your marketing context:

1. **Output Location** - Where to save marketing strategies, campaigns, and content
2. **Industry** - Your company's industry/vertical (SaaS, E-Commerce, Healthcare, FinTech, etc.)
3. **Marketing Focus Areas** - Primary focus areas (select multiple):
   - Brand Awareness
   - Demand Generation / Lead Gen
   - Content Marketing
   - Social Media Growth
   - Performance Marketing / Paid Ads
   - Product Marketing
   - Community Building
4. **Target Audience** - B2B, B2C, B2B2C, or D2C
5. **Marketing Maturity** - Current stage:
   - Startup - Building from scratch
   - Growing - Have basics, need to scale
   - Established - Optimizing and scaling
   - Enterprise - Complex, multi-channel
6. **Disclaimer Mode** - Whether to include marketing best practice disclaimers

### How Configuration Works (v1.0)

**✅ Currently Active:**
- Configuration values saved to `bmad/marketing/config.yaml` in your project
- All agents load your industry, audience, and focus context during activation
- Workflows use `marketing_output_path` to organize all generated content
- You can reference context in prompts: *"Given my B2B SaaS focus, recommend..."*

**⏳ Planned Enhancements (See Epic 05):**
- Agents adapt language/examples to your industry automatically
- Focus areas prioritize and filter agent recommendations
- Maturity level adjusts complexity of recommendations
- Target audience changes default channel/tactic suggestions
- Disclaimers toggle on/off based on user preference
- Agent personas reference your specific context

**Current Workaround:**  
In v1.0, agents have access to your configuration but don't yet automatically adapt. You can explicitly reference your context:
- *"As a B2B SaaS company in growth stage, what demand gen tactics should I prioritize?"*
- *"Given my focus on content marketing and social media, create a strategy..."*

See **[Epic 05: Context-Aware Adaptation](../docs/epics/05-context-aware-adaptation.md)** for planned adaptive behavior.

---

## Differences from Script-Generated Marketing Pack

| Aspect | Script | BMB |
|--------|--------|-----|
| **Config Fields** | 1 basic | 7 interactive |
| **Agent Format** | `.md` | `.agent.yaml` |
| **Team Logic** | Static | Conditional based on inputs |
| **Resources** | None | Frameworks, benchmarks, templates |
| **Documentation** | Basic | Industry-specific examples |

---

## Pack Status

**✅ COMPLETE (v1.0):**
- All 31 agents created in proper BMB `.agent.yaml` format
- All 15 workflows created with complete `workflow.yaml` configuration
- Rich 7-field installer configuration
- Agents have access to user context (industry, focus, audience, maturity)

**⏳ FUTURE (See Epic 05):**
- Automatic agent adaptation based on configuration
- Conditional disclaimer display
- Industry-specific examples and frameworks
- Maturity-based recommendation filtering

---

**Marketing Disclaimer:** All marketing campaigns and content should be reviewed by qualified professionals and comply with regional advertising regulations.

