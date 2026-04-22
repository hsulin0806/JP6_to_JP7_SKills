name: create-project-skill
description: Distill projects previously executed by the OpenClaw AI Agent into project skills that can be handed off, updated, and rolled back, enabling future AI agents to take over quickly and continue iterating.
argument-hint: [project-slug]
version: 1.0.0
user-invocable: true
allowed-tools: Read, Write, Edit, Bash

# create-project-skill

## Purpose

This Skill is designed to distill a project that has already been executed, or is currently in progress, into a reusable project Skill that a future AI Agent can directly take over.

The core goal of this Skill is not to generate a summary, but to produce reusable project execution capability, so that the next AI Agent can quickly understand:

1. What the project is supposed to accomplish
2. How far the project has progressed
3. Which approaches have already been validated as effective
4. Which paths have failed and should not be repeated
5. How to continue moving the project forward instead of starting over from scratch

## Bundled Resources (must-use)

Use these files under this skill folder instead of external loose files:

- `prompts/intake.md` - intake and mode classification
- `prompts/skill_builder.md` - create-mode builder workflow
- `prompts/merger.md` - update/correction merge workflow
- `templates/*.md` - canonical output templates for generated project-skill files
- `versions/INDEX.md` - version changelog for this skill itself
- `universal_project_execution_prompt.md` - reusable project execution baseline prompt
- `README.md` - package-level purpose, scenarios, and structure

When creating/updating a project skill, load `prompts/intake.md` first, then choose `skill_builder.md` or `merger.md` by mode.

---

## Applicable Scenarios

Trigger this Skill when the user asks for any of the following:

- "Help me organize this project into a handoff-ready Skill"
- "Help me distill the experience from the OpenClaw project"
- "Create a project handoff skill"
- "Help me organize this repo into a format that the next AI Agent can take over"
- `/create-project-skill`
- `/create-project-skill <project-slug>`

Enter **update mode** when the user says any of the following:

- "Help me update this project Skill"
- "I have new documents to add"
- "Add new validation results"
- "Include the pitfalls we ran into this time as well"
- `/update-project-skill <project-slug>`

Enter **correction mode** when the user says any of the following:

- "That earlier conclusion was incorrect"
- "This workflow is outdated"
- "This is not the authoritative approach"
- "It should be changed to this version instead"
- `/correct-project-skill <project-slug>`

Enter **query mode** when the user says any of the following:

- `/list-project-skills`
- "List all project Skills"
- "What project skills are available"

Enter **rollback mode** when the user says any of the following:

- `/project-skill-rollback <project-slug> <version>`

---

## Core Principles

### Principle 1: This Skill distills project capability, not personality

The output must focus on:

- Project background
- Environmental assumptions
- Build process
- Execution process
- Acceptance criteria
- Known issues
- Key decisions
- Recommendations for future iteration

Do not focus on tone imitation, personality style, or catchphrases.

### Principle 2: Nothing may be declared complete without evidence

Any conclusion labeled as "completed," "validated," or "passed" must correspond to verifiable evidence, such as:

- Validation documents
- Logs
- Commands
- Commits
- Screenshots
- Output files
- Concrete content within the repo

### Principle 3: Preserve failure knowledge, not just successful paths

The most valuable knowledge in project handoff is often not the successful commands, but:

- Which paths failed
- Why they failed
- How to recognize that they failed
- Which alternative approach actually worked

### Principle 4: Apply incremental updates instead of overwriting validated knowledge

When new documents, logs, test results, or corrections are added:

- Compare the differences first
- Then merge incrementally
- Do not overwrite existing conclusions directly
- If conclusions conflict, the conflict must be recorded in the correction layer

### Principle 5: A new AI Agent must be able to take over quickly

The final project Skill must allow a future AI Agent to identify in the shortest possible time:

- Which file to read first
- Which validation to perform first
- Which environment conditions to confirm first
- Which pitfalls to avoid first

---

## Priority Order of Authoritative Sources

If different sources conflict, determine truth using the following priority order:

1. Validation results under `validation/`
2. `logs/COMMAND_LOG.md` and `logs/DECISION_LOG.md`
3. `docs/JP6_to_JP7_MIGRATION_NOTES.md` or other migration-related documents
4. Other project technical documents and execution instructions
5. Existing skill files under `.openclaw/skills/`
6. `README.md`
7. The user's verbal supplemental description

If sources conflict and the issue cannot be resolved, it must be explicitly marked as **"Pending Confirmation"**. Do not guess.

---

## Input Sources

Prioritize collecting the following sources:

### High Priority

- `README.md`
- `docs/*.md`
- `validation/*.md`
- `logs/COMMAND_LOG.md`
- `logs/DECISION_LOG.md`
- `Dockerfile`
- `docker-compose.yml`
- `scripts/*.sh`
- `.openclaw/skills/*`
- Commit messages
- Issues / PRs / discussion records

### Medium Priority

- Terminal transcripts
- Screenshots
- Test output results
- PDFs
- Exported chat records

### Low Priority

- Casual conversation unrelated to the project
- Stylistic descriptions
- Subjective speculation that cannot be tied to evidence

---

## Output Targets

After this Skill is completed, the following files must be generated under:

`~/.openclaw/workspace/skills/projects/<project-slug>/`

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

---

## Definition of Each Output File

### `SKILL.md`

The main entry point for future AI Agents. It should include:

- Project summary
- Target platform and environmental assumptions
- Definition of success
- Priority order of authoritative sources
- Recommended reading order
- Quick handoff workflow
- Build workflow
- First-run workflow
- Second-run / offline workflow
- Acceptance criteria
- Common errors and troubleshooting order
- Summary of key decisions
- Known limitations
- Update procedure

### `QUICKSTART.md`

Designed to help a future AI Agent take over in the shortest possible time. It should include:

- Which files to read first
- Which environment checks to perform first
- Which commands to run first
- Which results to validate first

### `CHECKLIST.md`

Used for step-by-step verification during handoff and execution. It should include:

- Environment checks
- Build checks
- Startup checks
- Second-run checks
- Offline checks
- Camera / MP4 checks
- Evidence checks

### `DECISIONS.md`

Record only high-value decisions, using the following fixed format:

- Problem
- Candidate options
- Final choice
- Reason for the choice
- Trade-offs
- Validation method

### `FAILURES.md`

Record only failure knowledge, using the following fixed format:

- Symptom
- Root cause
- Incorrect path
- Eliminated methods
- Correct fix
- Preventive measure for the future

### `VALIDATION_RULES.md`

Defines what counts as complete. It should include:

- Mandatory pass conditions
- Validation commands
- Expected behavior
- Evidence location
- Failure criteria

### `EVIDENCE_INDEX.md`

Indexes all verifiable evidence. It should include:

- Log files
- Screenshots
- Output results
- Commits
- Image tags
- Locations of related documents

### `ENVIRONMENT.md`

Records the operational fingerprint of the project. It should include:

- JetPack / L4T
- CUDA
- TensorRT
- cuDNN
- Docker
- NVIDIA Container Toolkit
- Hardware model
- Camera model
- MP4 specifications
- Image tag
- Git commit hash

### `SOURCES.md`

Records all sources used in this distillation. It should include:

- File path
- Source type
- Purpose of use in the summary
- Whether it is an authoritative source

### `CORRECTIONS.md`

Records subsequent corrections. It should include:

- Previous conclusion
- New conclusion
- Reason for correction
- Effective version
- Whether other files are affected

---

## Main Workflow

### Step 1: Confirm the project identifier

If the user has not provided a `project-slug`, first obtain:

1. Project name
2. Project directory
3. Project's primary goal
4. Project platform
5. Whether logs / validation / docs already exist

If the user has already provided the `project-slug`, proceed directly to source collection.

### Step 2: Source scanning

Scan all files and data sources in the project that may be relevant to handoff, and prioritize organizing the following:

- Technical documents
- Validation documents
- Command execution records
- Decision records
- Docker / scripts
- Upstream and downstream reference information
- Existing Skill files

Create a source inventory and write it to `SOURCES.md`.

### Step 3: Classification and distillation

Break the sources into the following categories:

1. Project background
2. Environmental assumptions
3. Build / run workflow
4. Acceptance criteria
5. Failure knowledge
6. Key decisions
7. Known limitations
8. Recommendations for future iteration

If information in any category is insufficient, it must be marked as **"Data Needed"**. Do not make things up.

### Step 4: Build the project Skill

Generate the following according to the template:

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

### Step 5: Self-validation

After generation, verify the following:

1. Whether a definition of success is included
2. Whether the authoritative source order is included
3. Whether acceptance criteria are included
4. Whether failure knowledge is included
5. Whether an evidence index is included
6. Whether an environment fingerprint is included
7. Whether a quickstart is included
8. Whether the next AI Agent can take over directly

If any item is missing, the Skill must not be declared complete.

### Step 6: Versioning

Create a version folder and version record.

After each creation or update:

- Generate a new version number
- Save the previous version's content
- Write an update summary

---

## Update Mode

When the user requests an update to an existing project Skill:

1. Read the existing `SKILL.md` and related output files first
2. Compare the new sources with the old knowledge
3. Merge new information into the corresponding sections
4. Do not overwrite validated conclusions
5. If conflicts arise, write them into `CORRECTIONS.md`
6. Generate a new version
7. Update `versions/`

---

## Correction Mode

When the user indicates that existing content is incorrect:

1. Identify the affected files and sections
2. Compare the user's correction with the existing authoritative sources
3. If the correction is valid:
   - Update the corresponding files
   - Write the correction into `CORRECTIONS.md`
   - Create a new version
4. If the correction lacks evidence:
   - Mark it as pending confirmation
   - Do not directly overwrite the existing conclusion

---

## Rollback Mode

When the user requests a rollback of the project Skill:

1. List available versions
2. Confirm the target version
3. Roll back the corresponding output files
4. Write a rollback record
5. Preserve a snapshot of the current version

---

## List Mode

When the user requests a list of all project Skills, list the following:

- Project slug
- Version
- Last updated time
- Project summary
- Whether validation exists
- Whether corrections exist
- Whether it is ready for handoff

---

## Formatting Requirements for Generated Content

### A project Skill should look like this

The beginning of each project's `SKILL.md` must include:

```text
name: <project-slug>
description: <A one-sentence description of the purpose of this project Skill>
version: <version>
user-invocable: true
