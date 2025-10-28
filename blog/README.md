# Blog Pack (BMB Generated)

**Version:** 1.0.0  
**Author:** Derek Neighbors  
**Created:** 2025-10-26  
**Method:** BMB Workflows  
**Pattern:** Author-as-Agent

---

## Overview

Blog content operations system built on the **author-as-agent pattern**. Your unique voice and expertise become an AI agent that works with specialists (SEO, editing, social) to scale content production while maintaining authenticity.

**Created using BMAD Builder (BMB) workflows** to demonstrate proper module structure and author-as-agent pattern.

---

## The Author-as-Agent Pattern

Traditional content AI replaces the author. This pack **amplifies** the author.

**How It Works:**
1. **Derek (Author Agent)** embodies your unique voice, perspective, and expertise
2. **Orion (Orchestrator)** manages content operations and coordinates specialists
3. **Marketing Specialists** provide tactical support (SEO, editing, social) without diluting voice

**Result:** Scale content production while maintaining authentic, high-quality output.

---

## Installation

```bash
bmad install blog
```

**Configuration:**
- Blog output path
- Author name (your name becomes the agent)
- Brand voice style (practical, conversational, authoritative, provocative, educational)
- Content focus areas (long-form, technical, thought leadership, case studies)
- Publishing cadence (daily, weekly, monthly)
- SEO priority level
- Social automation toggle

---

## Agents (2 Total)

### Orion - Blog Orchestrator 🎯 ✅
**Role:** Content Operations Manager  
**Function:** Orchestrates workflows, coordinates specialists, ensures quality  
**Commands:** 15+ workflow triggers for full content lifecycle

### Derek Neighbors - Author ✍️ ✅
**Role:** Content Creator + Brand Voice  
**Function:** Creates content in your authentic voice  
**Customizable:** Your name, voice, expertise become the agent  
**Commands:** 8+ workflows for ideation, writing, review

---

## Workflows (15 Total)

### Daily Content System (5)
1. **`*daily-content-system`** - Master workflow for daily posting
2. **`*blog-post-creation`** ✅ Created - Single post creation
3. `*content-calendar-planning` - Plan 30-90 day calendar
4. `*series-planning` - Multi-part series planning
5. `*content-repurposing` - Multi-platform repurposing

### Social & Distribution (4)
6. `*social-media-generation` - Auto-generate social content
7. `*linkedin-response-formula` - Brand-aligned responses
8. `*cover-image-prompt` - Visual prompt generation
9. `*utm-tracking-setup` - UTM link generation

### Content Quality & SEO (3)
10. `*seo-optimization` - Search and AI discovery optimization
11. `*content-review` - Quality check vs brand standards
12. `*internal-linking-strategy` - Strategic internal links

### Analytics & Optimization (2)
13. `*content-performance-report` - Metrics analysis
14. `*content-refresh` - Update high-performers

### Content Bank (1)
15. `*idea-generation` - Generate ideas from Content Hub

---

## Quick Start

### As Author (Derek)
```
@derek-neighbors-author
*blog-post-creation

Topic: How to scale content without losing your voice
Length: Long-form (1500-2500 words)
Audience: Content creators and founders
Takeaways: Practical frameworks for authentic content at scale
```

### As Orchestrator (Orion)
```
@orion-blog-orchestrator
*daily-content-system

# Executes full content workflow:
# 1. Idea selection
# 2. Derek writes draft
# 3. SEO optimization
# 4. Editorial review
# 5. Social generation
# 6. Save publish-ready package
```

---

## Configuration

### Installation Questions

During installation, you'll answer questions about your blog identity:

1. **Output Location** - Where to save blog posts and social content
2. **Author Name** - Your name (customizes Derek Neighbors agent to your identity)
3. **Content Focus** - Primary content pillars/themes (select multiple)
4. **Publishing Cadence** - How often you publish (daily, 5x/week, 3x/week, etc.)
5. **SEO Priority** - Balance between SEO optimization and authentic voice
6. **Social Automation** - Which social platforms to generate content for

### How Configuration Works (v1.0)

**✅ Currently Active:**
- Configuration values saved to `bmad/blog/config.yaml` in your project
- Author agent persona can be customized to your name and voice
- Workflows use `blog_output_path` to organize content
- Content pillars guide topic selection and idea generation

**⏳ Planned Enhancements (See Epic 05):**
- Publishing cadence adjusts calendar planning recommendations
- Content focus filters workflow suggestions and topic ideas
- SEO priority slider adapts optimization aggressiveness
- Social automation pre-selects platforms in distribution workflows
- Author voice learns from your past content

**Current Workaround:**  
Reference your blog context explicitly:
- *"Given my focus on leadership and agile development..."*
- *"For my daily publishing schedule, suggest..."*
- *"In my authentic conversational voice..."*

See **[Epic 05: Context-Aware Adaptation](../docs/epics/05-context-aware-adaptation.md)** for planned adaptive behavior.

---

## Module Structure (BMB Standard)

```
blog/
├── agents/
│   ├── orion-blog-orchestrator.agent.yaml   ✅
│   └── derek-neighbors-author.agent.yaml    ✅ (Customizable)
├── workflows/
│   ├── blog-post-creation/                  ✅
│   │   └── workflow.yaml
│   └── [14 more workflows to be created]
├── data/
│   ├── content-bank/        # Ideas and inspiration
│   ├── brand-voice.md       # Voice guide
│   └── editorial-standards.md
├── templates/
│   └── social/              # Social post templates
├── _module-installer/
│   └── install-config.yaml  ✅
└── README.md                ✅
```

---

## Key BMB Features Demonstrated

1. **Author-as-Agent Pattern:** Your identity becomes the agent
2. **Configurable Persona:** Brand voice, focus, cadence all customizable
3. **Cross-Module Dependencies:** Borrows marketing specialists
4. **Conditional Workflows:** SEO/social based on preferences
5. **Content Bank Integration:** Persistent idea storage

---

## Differences from Script-Generated Blog Pack

| Aspect | Script | BMB |
|--------|--------|-----|
| **Config Fields** | 2 basic | 8 interactive |
| **Agent Customization** | Fixed names | {author_name} variable |
| **Brand Voice** | Generic | 5 voice options |
| **Dependencies** | Implicit | Explicit marketing pack dependency |
| **SEO Control** | Always on | Priority level configuration |

---

## Dependencies on Marketing Pack

Blog pack **requires** marketing pack for specialist support:
- Emma (Copywriter) - Headlines and hooks
- Olivia (SEO) - Search optimization
- James (Editor) - Editorial review
- Alex (Social) - Social media generation
- Maya (Designer) - Visual concepts

**Workflow Integration:** Blog workflows automatically invoke marketing specialists when needed.

---

## Sample Created (2 of 2 agents, 1 of 15 workflows)

This sample demonstrates the author-as-agent pattern with proper BMB structure.

---

## Customization Guide

### Make It Your Own

1. **Install:** `bmad install blog`
2. **Configure:** Enter your name, voice style, content focus
3. **Brand Voice:** Edit `bmad/blog/data/brand-voice.md` with your unique voice guidelines
4. **Content Bank:** Populate `bmad/blog/data/content-bank/` with ideas
5. **Test:** Create your first post with `@{your-name}-author *blog-post-creation`

---

**Content Disclaimer:** AI-generated content should be reviewed and edited to ensure it accurately represents your voice, expertise, and brand. The author-as-agent pattern provides a foundation—your review and refinement make it authentic.

