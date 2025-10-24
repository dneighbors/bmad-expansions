# BMAD Expansions

Container repository for multiple BMAD modules (expansion packs).

Each pack is a top-level folder (e.g., `code-review`, `analytics`).
Inside each pack:
- agents/ (\*.agent.yaml)
- workflows/
- tasks/ (optional)
- templates/ (optional)
- data/ (optional)
- _module-installer/install-config.yaml (required)

Workflow: develop here → sync into BMAD src/modules → install to target project.

Next steps:
1) Create your first pack folder at repo root (e.g., `code-review`).
2) Add `_module-installer/install-config.yaml` with a unique `code`.
3) Author agents/workflows, then sync to BMAD and run installer.
