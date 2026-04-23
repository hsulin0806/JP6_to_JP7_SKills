# create-project-skill

## Purpose

`create-project-skill` is a skill used by OpenClaw to distill completed or ongoing projects into project skills that are handoff-ready, verifiable, updatable, and rollback-capable.

Its purpose is not to generate an ordinary summary, but to allow the next AI Agent to take over the project directly, continue from existing experience, and avoid having to rediscover everything from scratch.

---

## Applicable Scenarios

This is suitable for the following scenarios:

- Capturing and handing down project experience after a project is completed
- Building an updatable working skill while a project is still in progress
- Integrating information such as README, docs, validation, logs, Dockerfile, and scripts into a single project entry point
- Enabling a new AI Agent to quickly understand the background, workflow, validation rules, and failure knowledge after entering the repo

---

## Main Inputs

- README
- docs
- validation
- COMMAND_LOG
- DECISION_LOG
- Dockerfile
- scripts
- existing skills
- issues / PRs / supplementary documents
- user correction feedback

---

## Main Outputs

Each project will be output to:

`~/.openclaw/workspace/skills/projects/<project-slug>/`

including:

- `SKILL.md`
- `QUICKSTART.md`
- `CHECKLIST.md`
- `DECISIONS.md`
- `FAILURES.md`
- `VALIDATION_RULES.md`
- `EVIDENCE_INDEX.md`
- `ENVIRONMENT.md`
- `SOURCES.md`
- `CORRECTIONS.md`
- `versions/`

---

## Main Modes

### Create
- `/create-project-skill <project-slug>`

### Update
- `/update-project-skill <project-slug>`

### Correct
- `/correct-project-skill <project-slug>`

### List
- `/list-project-skills`

### Rollback
- `/project-skill-rollback <project-slug> <version>`

---

## Core Principles

1. Without evidence, it is not considered complete
2. Without failure knowledge, it is not considered handoff-ready
3. Without validation rules, it is not considered deliverable
4. Without sources, it is not considered traceable
5. Without versioning, it is not considered sustainably evolvable

---

## Directory Structure

```text
create-project-skill/
├── SKILL.md
├── README.md
├── prompts/
│   ├── intake.md
│   ├── skill_builder.md
│   └── merger.md
├── templates/
│   ├── project_skill_template.md
│   ├── checklist_template.md
│   ├── quickstart_template.md
│   ├── decisions_template.md
│   ├── failures_template.md
│   ├── validation_rules_template.md
│   ├── evidence_index_template.md
│   ├── environment_template.md
│   ├── sources_template.md
│   ├── corrections_template.md
│   └── version_entry_template.md
└── versions/
    └── INDEX.md
