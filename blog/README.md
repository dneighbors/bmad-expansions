# Blog Pack

**Your blog author as an AI agent — complete brand voice, content operations, and workflow automation.**

## Purpose

The Blog Pack revolutionizes content creation by embodying your unique blog voice, brand guidelines, and content operations as AI agents. Each blog author gets a custom agent that understands their philosophy, tone, visual brand, front matter requirements, and social media style—making consistent, on-brand content creation effortless.

## Target Users

- **Individual Bloggers** — Solo content creators building personal brands
- **Thought Leaders** — Authors and speakers maintaining consistent voice across platforms
- **Content Entrepreneurs** — Building audience through regular blog publishing
- **Technical Writers** — Developer blogs, engineering thought leadership
- **Coaches & Consultants** — Sharing expertise through content marketing

## Pain Points Solved

1. **Inconsistent Brand Voice** — Agent embodies YOUR voice, tone, and philosophy
2. **Content Operations Chaos** — Systematic workflows from concept through publication
3. **Social Media Overwhelm** — Auto-generate platform-specific content from blog posts
4. **SEO & Formatting Burden** — Handle front matter, SEO, internal linking automatically
5. **Lack of Marketing Expertise** — Access full marketing pack for tactical support

## Architecture Innovation

### Blog Author as Agent

Each blogger gets a **custom agent** that embodies:
- ✅ **Brand Voice** — Tone, style, messaging framework
- ✅ **Content Pillars** — Core themes and philosophical framework
- ✅ **Visual Brand** — Colors, image style, typography standards
- ✅ **Front Matter Template** — Custom Jekyll/Hugo/etc. formatting
- ✅ **Social Media Style** — Platform-specific content formulas
- ✅ **Product Integration** — Natural mention of your products/services

### Dependency: Marketing Pack

The Blog Pack is **workflow-heavy and agent-light** by design:
- **2 Blog Agents:** Your author persona + Orion workflow orchestrator
- **31 Marketing Agents:** Full marketing department for tactical support
- **15 Blog Workflows:** Content creation, SEO, social, analytics, optimization

When workflows need copywriting, SEO, or social expertise, they invoke marketing pack agents—keeping blog pack focused on YOUR unique voice while leveraging proven marketing specialists.

### Scalability

**One Pack, Many Blogs:**
1. Create new blog author agent (copy Derek Neighbors template)
2. Customize brand voice, content pillars, front matter
3. New blog persona ready with all 15 workflows

## Agent Roster (2 Specialists)

### Blog Orchestrator
- **Orion** (`@orion-blog-orchestrator`) — Workflow Execution + Marketing Coordination
  - Orchestrates all blog workflows from concept through publication
  - Coordinates marketing pack specialists (SEO, copywriting, social)
  - Ensures brand consistency and quality standards
  - Systematic, efficient, quality-focused

### Blog Author Persona (Example: Derek Neighbors)
- **Derek Neighbors** (`@derek-neighbors-author`) — Author + Philosopher of Excellence
  - **Brand Message:** "Becoming the best motherfucker you can be at what you do"
  - **Voice:** Provocative, authentic, philosophical, practical (Marcus Aurelius style)
  - **Content Pillars:** Philosophy of Excellence, Forge of Transformation, Mastery & Craft, Leadership Through Being
  - **Visual Brand:** Deep charcoal, warm gold, sage green (ancient wisdom aesthetic)
  - **Social Style:** DEPTH formula (LinkedIn), meditation threads (X/Twitter)
  - **Front Matter:** Custom Jekyll with arete scoring, content pillars, related posts

## Workflows (15)

### 🔥 Priority Workflows

#### `*daily-content-system` — Daily Blog Post Creation
**Team:** Blog Author, Orion, Emma (Copywriter), Olivia (SEO), James (Editor)  
**Use When:** Creating daily blog posts with full workflow  
**Output:** Complete blog post with front matter, SEO, social content, cover image prompt

```
@derek-neighbors-author
*daily-content-system
```

#### `*social-media-generation` — Multi-Platform Social Content
**Team:** Blog Author, Orion, Alex (Social), Michael (LinkedIn), Tyler (X/Twitter)  
**Use When:** Turning blog post into social content for all platforms  
**Output:** LinkedIn (DEPTH formula), X threads, Facebook, Instagram captions

```
@orion-blog-orchestrator
*social-media-generation
```

#### `*cover-image-prompt` — Visual Content Generation
**Team:** Blog Author, Maya (Visual Designer)  
**Use When:** Generating cover image prompts aligned with brand  
**Output:** Midjourney/DALL-E prompt matching visual brand guidelines

```
@derek-neighbors-author
*cover-image-prompt
```

### Additional Workflows

**Daily Content Creation:**
- `*blog-post-creation` — Single blog post from concept to publish
- `*content-calendar-planning` — Plan 30-90 day editorial calendar
- `*series-planning` — Plan multi-part content series
- `*content-repurposing` — Turn blog post into multi-platform content

**Social Media & Distribution:**
- `*linkedin-response-formula` — Generate brand-aligned LinkedIn responses
- `*utm-tracking-setup` — Generate UTM-tracked links for distribution

**Content Quality & SEO:**
- `*seo-optimization` — Optimize for search and AI discovery (SearchGPT, Perplexity, Claude)
- `*content-review` — Quality check against brand voice and standards
- `*internal-linking-strategy` — Add strategic internal links

**Analytics & Optimization:**
- `*content-performance-report` — Analyze blog and social metrics
- `*content-refresh` — Update and optimize existing high-performing posts

**Content Bank & Inspiration:**
- `*idea-generation` — Generate content ideas from Content Hub

## Installation

### Prerequisites

The Blog Pack **requires** the Marketing Pack for full functionality:
- `bmm` — BMAD Method Modular (core workflows)
- `bmb` — BMAD Builder (module authoring tools)
- **`marketing`** — Marketing Pack (31 specialists for tactical support)

### Install via BMAD Installer

```bash
# From your project root
bmad install blog  # Also installs marketing pack if not present
```

## Usage Examples

### Example 1: Daily Blog Post

```
@derek-neighbors-author
*daily-content-system

# Provide: Topic, content pillar, target date
# Output: Complete blog post + front matter + social content + cover image prompt
```

### Example 2: Content Calendar

```
@derek-neighbors-author
*content-calendar-planning

# Provide: Month, content themes
# Output: 30-90 day calendar with topics, keywords, publish dates
```

### Example 3: Social Content from Blog

```
@orion-blog-orchestrator
*social-media-generation

# Provide: Published blog post URL or content
# Output: LinkedIn DEPTH post + X thread + Instagram caption + Facebook post
```

## Creating Your Own Blog Author Agent

1. **Copy Template:** Duplicate `derek-neighbors-author.md`
2. **Customize Brand Voice:**
   - Brand message and philosophy
   - Tone, style, communication approach
   - Content pillars (your core themes)
3. **Define Visual Brand:**
   - Color palette
   - Image style guidelines
   - Typography standards
4. **Configure Front Matter:**
   - Jekyll/Hugo/static site format
   - Required fields
   - Custom metadata (arete scoring, content pillars, etc.)
5. **Set Social Media Style:**
   - Platform-specific formulas
   - Voice across channels
   - Product integration approach

## Dependencies

- **BMAD Core** — Required
- **BMM** (BMAD Method Modular) — Required
- **BMB** (BMAD Builder) — Required
- **Marketing Pack** — **REQUIRED** (31 agents for tactical support)

## Version

**0.1.0** — Initial release (Derek Neighbors blog template)

## Discovery Documentation

For detailed information about pack design and "blog author as agent" architecture, see:
- `docs/discovery/blog-pack-discovery.md` (in bmad-expansions repo)

## Contributing

This pack was authored using BMAD Builder workflows. To contribute:
1. Use `@bmad-builder` agent
2. Run `*create-agent` or `*create-workflow` workflows
3. Follow BMAD Core agent and workflow conventions

## License

Part of the BMAD Method ecosystem. See main BMAD-METHOD repository for license details.
