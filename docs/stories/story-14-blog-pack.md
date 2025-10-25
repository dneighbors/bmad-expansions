# Story 14: Scaffold Blog Pack via BMB

**Epic:** E2 — Authoring with BMAD Builder (BMB)  
**Epic Reference:** [docs/epics/02-authoring-with-bmb.md](../epics/02-authoring-with-bmb.md)  
**Priority:** P0 (Critical Path)  
**Story Points:** 20  
**Assigned:** Developer  
**Status:** ✅ DISCOVERY COMPLETE — Ready for Implementation

---

## User Story

As an author, I want the `blog` pack as a workflow-heavy, customization-focused system that enables bloggers to leverage marketing pack agents with personalized author personas for complete content operations.

---

## Discovery Reference

See completed discovery session: `docs/discovery/blog-pack-discovery.md`

**Target Users:** Individual bloggers, content creators, thought leaders, personal brand builders

**Pain Points Solved:**
1. **Workflow Chaos** — No systematic process for going from idea → published content
2. **Brand Inconsistency** — Voice drift across platforms and over time
3. **Manual Toil** — Repetitive tasks (front matter, social posts, image prompts) done manually
4. **Marketing Gap** — Missing the 31 marketing specialists needed for full content ops
5. **Customization Complexity** — Hard to adapt generic tools to specific brand voices

---

## Architecture Innovation

**Blog Author as Agent** — Each blogger gets a custom agent that embodies their unique brand voice, content pillars, front matter requirements, social media style, and visual brand guidelines.

**Dependency:** Marketing Pack (all 31 agents available for tactical work)

**Scalability:** One pack, many blogs — create new blog author agent → new blog persona ready

---

## Acceptance Criteria

### 1. Create 2 Agent YAML Files

Use BMB `*create-agent` workflow to create each agent in `blog/agents/`:

1. **orion-blog-orchestrator.agent.yaml** — Blog Orchestrator
   - Role: Workflow execution and marketing agent coordination
   - Expertise: Content operations, workflow automation, cross-agent orchestration
   - Communication style: Systematic, efficient, quality-focused
   - Workflows: Executes all blog workflows, coordinates marketing agents

2. **derek-neighbors-author.agent.yaml** — Derek Neighbors (Blog Author Persona)
   - Brand Message: "Becoming the best motherfucker you can be at what you do"
   - Voice: Provocative, authentic, philosophical, practical — no-BS ancient wisdom
   - Content Pillars: Philosophy of Excellence, Forge of Transformation, Mastery & Craft, Leadership Through Being
   - Tone: Marcus Aurelius meditations style — raw truth + Greek concepts
   - Front Matter Template: Custom Jekyll format with arete scoring
   - Visual Brand: Deep charcoal (#2C2C2C), warm gold (#D4AF37), sage green (#87A96B)
   - Social Style: DEPTH formula for LinkedIn, meditation-style for X
   - Port all configuration from `/home/dneighbors/Public/derekneighbors.com/.cursor/rules/`

**All agents must include:**
- Complete brand voice documentation
- Front matter template configuration
- Social media style guidelines
- Visual brand specifications
- Content pillar definitions

---

### 2. Create 15 Workflow Folders

Use BMB `*create-workflow` to create each workflow in `blog/workflows/`:

#### Daily Content Creation (5 workflows)

1. **daily-content-system/** — Master workflow for daily blog post creation (🔥 PRIORITY)
   - Team: Blog Author, Orion, Emma Words, Olivia Search, James Edit
   - Input: Content Hub topic selection, date, content pillar
   - Output: Complete blog post with front matter, social content, cover image prompt
   - Port from: `/home/dneighbors/Public/derekneighbors.com/content-ops/workflows/daily-content-creation-system.md`

2. **blog-post-creation/** — Single blog post from concept to publish-ready
3. **content-calendar-planning/** — Plan 30-90 day content calendar
4. **series-planning/** — Plan multi-part content series
5. **content-repurposing/** — Turn blog post into multi-platform content

#### Social Media & Distribution (4 workflows)

6. **social-media-generation/** — Create all social content from blog post (🔥 PRIORITY)
7. **linkedin-response-formula/** — Generate brand-aligned LinkedIn responses
8. **cover-image-prompt/** — Generate visual prompt for blog cover image
9. **utm-tracking-setup/** — Generate UTM-tracked links for social distribution

#### Content Quality & SEO (3 workflows)

10. **seo-optimization/** — Optimize blog post for search and AI discovery
11. **content-review/** — Quality check against brand voice and standards
12. **internal-linking-strategy/** — Add strategic internal links to post

#### Analytics & Optimization (2 workflows)

13. **content-performance-report/** — Analyze blog and social metrics
14. **content-refresh/** — Update and optimize existing high-performing posts

#### Content Bank & Inspiration (1 workflow)

15. **content-bank-generation/** — Extract one-liner wisdom from blog posts

**Each workflow must include:**
- `workflow.yaml` with config (name, description, team agents, inputs, outputs)
- `instructions.md` with step-by-step execution logic
- `README.md` with usage examples
- `checklist.md` (validation criteria)

---

### 3. Port Derek's Content Operations System

**Port from `/home/dneighbors/Public/derekneighbors.com/content-ops/`:**

#### Workflows to Port:
- `workflows/daily-content-creation-system.md` → `daily-content-system/`
- `workflows/content-approval-workflow.md` → `content-review/`
- `workflows/cover-letter-generator.md` → `cover-image-prompt/`
- `workflows/content-bank.md` → `content-bank-generation/`

#### Templates to Port:
- `templates/content-creation-templates.md` → Blog post structural templates (12 formats)
- `templates/brand-voice-evolution.md` → Derek agent voice configuration
- `templates/social-media-templates.md` → Social content generation templates
- `templates/utm-tracking-system.md` → UTM workflow configuration
- `templates/linkedin-response-formula.md` → LinkedIn response workflow

#### Brand Rules to Port from `.cursor/rules/`:
- `brand.mdc` → Derek agent persona (voice, colors, messaging, philosophy)
- `content.mdc` → Content standards, frontmatter rules, pillar alignment
- `blog-post-frontmatter.mdc` → Front matter template for Derek's blog

---

### 4. Create Documentation & Examples

**A. `blog/README.md`**
- Pack purpose: Workflow-heavy content operations system
- Blog author as agent concept
- Target users (bloggers, content creators)
- Agent roster (Orion + Derek example)
- Workflow catalog with triggers
- Installation instructions
- Dependencies (bmm, bmb, marketing)
- Marketing pack integration explanation

**B. `blog/examples/derek-neighbors/`**
- Complete example configuration showing:
  - Brand voice rules
  - Front matter template
  - Content pillars
  - Social media styles
  - Visual brand guidelines
  - Workflow customizations

**C. `blog/docs/customization-guide.md`**
- How to create your own blog author agent
- Template inheritance model
- Brand configuration structure
- Front matter customization
- Social media style adaptation
- Visual brand setup

**Tone:** Practical, empowering, emphasizes customization and brand voice consistency

---

### 5. Validate Installer Config

Ensure `blog/_module-installer/install-config.yaml` includes:
- `code: blog`
- `name: "Blog Pack"`
- `description: "Workflow-heavy content operations with customizable blog author personas"`
- `version: "0.1.0"`
- `dependencies: [bmm, bmb, marketing]`

---

### 6. Test Priority Workflows

Manually test these workflows end-to-end with Derek's blog:
1. `*daily-content-system` — Create complete blog post from idea to publish-ready
2. `*social-media-generation` — Generate all social content from blog post (verify voice match)
3. **`*cover-image-prompt`** — Create cover image prompt (verify brand consistency)

Verify:
- Workflows load without errors
- Derek agent embodies brand voice correctly
- Marketing agents integrate smoothly
- Front matter generates correctly
- Social content matches meditation-style voice
- Cover prompts include brand colors and style
- UTM tracking works properly

---

## Technical Notes

- Use BMB workflows (`*create-agent`, `*create-workflow`) for agent/workflow creation
- Port Derek's system as reference implementation
- Agent YAMLs compile to `.md` during installation in target projects
- Blog author agents contain complete brand configuration (voice, templates, colors)
- Front matter templates must be SSG-agnostic (adaptable to Jekyll, Hugo, 11ty, etc.)
- Social media character limits enforced (X: 280, LinkedIn: varies)
- Module dependencies: `bmm`, `bmb`, `marketing` (REQUIRED)

---

## Definition of Done

- [ ] 2 agent YAML files created in `blog/agents/` (Orion + Derek)
- [ ] 15 workflow folders created in `blog/workflows/`
- [ ] Derek's system ported from `/content-ops/` and `.cursor/rules/`
- [ ] `blog/README.md` updated (comprehensive, explains author-as-agent concept)
- [ ] `blog/examples/derek-neighbors/` created with complete configuration
- [ ] `blog/docs/customization-guide.md` created
- [ ] Installer config validated with marketing dependency
- [ ] `*daily-content-system` tested successfully with Derek's blog
- [ ] `*social-media-generation` tested successfully (voice verified)
- [ ] `*cover-image-prompt` tested successfully (brand verified)
- [ ] All files committed to `main`
- [ ] Discovery doc reference added to README

---

## Resources

- Discovery doc: `docs/discovery/blog-pack-discovery.md`
- Derek's system: `/home/dneighbors/Public/derekneighbors.com/content-ops/`
- Derek's brand rules: `/home/dneighbors/Public/derekneighbors.com/.cursor/rules/`
- BMB agent creation: Use `*create-agent` workflow
- BMB workflow creation: Use `*create-workflow` workflow
- EXPANSIONS-SETUP.md: Authoring guidance

---

_Story updated by Bob (SM) and John (PM) on 2025-10-24_

