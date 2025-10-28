# BMAD Expansions

**Personal collection of expansion packs for the [BMAD Method](https://github.com/joshuacook/BMAD-METHOD)** — Pre-built AI agent teams and workflows for specialized domains.

> 🚧 **Container Repository:** This repo currently serves as a personal staging and distribution mechanism for BMAD expansion packs. It demonstrates how to build, organize, and distribute custom BMAD modules until formal package distribution is implemented in BMAD Core.

---

## 🎯 What Are Expansion Packs?

Expansion packs extend BMAD with **ready-to-use AI agent teams and workflows** for specific domains:

- **No setup required** — Agents come pre-configured with personas, expertise, and workflows
- **Production-ready** — Built using BMAD Builder (BMB) with proper `.agent.yaml` format
- **Domain-specialized** — Each pack brings expert agents for a specific field (marketing, medical, blogging, etc.)
- **Interactive installation** — Configure each pack for your specific needs during install

**Think of them as:** Pre-built teams of AI specialists that integrate directly into your BMAD-powered projects.

---

## 📦 Available Packs

### Marketing Pack (v1.0)
**31 AI marketing specialists** across strategy, content, performance, social media, PR, and analytics.

<details>
<summary><b>📋 View All 31 Agents</b></summary>

#### Strategic Layer (4 agents)
- 👩‍💼 **Victoria Chen** — Chief Marketing Officer
- 🎨 **Marcus Brand** — Brand Strategist  
- 📋 **Sarah Editorial** — Content Strategist
- 📱 **Alex Social** — Social Media Strategist

#### Content Creation (5 agents)
- ✍️ **Emma Words** — Copywriter
- 🔍 **James Edit** — Content Editor
- 🔎 **Olivia Search** — SEO Specialist
- 🎥 **Ryan Video** — Video Creator
- 🎨 **Maya Visuals** — Visual Designer

#### Platform Specialists (6 agents)
- 🎵 **Zoe TikTok** — TikTok Specialist
- 🐦 **Tyler X** — X/Twitter Specialist
- 📺 **Jessica YouTube** — YouTube Specialist
- 📘 **David Facebook** — Facebook Specialist
- 📸 **Sophia Instagram** — Instagram Specialist
- 💼 **Michael LinkedIn** — LinkedIn Specialist

#### Performance Marketing (4 agents)
- 💰 **Rachel Ads** — PPC/Ads Specialist
- 📊 **Chris Convert** — Conversion/CRO Specialist
- 🤝 **Nina Affiliate** — Affiliate Marketing Expert
- 🌟 **Jordan Influence** — Influencer Marketing Specialist

#### Growth & Analytics (5 agents)
- 🚀 **Leo Growth** — Growth Hacker
- 📈 **Priya Analytics** — Analytics Expert
- 🔬 **Daniel Insights** — Insights Analyst
- 📧 **Laura Email** — Email Marketing Specialist
- ⚙️ **Kevin Martech** — MarTech/Automation Specialist

#### PR & Partnerships (3 agents)
- 📰 **Amanda Press** — PR Specialist
- 🤝 **Brian Partners** — Co-Marketing/Partnerships
- 📦 **Natalie Product** — Product Marketing

#### Field & Community (4 agents)
- 🎪 **Carlos Events** — Events Specialist
- 🎨 **Riley Street** — Guerrilla Marketing
- 👥 **Taylor Community** — Community Manager
- 📈 **Samantha Demand** — Demand Generation

</details>

<details>
<summary><b>🔄 View All 15 Workflows</b> (configs only - instructions coming in Sprint 02)</summary>

#### Strategic (3 workflows)
- `*marketing-strategy` — Develop annual/quarterly marketing strategy
- `*brand-guidelines` — Create comprehensive brand guidelines
- `*competitive-analysis` — Analyze market and competitors

#### Content (4 workflows)
- `*content-calendar` — Plan 90-day editorial calendar
- `*blog-post` — Create SEO-optimized blog posts
- `*social-campaign` — Plan multi-platform social campaigns
- `*video-script` — Write YouTube/TikTok video scripts

#### Performance (4 workflows)
- `*ppc-campaign` — Launch paid advertising campaigns
- `*conversion-audit` — Analyze conversion funnel and create CRO roadmap
- `*influencer-campaign` — Plan creator partnership campaigns
- `*email-campaign` — Design and execute email campaigns

#### Analytics (2 workflows)
- `*performance-report` — Generate executive marketing dashboard
- `*attribution-analysis` — Perform multi-touch attribution modeling

#### Launch & Growth (2 workflows)
- `*product-launch` — Plan go-to-market campaign
- `*growth-experiment` — Design and execute growth experiments

</details>

**Configuration:** 7 interactive fields (industry, focus areas, audience, maturity, disclaimers)

[📖 Marketing Pack Documentation](marketing/README.md)

---

### Medical Pack (v1.0)
**9 healthcare AI specialists** for clinical validation, compliance, training, and health IT.

<details>
<summary><b>📋 View All 9 Agents</b></summary>

#### Clinical Staff (3 agents)
- 👨‍⚕️ **Dr. Michael Johnson** — Medical Director
- 👩‍⚕️ **Nurse Brittany Hinsley** — Patient Care Specialist
- 🚑 **Ashley Rutledge** — Paramedic Specialist

#### Medical Specialists (3 agents)
- 💊 **Dr. Alex Kim** — Pharmacist (Medication Safety)
- 📝 **Maya Patel** — Medical Writer (Patient Education)
- 🎓 **Dr. James Carter** — Medical Educator (Training & Curriculum)

#### Compliance & Health IT (3 agents)
- 🔒 **Lisa Chang** — Privacy & Security Officer (HIPAA Compliance)
- 🏥 **Marcus Thompson** — EHR Integration Specialist (Health IT)
- 💰 **Rachel Johnson** — Medical Billing Expert (Revenue Cycle)

</details>

<details>
<summary><b>🔄 View All 8 Workflows</b> (configs only - instructions coming in Sprint 02)</summary>

- `*clinical-review` — Multi-agent clinical review for safety and accuracy
- `*patient-content` — Create patient-facing education materials
- `*ehr-integration-plan` — Design EHR integration architecture
- `*drug-safety-check` — Review medication features for safety
- `*hipaa-audit` — Conduct HIPAA compliance review
- `*provider-training` — Create medical training curriculum
- `*billing-workflow` — Design billing and documentation workflows
- `*marketing-collab` — Create medically accurate marketing content

</details>

**Configuration:** 6 interactive fields (specialty, HIPAA mode, disclaimers, validation level, EHR system)

[📖 Medical Pack Documentation](medical/README.md)

---

### Blog Pack (v1.0)
**2 AI content specialists** for daily blogging and content operations (Derek Neighbors' system).

<details>
<summary><b>📋 View Both Agents</b></summary>

- ✍️ **Derek Neighbors** — Blog Author (customizable to your voice and brand)
- 🎯 **Orion** — Blog Orchestrator (workflow coordination and quality control)

</details>

<details>
<summary><b>🔄 View All 15 Workflows</b> (configs only - instructions coming in Sprint 02)</summary>

#### Daily Content (4 workflows)
- `*daily-content-system` — Master workflow for daily blog post creation
- `*blog-post-creation` — Single blog post from concept to publish-ready
- `*content-calendar-planning` — Plan 30-90 day content calendar
- `*series-planning` — Plan multi-part content series

#### Social Distribution (4 workflows)
- `*social-media-generation` — Create all social content from blog post
- `*linkedin-response-formula` — Generate brand-aligned LinkedIn responses
- `*cover-image-prompt` — Generate visual prompt for blog cover image
- `*utm-tracking-setup` — Generate UTM-tracked links for distribution

#### SEO & Quality (3 workflows)
- `*seo-optimization` — Optimize blog post for search and AI discovery
- `*content-review` — Quality check against brand voice and standards
- `*internal-linking-strategy` — Add strategic internal links

#### Analytics & Growth (4 workflows)
- `*content-performance-report` — Analyze blog and social metrics
- `*content-refresh` — Update and optimize existing posts
- `*content-repurposing` — Turn blog post into multi-platform content
- `*idea-generation` — Generate blog post ideas and content bank snippets

</details>

**Configuration:** 6 interactive fields (author name, content focus, cadence, SEO priority, social automation)

[📖 Blog Pack Documentation](blog/README.md)

---

## 🚀 Quick Start

### Prerequisites

- **BMAD v6-alpha** installed ([BMAD-METHOD](https://github.com/joshuacook/BMAD-METHOD))
- **Node.js** and npm installed
- **Cursor IDE** (for agent usage)
- **rsync** available on your system

### Installation Steps

**1. Clone this repository**
```bash
# Clone as sibling to BMAD-METHOD (recommended structure)
cd /path/to/repos/
git clone https://github.com/dneighbors/bmad-expansions.git

# Your directory structure:
# /path/to/repos/
# ├── bmad-expansions/  (this repo)
# └── BMAD-METHOD/      (BMAD v6-alpha)
```

**2. Sync packs to BMAD-METHOD**
```bash
cd bmad-expansions
./scripts/sync-packs.sh

# Interactive prompts:
# - Confirm BMAD-METHOD path (defaults to sibling directory)
# - Review packs to sync (medical, marketing, blog)
# - Confirm sync operation
```

**3. Rebuild BMAD to discover new modules**
```bash
cd ../BMAD-METHOD
npm install
```

**4. Install packs in your project**
```bash
cd /path/to/your-cursor-project
npm run install:bmad

# Interactive installer:
# - Select expansion packs to install (medical, marketing, blog)
# - Answer configuration questions for each pack
# - Agents and workflows install to .cursor/rules/
```

**5. Use agents in Cursor**
```
@victoria-chen-cmo
How should I structure my Q1 marketing strategy?

@dr-michael-johnson
Can you review this patient education content for accuracy?

@derek-neighbors-author
Help me brainstorm blog topics for this month.
```

---

## 📚 Documentation

### For Users
- [Installation & Testing Guide](docs/TESTING-SPRINT-01.md) — Complete installation walkthrough
- [Project Plan](docs/plan.md) — Project overview and roadmap
- [Workflow Status](docs/workflow-status.md) — Sprint progress and deliverables

### For Contributors
- [Contributing Guide](CONTRIBUTING.md) — BMB-first policy and authoring guidelines
- [Expansion Pack Setup](EXPANSIONS-SETUP.md) — Repository structure and conventions
- [Discovery Sessions](docs/discovery/) — Pack requirements and design decisions
- [Stories & Epics](docs/stories/) — Detailed story documentation

---

## 🛠️ Contributing

**We follow a BMB-first policy:** All agents and workflows must be created using BMAD Builder workflows.

### Quick Contribution Guide

**To create a new expansion pack:**

1. **Run BMB `*create-module` workflow** to scaffold the pack
2. **Create agents** using `*create-agent` workflow (produces `.agent.yaml` files)
3. **Create workflows** using `*create-workflow` workflow
4. **Configure installer** in `_module-installer/install-config.yaml`
5. **Document in README.md** with agent roster and workflow list
6. **Test end-to-end** via sync script and installation

**Critical Requirements:**
- ✅ Use BMB workflows (no manual file creation)
- ✅ Agents must be `.agent.yaml` format (not `.md`)
- ✅ Workflows need 4 files: `workflow.yaml`, `instructions.md`, `checklist.md`, `README.md`
- ✅ Rich configuration (5-8 interactive installer fields)
- ✅ Complete documentation

**See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines.**

---

## 📊 Current Status

**Sprint 01: ✅ COMPLETE**
- 3 production packs delivered
- 42 agents (100% functional)
- 38 workflow configs (instructions coming in Sprint 02)
- Interactive sync script
- BMB-first policy established

**Known Gaps:**
- ⚠️ Workflows missing instructions/checklists (Story 28 for Sprint 02)
- Impact: Agents work perfectly; workflows non-functional until Sprint 02

**Sprint 02 Priority:**
- Complete workflow files (instructions, checklists, READMEs)
- End-to-end workflow testing
- BMB documentation

[📈 View Detailed Status](docs/workflow-status.md)

---

## 🏗️ Repository Structure

```
bmad-expansions/
├── medical/                    # Medical Pack
│   ├── agents/                 # 9 healthcare specialists (.agent.yaml)
│   ├── workflows/              # 8 clinical workflows (configs only)
│   ├── _module-installer/      # Interactive installer config
│   └── README.md
│
├── marketing/                  # Marketing Pack
│   ├── agents/                 # 31 marketing specialists (.agent.yaml)
│   ├── workflows/              # 15 marketing workflows (configs only)
│   ├── _module-installer/      # Interactive installer config
│   └── README.md
│
├── blog/                       # Blog Pack
│   ├── agents/                 # 2 content specialists (.agent.yaml)
│   ├── workflows/              # 15 blogging workflows (configs only)
│   ├── _module-installer/      # Interactive installer config
│   └── README.md
│
├── scripts/
│   └── sync-packs.sh          # Interactive sync to BMAD-METHOD
│
├── docs/
│   ├── discovery/             # Pack requirements and design
│   ├── epics/                 # Epic definitions
│   ├── stories/               # Story documentation
│   ├── sprints/               # Sprint plans
│   ├── plan.md                # Project plan
│   └── workflow-status.md     # Progress tracking
│
├── CONTRIBUTING.md            # BMB-first contribution guidelines
├── EXPANSIONS-SETUP.md        # Repository conventions
└── README.md                  # This file
```

---

## 🎓 Learning Resources

### Understanding BMAD Expansions
- [What is BMAD?](https://github.com/joshuacook/BMAD-METHOD) — Base framework for AI-powered development
- [BMAD Builder (BMB)](docs/epics/02-authoring-with-bmb.md) — Tool for creating agents and workflows
- [Epic 05: Context-Aware Adaptation](docs/epics/05-context-aware-adaptation.md) — Future roadmap for intelligent configuration

### Pack Deep Dives
- [Marketing Pack Discovery](docs/discovery/marketing-pack-discovery.md) — Design decisions and agent roster
- [Medical Pack Discovery](docs/discovery/medical-pack-discovery.md) — Healthcare AI requirements
- [Blog Pack Discovery](docs/discovery/blog-pack-discovery.md) — Content operations system

---

## 🤝 Support & Community

**Found a bug?** Open an issue with:
- Pack name and version
- Installation steps taken
- Expected vs actual behavior
- BMAD version

**Want a new pack?** Start a discussion:
- Describe the domain/use case
- List desired agent types
- Outline key workflows

**Contributing?** Read [CONTRIBUTING.md](CONTRIBUTING.md) first!

---

## 📜 License

MIT License - See [LICENSE](LICENSE) for details.

---

## 🙏 Acknowledgments

- **BMAD Method** by [Joshua Cook](https://github.com/joshuacook) — The foundation making this all possible
- **BMAD Builder (BMB)** — Authoring workflows that ensure quality and consistency
- **Contributors** — Everyone helping expand BMAD's capabilities

---

**Built with BMAD Builder • Following BMB-First Standards • Sprint 01 Complete**
