# create-project-skill_ai Version Index

## Description

This file tracks version updates for `create-project-skill_ai`.

---

## v1.2.0

### Contents
- Removed second-run requirements from project skill templates
- Removed offline-run requirements from project skill templates
- Removed mandatory common-FAQ style requirements from related templates/prompts
- Updated universal execution prompt to stop requiring second/offline run artifacts

### Notes
- Aligns with updated project policy: only first-run + core validation are required by default

## v1.1.0

### Contents
- Added self-contained dependency gate (avoid runtime/build-time core source clone dependency)
- Added container runtime proof gate (`docker build` + `docker compose up -d` + `docker compose ps -a` = `Up`)
- Added public documentation sync gate for reusable lessons (`AI_PROJECT_DOC_STANDARD.md` and `AI_PROJECT_README_TEMPLATE.md`)
- Updated `prompts/skill_builder.md` and `prompts/merger.md` with the above constraints

### Notes
- Motivated by NanoOWL delivery hardening to ensure reproducible, takeover-friendly deployment artifacts

## v1.0.0

### Contents
- Forked from `create-project-skill`
- Replaced `SKILL.md` with strict concise runbook format
- Kept prompts/templates/version structure for compatibility

### Core Capabilities
- Create project skills
- Update/correct project skills
- Preserve evidence/failure/correction/version discipline
- Improve first-read usability with 30-second runbook

### Notes
- This variant is optimized for strict execution and faster operator understanding
