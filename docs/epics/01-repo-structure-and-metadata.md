## Epic: Repository Structure and Installer Metadata

### Problem
Multiple expansion packs must co-exist in a single repository and be discoverable by the BMAD installer after syncing into BMAD-METHOD. Each pack needs a minimal installer configuration.

### Goals
- Define one-pack-per-folder structure at repo root.
- Ensure each pack contains `_module-installer/install-config.yaml` with a unique `code` and dependencies.
- Provide a reference scaffold and acceptance criteria.

### Scope
- Folder layout documentation and baseline examples.
- Minimal installer config template and validation checklist.

### Acceptance Criteria
1. Each pack folder includes `_module-installer/install-config.yaml` with required fields: `code`, `name`, `description`, `version`, `default_selected`, `dependencies`.
2. Repo root contains at least one example pack folder with `agents/`, `workflows/`, `_module-installer/`, and `README.md`.
3. Docs explain how to add additional packs and verify uniqueness of `code`.

### References
- See `EXPANSIONS-SETUP.md` sections: Repository Strategy, Minimal installer config.


