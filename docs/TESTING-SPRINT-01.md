# Sprint 01 Validation Testing Guide

## 🎯 Testing Objective

Validate that the BMB-retrofitted expansion packs (medical, marketing, blog) properly install into target Cursor projects via the BMAD installer and generate correct artifacts.

## 📋 Testing Scope

### What We're Testing
1. ✅ Sync script correctly copies packs to BMAD-METHOD repo
2. ✅ BMAD installer discovers all 3 expansion packs
3. ✅ Interactive configuration prompts work (6-8 fields per pack)
4. ✅ Agents compile from `.agent.yaml` to `.md` format
5. ✅ Cursor artifacts generate correctly in `.cursor/rules/`
6. ✅ Workflows install with proper structure
7. ✅ Agent activation and menu commands work

### What We're NOT Testing (Sprint 02)
- ⏳ End-to-end workflow execution
- ⏳ Agent persona quality
- ⏳ Workflow instruction completeness
- ⏳ Multi-pack installation scenarios

## 🔧 Test Environment Setup

### Prerequisites
```bash
# 1. BMAD-METHOD repo location
export BMAD_REPO="/path/to/BMAD-METHOD"

# 2. Target test project (any Cursor project)
export TEST_PROJECT="/path/to/test-project"

# 3. This repo (bmad-expansions)
export EXPANSIONS_REPO="/home/dneighbors/Public/bmad-expansions"
```

### Required Tools
- ✅ `bmad-cli` installed and in PATH
- ✅ Git access to both repos
- ✅ Cursor IDE installed (for artifact verification)

## 📝 Test Procedure

### Phase 1: Sync Packs to BMAD-METHOD

**Story Coverage:** Story 15 (Sync script), Story 6 (Rsync script)

```bash
# Step 1: Navigate to expansions repo
cd $EXPANSIONS_REPO

# Step 2: Checkout the validation branch
git checkout sprint-01-validation

# Step 3: Run sync script
./scripts/sync-packs.sh

# Expected output:
# ✅ Syncing medical pack...
# ✅ Syncing marketing pack...
# ✅ Syncing blog pack...
# ✅ All packs synced to BMAD-METHOD
```

**Verification:**
```bash
# Check files exist in BMAD repo
ls -la $BMAD_REPO/src/modules/medical/
ls -la $BMAD_REPO/src/modules/marketing/
ls -la $BMAD_REPO/src/modules/blog/

# Verify structure (each should have):
# - _module-installer/install-config.yaml
# - agents/*.agent.yaml (2 files each)
# - workflows/*/workflow.yaml
# - README.md
```

**Expected Results:**
- ✅ All 3 packs present in `$BMAD_REPO/src/modules/`
- ✅ `.agent.yaml` files present (not `.md`)
- ✅ `install-config.yaml` contains 6-8 questions
- ✅ No `-bmad` suffixes in any paths or IDs

---

### Phase 2: Run BMAD Installer - Medical Pack

**Story Coverage:** Story 12 (Medical pack), Story 8 (Install command docs)

```bash
# Step 1: Navigate to test project
cd $TEST_PROJECT

# Step 2: Run BMAD installer
bmad-cli install

# Step 3: Select "medical" pack when prompted
# Answer configuration questions:
# - Organization name: "Test Clinic"
# - Specialty focus: "Primary Care"
# - HIPAA compliance: "yes"
# - Patient volume: "high"
# - EHR system: "Epic"
# - Telemedicine support: "yes"
```

**Verification:**
```bash
# Check installed structure
tree .cursor/rules/bmad/medical/

# Expected structure:
# .cursor/rules/bmad/medical/
# ├── agents/
# │   ├── dr-michael-johnson.md
# │   └── nurse-brittany-hinsley.md
# ├── workflows/
# │   └── clinical-review/
# │       ├── workflow.yaml
# │       ├── instructions.md
# │       ├── checklist.md
# │       └── README.md
# ├── config.yaml
# └── README.md

# Verify agent compilation
cat .cursor/rules/bmad/medical/agents/dr-michael-johnson.md

# Should contain:
# - Persona details
# - Activation rules
# - Menu commands
# - No YAML frontmatter (compiled)
```

**Expected Results:**
- ✅ Agents compiled to `.md` format
- ✅ All workflows present with 4 files each
- ✅ Configuration values injected
- ✅ Cursor can reference `@bmad/medical/agents/dr-michael-johnson`

---

### Phase 3: Run BMAD Installer - Marketing Pack

**Story Coverage:** Story 13 (Marketing pack)

```bash
# Step 1: Run installer again (same test project)
bmad-cli install

# Step 2: Select "marketing" pack
# Answer configuration questions:
# - Company name: "Test Corp"
# - Industry: "SaaS"
# - Target audience: "B2B SMB"
# - Brand voice: "professional, friendly"
# - Marketing budget tier: "growth"
# - Primary channels: "content, social"
# - CRM system: "HubSpot"
```

**Verification:**
```bash
# Check installed structure
tree .cursor/rules/bmad/marketing/

# Expected structure:
# .cursor/rules/bmad/marketing/
# ├── agents/
# │   ├── victoria-chen-cmo.md
# │   └── rachel-ads-ppc.md
# ├── workflows/
# │   └── marketing-strategy/
# │       ├── workflow.yaml
# │       ├── instructions.md
# │       ├── checklist.md
# │       └── README.md
# ├── config.yaml
# └── README.md

# Verify agent mentions configured values
grep "Test Corp" .cursor/rules/bmad/marketing/agents/victoria-chen-cmo.md
grep "B2B SMB" .cursor/rules/bmad/marketing/config.yaml
```

**Expected Results:**
- ✅ Marketing pack installed alongside medical (no conflicts)
- ✅ Configuration values properly injected
- ✅ 2 agents + 1 workflow present
- ✅ Can reference both packs simultaneously

---

### Phase 4: Run BMAD Installer - Blog Pack

**Story Coverage:** Story 14 (Blog pack)

```bash
# Step 1: Run installer again (same test project)
bmad-cli install

# Step 2: Select "blog" pack
# Answer configuration questions:
# - Blog name: "Test Tech Blog"
# - Primary author: "Derek Neighbors"
# - Content focus: "software development"
# - Publishing frequency: "2x per week"
# - Target audience: "developers"
# - SEO priority: "high"
# - Social platforms: "LinkedIn, Twitter"
# - Analytics platform: "Google Analytics"
```

**Verification:**
```bash
# Check installed structure
tree .cursor/rules/bmad/blog/

# Expected structure:
# .cursor/rules/bmad/blog/
# ├── agents/
# │   ├── orion-blog-orchestrator.md
# │   └── derek-neighbors-author.md
# ├── workflows/
# │   └── blog-post-creation/
# │       ├── workflow.yaml
# │       ├── instructions.md
# │       ├── checklist.md
# │       └── README.md
# ├── config.yaml
# └── README.md

# Verify workflow instructions are detailed
wc -l .cursor/rules/bmad/blog/workflows/blog-post-creation/instructions.md
# Should be 200+ lines
```

**Expected Results:**
- ✅ All 3 packs installed in same project
- ✅ Blog configuration properly stored
- ✅ Detailed workflow instructions present
- ✅ No conflicts or overwrites between packs

---

### Phase 5: Cursor Artifact Verification

**Story Coverage:** Story 8 (Install command), Integration testing

```bash
# Step 1: Open test project in Cursor
cursor $TEST_PROJECT

# Step 2: Test agent references in Cursor chat
# Type: "@bmad/medical/agents/dr-michael-johnson"
# Expected: Agent appears in autocomplete

# Step 3: Test workflow references
# Type: "@bmad/blog/workflows/blog-post-creation"
# Expected: Workflow appears in autocomplete

# Step 4: Verify config.yaml merging
cat .cursor/rules/bmad/config.yaml
# Should contain all 3 packs listed
```

**Manual Verification Checklist:**
- [ ] Medical agents appear in Cursor autocomplete
- [ ] Marketing agents appear in Cursor autocomplete
- [ ] Blog agents appear in Cursor autocomplete
- [ ] Workflows appear in autocomplete
- [ ] Agent personas render correctly in chat
- [ ] Menu commands visible in agent context
- [ ] No YAML syntax visible (all compiled)
- [ ] Configuration values present in agent context

---

### Phase 6: Update and Re-Install Testing

**Story Coverage:** Story 9 (Update procedure)

```bash
# Step 1: Make a small change to a pack (in expansions repo)
cd $EXPANSIONS_REPO
echo "# Updated $(date)" >> blog/README.md
git commit -am "test: update blog pack for update testing"

# Step 2: Re-sync
./scripts/sync-packs.sh

# Step 3: Re-install in test project
cd $TEST_PROJECT
bmad-cli install --update blog

# Expected: Blog pack updates without re-prompting for config
```

**Expected Results:**
- ✅ Update detected and applied
- ✅ Configuration preserved (no re-prompting)
- ✅ Changes reflected in installed files
- ✅ Other packs unaffected

---

## 🐛 Known Issues / Expected Failures

### May Encounter
1. **Sync script path issues** - Verify `BMAD_REPO` path is correct
2. **Agent compilation errors** - Check `.agent.yaml` syntax
3. **Configuration prompt issues** - Verify `install-config.yaml` format
4. **Cursor autocomplete delay** - May need to restart Cursor

### Should NOT Encounter
- ❌ `-bmad` suffixes anywhere
- ❌ `.agent.yaml` files in installed output
- ❌ Missing configuration values
- ❌ Workflow files missing
- ❌ Pack conflicts or overwrites

---

## 📊 Test Results Template

```markdown
## Sprint 01 Validation Test Results

**Tester:** [Your Name]
**Date:** [Date]
**Branch:** sprint-01-validation
**Commit:** [Git SHA]

### Phase 1: Sync Packs
- [ ] Medical pack synced
- [ ] Marketing pack synced
- [ ] Blog pack synced
- [ ] No `-bmad` suffixes found
- [ ] All `.agent.yaml` files present

**Issues:** None / [List issues]

### Phase 2: Medical Pack Install
- [ ] Installer discovered pack
- [ ] Configuration prompts worked (6 questions)
- [ ] Agents compiled to `.md`
- [ ] Workflows installed
- [ ] Cursor autocomplete works

**Issues:** None / [List issues]

### Phase 3: Marketing Pack Install
- [ ] Installer discovered pack
- [ ] Configuration prompts worked (7 questions)
- [ ] Agents compiled to `.md`
- [ ] Workflows installed
- [ ] No conflicts with medical pack

**Issues:** None / [List issues]

### Phase 4: Blog Pack Install
- [ ] Installer discovered pack
- [ ] Configuration prompts worked (8 questions)
- [ ] Agents compiled to `.md`
- [ ] Workflows installed (200+ line instructions)
- [ ] All 3 packs coexist

**Issues:** None / [List issues]

### Phase 5: Cursor Verification
- [ ] All agents in autocomplete
- [ ] All workflows in autocomplete
- [ ] Agent personas render correctly
- [ ] Menu commands visible
- [ ] No YAML syntax visible

**Issues:** None / [List issues]

### Phase 6: Update Testing
- [ ] Sync detected changes
- [ ] Update applied successfully
- [ ] Configuration preserved
- [ ] Other packs unaffected

**Issues:** None / [List issues]

---

### Overall Assessment
**Status:** PASS / FAIL / PARTIAL
**Blockers:** None / [List blockers]
**Notes:** [Any additional observations]
```

---

## 🚀 Success Criteria

### Sprint 01 Validation Complete When:
1. ✅ All 3 packs sync successfully to BMAD-METHOD
2. ✅ All 3 packs install without errors
3. ✅ All agents compile from `.agent.yaml` to `.md`
4. ✅ All configuration prompts work (6-8 per pack)
5. ✅ Cursor artifacts generate correctly
6. ✅ No `-bmad` suffixes anywhere
7. ✅ Update flow preserves configuration
8. ✅ No blockers identified

### Ready to Merge When:
- ✅ Test results template completed
- ✅ All phases passed
- ✅ No critical issues found
- ✅ Documentation matches actual behavior

---

## 📝 Next Steps After Testing

### If All Tests Pass:
1. Document results in test results template
2. Update workflow-status.md with test completion
3. Merge PR #1 to main
4. Begin Sprint 02 planning

### If Issues Found:
1. Document issues in GitHub PR comments
2. Create bug stories in backlog
3. Fix issues on sprint-01-validation branch
4. Re-run failed test phases
5. Update PR with fixes

---

## 🔗 Related Documentation

- **Sync Script:** `scripts/sync-packs.sh`
- **Story 8:** `docs/stories/story-08-install-command-docs.md`
- **Story 9:** `docs/stories/story-09-update-procedure-docs.md`
- **Story 15:** `docs/stories/story-15-sync-script.md`
- **EXPANSIONS-SETUP:** `EXPANSIONS-SETUP.md`
- **BMB Policy:** `CONTRIBUTING.md`

