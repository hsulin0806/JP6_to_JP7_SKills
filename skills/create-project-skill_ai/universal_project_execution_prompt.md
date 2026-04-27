# Universal Project Execution Prompt for OpenClaw AI Agent

You are now executing a real project that must be completed and delivered in practice, not merely doing analysis, summarization, or giving suggestions.

First, read `project_vars.env` in the same directory and expand all variables in it as the formal specification source for this task.
If any fields are missing in `project_vars.env`, explicitly mark them as missing. Do not make assumptions.

---

## Task Positioning

Using `${REFERENCE_SOURCE}` as the upstream reference, complete a `${PROJECT_TYPE}` project in the new project directory.

### Project Name
`${PROJECT_NAME}`

### Project Goal
`${PROJECT_GOAL}`

### Source Baseline
`${SOURCE_BASELINE}`

### Target Platform
`${TARGET_PLATFORM}`

### Target Version
`${TARGET_VERSION}`

### Persistent Root Directory
`${PERSISTENT_ROOT}`

### Private Repository
`${PRIVATE_REPO}`

---

## Core Working Mode

You must treat this task as **deliverable project execution**, not a purely research-oriented task.

You need to complete all of the following:

1. Project implementation
2. Preservation of validation evidence
3. Capture of failure knowledge
4. Capture of decision knowledge
5. Structured knowledge that can be handed off to the next AI Agent

---

## Important Rules

1. The upstream project is a reference baseline and does not need to remain completely unchanged.
2. If the upstream workflow is insufficient to achieve the goal, you may add the following in the new project:
   - `docker/`
   - `scripts/`
   - `app/`
   - `tools/`
   - `patches/`
   - `entrypoint`
   - wrapper code
3. All additions, modifications, and trade-offs must be documented and recorded in decision logs.
4. If `${REQUIRE_CONTAINER}` is `true`, the executable program must be packaged inside a Docker image.
5. Except for mounted data, models, caches, and output directories, execution must not depend on source code or pre-staged program files on the host.
6. Every declaration of "completed" or "validated" must include:
   - the corresponding command
   - return code or success signal
   - log summary
   - artifact location
   - version or image tag
7. If information is insufficient, it must be marked as pending completion. Do not fabricate anything.
8. Do not stop because one path fails. You must continue searching for alternatives.
9. Do not preserve only successful experience. You must also capture failure knowledge.

---

## Step 0: Mandatory Work Before Starting

Before doing any build, run, patch, download, conversion, or validation, first collect and write the following file:

`validation/ENVIRONMENT_FINGERPRINT.md`

It must record at least:

- OS / platform version
- Core runtime versions
- Container-related versions (if applicable)
- Hardware model
- Important peripheral or input-source models
- Test asset specifications
- Image tag / artifact tag (if applicable)
- Git commit hash
- Network status and test connectivity conditions

Until Step 0 is completed, you must not declare that formal validation has started.

---

## Hard Validation Requirements

1. Before the first run, the host must not need any pre-staged project files unless `project_vars.env` explicitly states such prerequisites.
2. During the first run, necessary downloading, building, conversion, initialization, and loading are allowed. After completion, all required artifacts must be stored in:
   `${PERSISTENT_ROOT}/${PROJECT_NAME}`
3. All validations listed in `${INPUT_VALIDATIONS}` must be completed.
4. If `${REQUIRE_CONTAINER}` is `true`, the formal delivery must be container-based. A temporary success achieved only through an interactive shell is not acceptable.
5. After completion, push to `${PRIVATE_REPO}`. If pushing is not possible, you must still reach a ready-to-push state.

---

## Required Output Files

1. `README.md`
   It must include at least:
   - Overview
   - Features
   - Directory Layout
   - Build
   - First Run
   - Validation
   - See Also

2. `docs/BUILD_AND_RUN_GUIDE.md`
   - The full process from environment setup, build, startup, and validation

3. `docs/MIGRATION_OR_IMPLEMENTATION_NOTES.md`
   - Must record:
     - Differences from upstream
     - Pitfalls encountered
     - Failed approaches
     - Successful approaches
     - Key decisions
     - Why the current solution was adopted

4. `.openclaw/skills/project_upgrade/SKILL.md`
   - A skill document written for the next AI Agent
   - It must include:
     - Task judgment
     - Environment assumptions
     - Recommended workflow
     - Troubleshooting order
     - Validation checklist
     - Priority order of authoritative sources

5. `.openclaw/skills/project_upgrade/CHECKLIST.md`

6. `.openclaw/ENTRYPOINT_FOR_NEW_AGENT.md`

7. `validation/`
   - `FIRST_RUN.md`
   - `${INPUT_VALIDATION_FILE_1}`
   - `${INPUT_VALIDATION_FILE_2}`
   - `ENVIRONMENT_FINGERPRINT.md`

8. `logs/COMMAND_LOG.md`

9. `logs/DECISION_LOG.md`

---

## Execution Requirements

1. Continue pushing the task forward and do not stop because a single path fails.
2. After completing each step, immediately report:
   - current step
   - executed command
   - result
   - artifact location
   - next step
3. If a failure occurs, you must report:
   - symptom
   - root cause assessment
   - methods already ruled out
   - next alternative approach
4. If the original design direction is changed, you must also record it in `logs/DECISION_LOG.md`
5. If formal validation is completed, you must also write it into the corresponding `validation/*.md`
6. If a corrective path is found after failure, it must also be captured in the migration notes and skill documents

---

## Priority Order of Authoritative Sources

If documents conflict, follow this order:

1. `validation/`
2. `logs/COMMAND_LOG.md` and `logs/DECISION_LOG.md`
3. `docs/MIGRATION_OR_IMPLEMENTATION_NOTES.md`
4. `.openclaw/skills/*`
5. `README.md`

---

## Validation Evidence Requirements

### FIRST_RUN.md
It must record:
- First-run command
- Download, build, conversion, initialization, and loading workflow
- Artifact locations
- Version or image tag used

### Each INPUT VALIDATION file
It must include:
- Test command
- Test input
- Expected result
- Actual result
- Output location
- Version or image tag used

### ENVIRONMENT_FINGERPRINT.md
It must fully record the environment and version fingerprint.

---

## Degraded Requirements When Push Fails

If pushing fails because of permissions, token issues, SSH key issues, or other credential problems, you must still complete all file organization and provide:

- ready-to-push status
- branch name
- local commit hash
- recommended commit message
- output of `git remote -v`
- `git push` command
- the missing permission or credential items

Failure to push must not stop the completion of other deliverables.

---

## Final Definition of Completion

This task is considered complete only when all of the following are true:

- The project runs normally on `${TARGET_PLATFORM}` / `${TARGET_VERSION}`
- All `${INPUT_VALIDATIONS}` have passed
- README / guides / notes / SKILL / CHECKLIST / ENTRYPOINT / validation documents are complete
- Every "completed" or "validated" conclusion includes commands, log summaries, and artifact locations
- The code and documents have been pushed to the designated repository, or a ready-to-push state has been reached with the blocking reason fully documented

---

## How to Start

Now do these two things first:

1. Read and expand `project_vars.env`
2. Immediately execute Step 0 and create `validation/ENVIRONMENT_FINGERPRINT.md`

Then begin formally advancing the project.
