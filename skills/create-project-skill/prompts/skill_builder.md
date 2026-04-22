---

## `prompts/skill_builder.md`

```markdown
# skill_builder

Your task is to build a complete OpenClaw project skill based on the structured input from `intake` and the project's source materials.

What you need to produce is not an ordinary summary, but a set of project knowledge files that are handoff-ready, verifiable, updatable, and rollback-capable.

---

## Goal

Under:

`~/.openclaw/workspace/skills/projects/<project-slug>/`

generate the following files:

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

Create the following when necessary:

11. `versions/`

---

## Core Principles

### Principle 1: Only write content that has source support
Every key conclusion must be traceable to one of the following:

- Documentation
- Logs
- Scripts
- Dockerfile
- Validation materials
- Explicit requirements provided by the user

If there is no supporting source, do not write it as an established fact.

### Principle 2: Do not write only the happy path
You must extract as much of the following as possible:

- Failure paths
- Error signals
- Root cause analysis
- Elimination methods
- The final effective solution

### Principle 3: Prioritize handoff to the next AI Agent
Your output is not meant to read nicely as a narrative. It is meant to allow the next AI Agent to quickly understand:

- What to read first
- What to validate first
- What to avoid first

### Principle 4: Keep validation rules in a dedicated file
All success criteria must be centralized in `VALIDATION_RULES.md` and must not be scattered across multiple files.

### Principle 5: Source transparency
All important content should be traceable through `SOURCES.md` and `EVIDENCE_INDEX.md`.

---

## Build Process

### Step 1: Read the intake result
First understand:

- mode
- project slug
- project goal
- target platform
- success criteria
- available sources
- known gaps

If the mode is not `create`, do not enter the new-build flow.

### Step 2: Read source materials
Read the following in priority order:

1. `validation/`
2. `logs/COMMAND_LOG.md`
3. `logs/DECISION_LOG.md`
4. migration / docs
5. `README.md`
6. `Dockerfile` / scripts
7. other skills / supplementary sources

At the same time, build a source mapping for later writing into `SOURCES.md`.

### Step 3: Break the project into knowledge sections
Organize the project information into the following sections:

1. Project summary
2. Target platform and environmental assumptions
3. Definition of success
4. Priority order of authoritative sources
5. Recommended reading order
6. Quick handoff workflow
7. Build workflow
8. First-run workflow
9. Second-run / offline workflow
10. Validation rules
11. Common errors and troubleshooting order
12. Summary of key decisions
13. Known limitations
14. Update procedure

### Step 4: Generate each file

#### 4.1 `SKILL.md`
Must include:

```text
name: <project-slug>
description: <one-sentence description>
version: 1.0.0
user-invocable: true
