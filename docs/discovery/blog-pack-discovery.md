# Blog Pack Discovery Session

**Date:** 2025-10-24  
**Facilitator:** John (PM)  
**Participants:** Mary (Analyst), Sally (UX Designer), Carson (Brainstorming Coach)  
**Stakeholder:** Deke

---

## Session Goal

Define the **Blog Pack** as a workflow-heavy, customization-focused expansion that enables bloggers to leverage marketing pack agents with personalized author personas for content operations.

---

## Discovery Summary

### Target Users & Use Cases

**Primary Users:** Individual bloggers, content creators, thought leaders, personal brand builders

**Use Cases:**
- Daily/weekly blog content creation with consistent brand voice
- Social media content derived from blog posts
- SEO-optimized content with automated workflows
- Cover image generation and social media asset creation
- Multi-platform content distribution (blog → LinkedIn → X → etc.)
- Content series planning and execution
- Brand voice consistency across all content

**Pain Points We're Solving:**
1. **Workflow Chaos** — No systematic process for going from idea → published content
2. **Brand Inconsistency** — Voice drift across platforms and over time
3. **Manual Toil** — Repetitive tasks (front matter, social posts, image prompts) done manually
4. **Marketing Gap** — Missing the 31 marketing specialists needed for full content ops
5. **Customization Complexity** — Hard to adapt generic tools to specific brand voices

---

## Architecture: Multi-Blog System

### Core Innovation

**Blog Author as Agent** — Each blogger gets a custom agent that embodies their unique:
- Brand voice and communication style
- Content pillars and philosophical frameworks
- Front matter formatting requirements
- Social media tone and engagement style
- Visual brand guidelines (colors, typography, imagery)

### Dependency Model

**Blog Pack depends on Marketing Pack**
- All 31 marketing agents available for tactical work
- Blog author agents orchestrate marketing agents through workflows
- Separation of concerns: marketing tactics vs. brand voice

### Scalability

**One Pack, Many Blogs**
- Create new blog author agent → new blog persona ready
- Reuse all workflows with different agent configurations
- Share infrastructure, customize voice per blog

---

## Agent Roster (1 Core + Customizable Authors)

### Core Agent (Included)

1. **Blog Orchestrator**
   - **Name:** Orion (Blog Workflow Coordinator)
   - **Role:** Workflow execution and marketing agent coordination
   - **Expertise:** Content operations, workflow automation, cross-agent orchestration
   - **Style:** Systematic, efficient, quality-focused
   - **Workflows:** Executes all blog workflows, coordinates marketing agents

---

### Blog Author Agents (Customizable - Examples)

**Example 1: Derek Neighbors (Included as Reference)**

**Agent Config:**
- **Name:** Derek Neighbors
- **Brand Message:** "Becoming the best motherfucker you can be at what you do"
- **Voice:** Provocative, authentic, philosophical, practical — no-BS ancient wisdom for modern challenges
- **Content Pillars:** Philosophy of Excellence, Forge of Transformation, Mastery & Craft, Leadership Through Being
- **Tone:** Marcus Aurelius meditations style — raw truth + Greek concepts
- **Front Matter Template:** Custom Jekyll format with arete scoring
- **Visual Brand:** Deep charcoal, warm gold, sage green (specific hex codes)
- **Social Style:** DEPTH formula for LinkedIn, meditation-style for X
- **Workflows:** Daily content creation system, cover image prompts, social media generation

**Example 2: Generic Professional Blogger**

**Agent Config:**
- **Name:** [Customizable]
- **Brand Message:** [Defined by user]
- **Voice:** [Professional, friendly, authoritative, etc.]
- **Content Pillars:** [User-defined]
- **Tone:** [Conversational, formal, casual, etc.]
- **Front Matter Template:** [Markdown, Hugo, Jekyll, custom]
- **Visual Brand:** [Color palette, typography]
- **Social Style:** [Platform-specific preferences]
- **Workflows:** [Standard or customized]

---

## Workflow Roster (15 Core Workflows)

### Daily Content Creation (5 workflows)

1. **`*daily-content-system`** — Master workflow for daily blog post creation
   - **Team:** Blog Author, Orion, Emma Words (Copywriter), Olivia Search (SEO), James Edit (Editor)
   - **Input:** Content Hub topic selection, date, content pillar
   - **Output:** Complete blog post with front matter, social content, cover image prompt
   - **Steps:** Topic uniqueness check → title approval → outline creation → writing → editing → SEO optimization → social generation

2. **`*blog-post-creation`** — Single blog post from concept to publish-ready
   - **Team:** Blog Author, Emma Words, Olivia Search, James Edit, Maya Visuals
   - **Input:** Topic, target keywords, word count, content pillar
   - **Output:** Published-ready blog post with all assets
   - **Steps:** Research → outline → draft → edit → SEO → images → front matter → social

3. **`*content-calendar-planning`** — Plan 30-90 day content calendar
   - **Team:** Blog Author, Sarah Editorial (Content Strategist), Olivia Search
   - **Input:** Content pillars, publishing frequency, strategic goals
   - **Output:** Editorial calendar with topics, keywords, deadlines

4. **`*series-planning`** — Plan multi-part content series
   - **Team:** Blog Author, Sarah Editorial, Emma Words
   - **Input:** Series theme, number of posts, content depth
   - **Output:** Series plan with outlines, internal linking strategy

5. **`*content-repurposing`** — Turn blog post into multi-platform content
   - **Team:** Blog Author, platform specialists (Zoe TikTok, Tyler X, Sophia Instagram, Michael LinkedIn)
   - **Input:** Published blog post URL
   - **Output:** Platform-specific content adaptations

---

### Social Media & Distribution (4 workflows)

6. **`*social-media-generation`** — Create all social content from blog post
   - **Team:** Blog Author, Alex Social, platform specialists
   - **Input:** Blog post content, UTM parameters
   - **Output:** LinkedIn posts (2-3), X posts, engagement starters, content bank additions

7. **`*linkedin-response-formula`** — Generate brand-aligned LinkedIn responses
   - **Team:** Blog Author, Michael LinkedIn
   - **Input:** Original post/comment to respond to, context
   - **Output:** DEPTH formula response under 1200 characters

8. **`*cover-image-prompt`** — Generate visual prompt for blog cover image
   - **Team:** Blog Author, Maya Visuals
   - **Input:** Post title, content pillar, key themes
   - **Output:** Detailed image generation prompt with brand guidelines

9. **`*utm-tracking-setup`** — Generate UTM-tracked links for social distribution
   - **Team:** Blog Author, Priya Analytics (Marketing Analytics)
   - **Input:** Blog post URL, campaign, platform, content type
   - **Output:** UTM-tracked links for all platforms

---

### Content Quality & SEO (3 workflows)

10. **`*seo-optimization`** — Optimize blog post for search and AI discovery
    - **Team:** Olivia Search, Blog Author
    - **Input:** Draft blog post, target keywords
    - **Output:** SEO-optimized post with meta descriptions, headings, internal links, schema

11. **`*content-review`** — Quality check against brand voice and standards
    - **Team:** Blog Author, James Edit
    - **Input:** Draft blog post
    - **Output:** Edited post with brand voice alignment report

12. **`*internal-linking-strategy`** — Add strategic internal links to post
    - **Team:** Olivia Search, Sarah Editorial
    - **Input:** Blog post, site content inventory
    - **Output:** Internal linking recommendations with anchor text

---

### Analytics & Optimization (2 workflows)

13. **`*content-performance-report`** — Analyze blog and social metrics
    - **Team:** Priya Analytics, Blog Author
    - **Input:** Date range, posts to analyze
    - **Output:** Performance dashboard with insights and recommendations

14. **`*content-refresh`** — Update and optimize existing high-performing posts
    - **Team:** Blog Author, Olivia Search, Emma Words
    - **Input:** Post URL, current metrics, refresh goals
    - **Output:** Updated post with improved SEO and updated content

---

### Content Bank & Inspiration (1 workflow)

15. **`*content-bank-generation`** — Extract one-liner wisdom from blog posts
    - **Team:** Blog Author, Emma Words
    - **Input:** Blog post content, voice formula
    - **Output:** 5-10 content bank snippets for X/social media

---

## Porting from Derek's System

### Workflows to Port (from `/content-ops/workflows/`)

**Already Mapped:**
- ✅ `daily-content-creation-system.md` → `*daily-content-system`
- ✅ `content-approval-workflow.md` → `*content-review`
- ✅ `cover-letter-generator.md` → `*cover-image-prompt`

**Additional Workflows:**
- `content-bank.md` → `*content-bank-generation`
- `linkedin-profile-update.md` → (future enhancement)
- `inspiration.md` → (integrate into content calendar planning)

### Templates to Port (from `/content-ops/templates/`)

**Core Templates:**
- `content-creation-templates.md` → Blog post structural templates (12 formats)
- `brand-voice-evolution.md` → Derek Neighbors agent voice configuration
- `social-media-templates.md` → Social content generation templates
- `utm-tracking-system.md` → UTM workflow configuration
- `linkedin-response-formula.md` → LinkedIn response workflow
- `engagement-response-templates.md` → Community engagement workflows

**Strategic Templates:**
- `audience-personas-distribution-strategy.md` → Content strategy workflows
- `x-community-engagement-strategy.md` → X platform workflows

### Brand Rules to Port (from `.cursor/rules/`)

**Critical Brand Configuration:**
- `brand.mdc` → Derek Neighbors agent persona (voice, colors, messaging, philosophy)
- `content.mdc` → Content standards, frontmatter rules, pillar alignment
- `blog-post-frontmatter.mdc` → Front matter template for Derek's blog

**Integration Strategy:**
- Port as agent personality traits and workflow parameters
- Make customizable for other blog author agents
- Maintain separation of brand (agent) vs. tactics (marketing agents)

---

## Dependencies & Constraints

**Dependencies:**
- **Marketing Pack (REQUIRED):** All 31 marketing agents
- Static site generator (Jekyll, Hugo, 11ty, etc.) — workflows adapt to any
- Image generation tools (DALL-E, Midjourney, etc.) — for cover images
- Analytics platforms (Google Analytics, Plausible, etc.) — for performance tracking
- Social media platforms APIs (optional, for auto-posting)

**Constraints:**
- Blog author agents must include **complete brand voice documentation**
- Front matter templates vary by SSG — workflows must be adaptable
- Social media character limits (X: 280, LinkedIn: varies)
- Module dependencies: `bmm`, `bmb`, `marketing`

**Risks:**
- Over-customization makes maintenance complex → mitigate with template inheritance
- Platform API changes (X, LinkedIn) → workflows use manual copy/paste as fallback
- Voice drift over time → periodic brand voice audits

---

## MVP Scope for Story 14

### Included in Blog Pack

**1 Core Agent:**
- Orion (Blog Orchestrator)

**1 Example Blog Author Agent:**
- Derek Neighbors (complete with voice, brand, templates, front matter config)

**15 Core Workflows:**
- All workflows listed above

**Ported Content:**
- Derek's workflows from `/content-ops/workflows/`
- Derek's templates from `/content-ops/templates/`
- Derek's brand rules from `.cursor/rules/`

**Documentation:**
- `blog/README.md` — How to create custom blog author agents
- `blog/examples/derek-neighbors/` — Complete example configuration
- `blog/docs/customization-guide.md` — Guide for creating your own blog author agent

---

## Story Points Estimate

**Story 14:** 20 points

**Breakdown:**
- Core agent (Orion): 1 point
- Derek Neighbors agent (complex brand config): 3 points
- 15 workflows: 12 points (varies by complexity)
- Documentation and examples: 2 points
- Testing workflows end-to-end: 2 points

**Rationale:** This is workflow-heavy and requires careful porting of existing system. More complex than medical pack due to customization framework.

---

## Customization Architecture

### How Users Create Their Own Blog Author Agent

**Step 1: Define Brand Configuration**
```yaml
agent:
  name: "Your Name"
  brand_message: "Your core message"
  voice_characteristics:
    - characteristic1
    - characteristic2
  content_pillars:
    - pillar1
    - pillar2
  tone: "Your tone description"
```

**Step 2: Front Matter Template**
```yaml
frontmatter_template:
  required_fields:
    - layout
    - title
    - date
  custom_fields:
    - your_custom_field
```

**Step 3: Visual Brand**
```yaml
visual_brand:
  primary_colors:
    - color1: "#hex"
    - color2: "#hex"
  typography:
    headlines: "Font description"
    body: "Font description"
```

**Step 4: Social Media Style**
```yaml
social_media:
  linkedin:
    max_length: 1200
    tone: "Professional, no-BS"
    formula: "DEPTH"
  twitter:
    max_length: 280
    tone: "Meditation-style"
```

### Template Inheritance

**Base Blog Author Agent** → Derek Neighbors Agent → [Your Custom Agent]

Users can:
- Inherit from base (generic blogger)
- Inherit from Derek (philosophical blogger)
- Create from scratch with full customization

---

## Priority Workflows for Testing

1. **`*daily-content-system`** — End-to-end daily blog creation (critical path)
2. **`*social-media-generation`** — Verify social content matches voice
3. **`*cover-image-prompt`** — Ensure brand visual consistency

---

## Next Steps

1. Create detailed Story 14 with all agents, workflows, and porting requirements specified
2. Update Sprint 01 plan with revised story points (20 points)
3. Developer implements using BMB `*create-agent` and `*create-workflow`
4. Port Derek's system as reference implementation
5. Test priority workflows with Derek's blog
6. Create customization guide for other bloggers
7. Update `blog/README.md` with usage examples

---

_Discovery session completed by John (PM), Mary (Analyst), Sally (UX Designer), Carson (Brainstorming Coach) on 2025-10-24_

_Special thanks to Deke for the "sexy time hot" architecture insight that made blog author agents the perfect abstraction for multi-blog systems._

