# BMAD Expansions

**Curated expansion packs for the [BMAD Method](https://github.com/joshuacook/BMAD-METHOD)** — Pre-built AI agent teams and workflows for specialized domains.

> 🚧 **Container Repository:** This repo currently serves as a staging and distribution mechanism for BMAD expansion packs until formal package distribution is implemented in BMAD Core. Think of it as the "npm registry" for BMAD modules.

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

**Agents:**
- Strategic Layer: Victoria Chen (CMO), Marcus Brand, Sarah Editorial, Alex Social
- Content Creation: Emma Words, James Edit, Olivia Search, Ryan Video, Maya Visuals
- Platform Specialists: Zoe TikTok, Tyler X, Jessica YouTube, David Facebook, Sophia Instagram, Michael LinkedIn
- Performance: Rachel Ads, Chris Convert, Nina Affiliate, Jordan Influence
- Growth & Analytics: Leo Growth, Priya Analytics, Daniel Insights, Laura Email, Kevin Martech
- PR & Partnerships: Amanda Press, Brian Partners, Natalie Product
- Field & Community: Carlos Events, Riley Street, Taylor Community, Samantha Demand

**Workflows:** 15 workflows (configs only - instructions coming in Sprint 02)
- Strategic: marketing-strategy, brand-guidelines, competitive-analysis
- Content: content-calendar, blog-post, social-campaign, video-script
- Performance: ppc-campaign, conversion-audit, influencer-campaign, email-campaign
- Analytics: performance-report, attribution-analysis
- Launch: product-launch, growth-experiment

**Configuration:** 7 interactive fields (industry, focus areas, audience, maturity, disclaimers)

[📖 Marketing Pack Documentation](marketing/README.md)

---

### Medical Pack (v1.0)
**9 healthcare AI specialists** for clinical validation, compliance, training, and health IT.

**Agents:**
- Clinical Staff: Dr. Michael Johnson (Medical Director), Nurse Brittany Hinsley, Ashley Rutledge (Paramedic)
- Specialists: Dr. Alex Kim (Pharmacist), Maya Patel (Medical Writer), Dr. James Carter (Educator)
- Compliance & IT: Lisa Chang (Privacy Officer), Marcus Thompson (EHR Specialist), Rachel Johnson (Billing Expert)

**Workflows:** 8 workflows (configs only - instructions coming in Sprint 02)
- clinical-review, patient-content, ehr-integration-plan, drug-safety-check
- hipaa-audit, provider-training, billing-workflow, marketing-collab

**Configuration:** 6 interactive fields (specialty, HIPAA mode, disclaimers, validation level, EHR system)

[📖 Medical Pack Documentation](medical/README.md)

---

### Blog Pack (v1.0)
**2 AI content specialists** for daily blogging and content operations (Derek Neighbors' system).

**Agents:**
- Derek Neighbors (Author) — Customizable to your voice and brand
- Orion (Blog Orchestrator) — Workflow coordination and quality control

**Workflows:** 15 workflows (configs only - instructions coming in Sprint 02)
- Daily content: daily-content-system, blog-post-creation, content-calendar-planning, series-planning
- Social distribution: social-media-generation, linkedin-response-formula, cover-image-prompt, utm-tracking-setup
- SEO & quality: seo-optimization, content-review, internal-linking-strategy
- Analytics: content-performance-report, content-refresh, idea-generation

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
