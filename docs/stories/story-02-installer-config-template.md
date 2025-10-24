# Story 2: Provide Installer Config Template

**Epic:** E1 — Repository Structure and Installer Metadata  
**Epic Reference:** [docs/epics/01-repo-structure-and-metadata.md](../epics/01-repo-structure-and-metadata.md)  
**Priority:** P1  
**Story Points:** 2  
**Assigned:** Unassigned  
**Status:** Backlog

---

## User Story

As a maintainer, I want a boilerplate `_module-installer/install-config.yaml` so new packs start with correct fields.

---

## Acceptance Criteria

1. Template file created at `docs/templates/install-config-template.yaml`
2. Includes all required fields: `code`, `name`, `description`, `version`, `default_selected`, `dependencies`
3. Includes inline comments explaining each field
4. Includes example values with placeholders
5. Referenced in README or EXPANSIONS-SETUP.md

---

## Notes

- Simplifies pack creation by providing copy-paste template
- Reduces configuration errors

---

_Created by John (PM) on 2025-10-24_

