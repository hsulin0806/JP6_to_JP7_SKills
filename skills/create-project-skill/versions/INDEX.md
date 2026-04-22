# create-project-skill Version Index

## Description

This file tracks important version updates to `create-project-skill` itself.

If a change only affects one generated project skill instance, record it under that project's own `versions/`.

---

## v1.0.0

### Contents
- Created `SKILL.md`
- Created `prompts/intake.md`
- Created `prompts/skill_builder.md`
- Created `prompts/merger.md`
- Created project-skill templates
- Created `templates/version_entry_template.md`
- Created `versions/INDEX.md`

### Core Capabilities
- Create project skills
- Update existing project skills
- Preserve failure knowledge
- Preserve correction layer
- Support versioning

### Notes
- Initial release focuses on OpenClaw project handoff
- Focus is project execution knowledge transfer

---

## v1.0.1

### Contents
- Fixed markdown wrapper and leading delimiter issue in `prompts/merger.md`
- Removed non-content wrapper from `prompts/skill_builder.md`
- Rebuilt `prompts/skill_builder.md` into valid, complete standalone prompt
- Normalized `versions/INDEX.md` to plain markdown format

### Core Improvements
- Avoid YAML parser errors caused by malformed markdown wrappers
- Ensure prompt files are directly consumable as plain markdown

### Notes
- This update is format/quality focused and keeps the same functional scope
