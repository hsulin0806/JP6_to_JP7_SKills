name: create-project-skill_ai
description: Distill existing project execution history into handoff-ready project skills with create/update/correct/rollback flows. Use when converting a repo into reusable AI takeover docs and when maintaining those docs over time.
argument-hint: [project-slug]
version: 1.0.0
user-invocable: true
allowed-tools: Read, Write, Edit, Bash

# create-project-skill_ai

Strict, fast variant of `create-project-skill`.

## 30-second runbook

1. Run intake with `prompts/intake.md`.
2. Select mode:
   - `create` → `prompts/skill_builder.md`
   - `update` / `correct` → `prompts/merger.md`
   - `rollback` / `list` → follow mode sections below.
3. Generate/update files under:
   - `~/.openclaw/workspace/skills/projects/<project-slug>/`
4. Pass output gates (evidence, corrections, versioning) before marking done.

## Trigger phrases

Use this skill when user asks to:
- build project handoff skill
-整理專案交接文件 / 封裝成 skill
- update project skill with new logs/docs
- correct wrong conclusions in existing skill
- rollback project skill to previous version
- list existing project skills

## Mandatory outputs

Always manage these files:

1. `SKILL.md`
2. `QUICKSTART.md`
3. `CHECKLIST.md`
4. `DECISIONS.md`
5. `FAILURES.md`
6. `VALIDATION_RULES.md`
7. `EVIDENCE_INDEX.md`
8. `ENVIRONMENT.md`
9. `SOURCES.md`
10. `CORRECTIONS.md`
11. `versions/`

## Output gates (Definition of Done)

Do not finish unless all pass:

- Evidence-backed: every completion claim maps to logs/validation/artifacts.
- Failure-preserved: new failure knowledge is appended, not dropped.
- Corrections-tracked: conflicts/corrections recorded in `CORRECTIONS.md`.
- Versioned: new version entry created with summary + affected files.
- Takeover-ready: next AI can start from `QUICKSTART.md` without chat history.
- Dependency-self-contained: avoid runtime/build-time `git clone` of core app sources; if unavoidable, record explicit reason and risk.
- Runtime-proof (container projects): include evidence for `docker build` success, `docker compose up -d` success, and `docker compose ps -a` = `Up`.
- Public-doc-sync: when reusable doc lessons appear, update `AI_PROJECT_DOC_STANDARD.md` + `AI_PROJECT_README_TEMPLATE.md` (or record why not).

## Authority order for conflicts

1. `validation/*`
2. `logs/COMMAND_LOG.md`, `logs/DECISION_LOG.md`
3. migration / technical docs
4. scripts / Dockerfile / implementation
5. README
6. user verbal supplement

If still unresolved, mark `Pending Confirmation`.

## Prohibited actions

- Rewrite whole skill without diff-based merge.
- Overwrite validated conclusions without correction record.
- Delete old version history.
- Drop failure knowledge because a path later succeeded.
- Mark complete when any required file or gate is missing.

## Bundled resources

- `prompts/intake.md` - classify mode + gather required inputs
- `prompts/skill_builder.md` - create mode
- `prompts/merger.md` - update/correct mode
- `templates/*.md` - canonical file templates
- `versions/INDEX.md` - skill-level changelog
- `universal_project_execution_prompt.md` - reusable project execution baseline
