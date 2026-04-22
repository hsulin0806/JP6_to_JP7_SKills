# skill_builder

Your task is to build a complete OpenClaw project skill from structured intake output and project source materials.

Do not write a generic summary. Build handoff-ready, verifiable, update-friendly, rollback-friendly project knowledge files.

---

## Goal

Under:

`~/.openclaw/workspace/skills/projects/<project-slug>/`

generate:

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
11. `versions/` (when applicable)

---

## Core Principles

### Principle 1: Source-backed content only
Every key conclusion must map to evidence (docs, logs, scripts, Dockerfile, validation artifacts, or explicit user requirements).

### Principle 2: Preserve failure knowledge
Capture failure paths, error signals, root causes, rejected approaches, and final effective fixes.

### Principle 3: Optimize for next-agent takeover
Prioritize fast takeover: what to read first, run first, validate first, and avoid first.

### Principle 4: Centralize success criteria
Keep completion criteria in `VALIDATION_RULES.md`.

### Principle 5: Keep traceability
Keep source traceability through `SOURCES.md` and `EVIDENCE_INDEX.md`.

---

## Build Process

### Step 1: Validate intake
Confirm intake includes:

- mode (`create`)
- project slug
- project goal
- target platform
- success criteria
- available sources
- known gaps

If mode is not `create`, stop and route to update/correction flow.

### Step 2: Read sources in priority order
1. `validation/`
2. `logs/COMMAND_LOG.md`
3. `logs/DECISION_LOG.md`
4. migration/technical docs
5. `README.md`
6. `Dockerfile` and scripts
7. existing skills and supplemental files

Build source mapping while reading.

### Step 3: Distill into required knowledge sections
Classify into:

1. project summary
2. target platform and environment assumptions
3. definition of success
4. source authority order
5. reading order for handoff
6. quick handoff flow
7. build flow
8. first-run flow
9. second-run/offline flow
10. validation rules
11. troubleshooting and common errors
12. key decisions
13. known limitations
14. update procedure

### Step 4: Generate each output file

#### `SKILL.md`
Include frontmatter and execution guidance.

Required frontmatter example:

```text
name: <project-slug>
description: <one-sentence purpose>
version: 1.0.0
user-invocable: true
```

#### `QUICKSTART.md`
Focus on minimal takeover path.

#### `CHECKLIST.md`
Provide operational validation checklist.

#### `DECISIONS.md`
Record high-value decisions with problem/options/choice/reason/tradeoff/validation.

#### `FAILURES.md`
Record symptoms/root-cause/wrong-path/fix/prevention.

#### `VALIDATION_RULES.md`
Define pass/fail criteria and evidence expectations.

#### `EVIDENCE_INDEX.md`
Index logs/screenshots/output/artifacts/commits/image tags.

#### `ENVIRONMENT.md`
Record hardware/software/runtime fingerprint.

#### `SOURCES.md`
List source path/type/purpose/authority level.

#### `CORRECTIONS.md`
Initialize correction layer if none exists.

### Step 5: Self-check before completion
Do not mark complete unless all are true:

1. Success definition exists
2. Source authority order exists
3. Validation rules exist
4. Failure knowledge exists
5. Evidence index exists
6. Environment fingerprint exists
7. Quickstart path exists
8. Next AI agent can directly take over

### Step 6: Versioning
Create initial version record (`v1.0.0`) with:

- created files
- source baseline
- date
- summary

---

## Output Requirements

At completion, provide:

1. generated file list
2. key evidence summary
3. unresolved gaps (`Data Needed`)
4. initial version record summary
