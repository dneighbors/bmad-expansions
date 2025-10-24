## BMAD Expansions: Authoring and Install Guide (Conversation Summary)

### Goals
- Manage multiple BMAD expansion packs (modules) in this repo.
- Use BMAD’s builder workflows to create agents and workflows.
- Install packs into existing codebases (e.g., Cursor projects) using the standard BMAD installer.

### Key Concepts
- **Agents**: Authored as YAML (`*.agent.yaml`), compiled to XML-backed Markdown during install.
- **Workflows**: Folder with `workflow.yaml`, `instructions.md`, etc.
- **Modules (Expansion Packs)**: Self-contained packages containing `agents/`, `workflows/`, optional `tasks/`, `templates/`, `data/`, plus `_module-installer/install-config.yaml`.

Reference: Expansion Packs overview (BMAD docs): [expansion-packs.md](https://github.com/bmad-code-org/BMAD-METHOD/blob/main/docs/expansion-packs.md)

---

## Repository Strategy

This repo contains multiple packs, one folder per pack at repo root.

Example:
```bash
<this-repo>/
├─ code-review/
│  ├─ agents/
│  ├─ workflows/
│  ├─ _module-installer/
│  │  └─ install-config.yaml
│  └─ README.md
├─ analytics/
│  ├─ agents/
│  ├─ workflows/
│  ├─ _module-installer/
│  │  └─ install-config.yaml
│  └─ README.md
└─ ...
```

Minimal `_module-installer/install-config.yaml` per pack:
```yaml
code: code-review
name: "Code Review Pack"
description: "Quick and deep review workflows with reviewer agent"
version: "1.0.0"
default_selected: false
dependencies:
  - bmm
```

---

## Authoring with BMAD (Use BMAD to build BMAD)

1) Install BMAD into this repo once (enables builder workflows here):
```bash
node /home/dneighbors/Public/BMAD-METHOD/tools/cli/bmad-cli.js install \
  --target /home/dneighbors/Public/bmad-expansions \
  --modules bmm,bmb \
  --non-interactive
```

2) Use builder workflows:
- Create a module scaffold: `*create-module` (or run the `create-module` workflow)
- Create an agent: `*create-agent`
  - Outputs YAML to `bmad/{module}/agents/*.agent.yaml` or `bmad/agents/`
- Create a workflow: `*create-workflow`
  - Outputs folder to `bmad/{module}/workflows/{workflow_name}/` or `bmad/workflows/`

Default custom locations (set by BMAD installer in this repo):
- `bmad/bmb/config.yaml` typically sets:
  - `custom_agent_location: {project-root}/bmad/agents`
  - `custom_workflow_location: {project-root}/bmad/workflows`
  - `custom_module_location: {project-root}/bmad`

Notes:
- Module agents (inside packs) live under `bmad/{module}/agents/` in this repo until installed into targets.
- During install into a target project, YAML agents get compiled into final `.md` with activation blocks.

---

## Making Packs Discoverable by the Installer

Current (v6-alpha) installer discovers modules only in `src/modules/` of the BMAD repo you run the installer from.

Recommended bridge options:
- Rsync (simple, reliable)
- Git subtree (versioned; one BMAD source repo, many vendored packs)
- Per-pack git submodules

### Rsync (recommended now)
Sync each pack folder from this repo into BMAD’s `src/modules/{pack-code}/` before installing into a target project.

```bash
# From anywhere
for pack in /home/dneighbors/Public/bmad-expansions/*; do
  name="$(basename "$pack")"
  rsync -a --delete "$pack"/ /home/dneighbors/Public/BMAD-METHOD/src/modules/"$name"/
done
```

Alternative: link each pack as a git subtree under `src/modules/{pack-code}`.

---

## Installing Packs into a Cursor Project

After syncing packs into `src/modules/`, run the standard installer. Include Cursor in `--ides` to generate `.cursor/rules/` artifacts.

```bash
node /home/dneighbors/Public/BMAD-METHOD/tools/cli/bmad-cli.js install \
  --target /path/to/cursor-project \
  --modules bmm,bmb,code-review,analytics \
  --ides cursor \
  --non-interactive
```

Updates:
- Re-rsync (or pull subtree) and rerun the same install command. The installer overwrites installed module folders, recompiles agents, and regenerates Cursor artifacts.

---

## Best Practices
- One pack per folder at the root of this repo; each pack has a unique `code` in its `install-config.yaml`.
- Keep authoring isolated here; distribute via rsync/subtree into BMAD’s `src/modules/`.
- Prefer rsync/subtree over symlinks so discovery sees real directories.
- Use BMB builder workflows (`*create-agent`, `*create-workflow`, `*create-module`) to ensure the correct file structure.

---

## Roadmap Note
A direct “install from arbitrary path” command (e.g., `bmad install-module --source /path/to/pack`) is planned for v6, but until then, syncing into `src/modules/` is the supported path.

---

## Quick Checklist
- [ ] Create a new pack folder at this repo root
- [ ] Add `_module-installer/install-config.yaml` with unique `code`
- [ ] Author agents/workflows via builder workflows
- [ ] Rsync packs into `/home/dneighbors/Public/BMAD-METHOD/src/modules/`
- [ ] Run installer into target project with `--ides cursor`


