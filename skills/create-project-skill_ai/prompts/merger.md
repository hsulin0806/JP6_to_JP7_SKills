# merger

Your task is to incrementally merge new project information into an existing OpenClaw project skill.

You are not rewriting the entire document set. Instead, you must preserve validated knowledge, place new content into the correct locations, and write to the correction layer and a new version when necessary.

---

## Goal

Perform an incremental update on the existing:

`~/.openclaw/workspace/skills/projects/<project-slug>/`

while preserving its properties of being:

- Handoff-ready
- Verifiable
- Traceable
- Rollback-capable

---

## Input

You will receive:

1. Existing project skill files
2. Newly added source materials
3. An instruction indicating update mode or correction mode
4. Potentially conflicting information

---

## Core Principles

### Principle 1: Preserve validated conclusions
If existing content is already supported by strong evidence, it must not be directly overwritten merely because of a new description.

### Principle 2: Classify new content before merging
All new information must first be categorized into one of the following:

- Project summary update
- Environment change
- New build/run workflow
- New validation evidence
- New failure knowledge
- New decision
- Correction to an old conclusion
- Change in known limitations

### Principle 3: Conflicts must be handled explicitly
If new and old content conflict:

1. Identify the source for both sides
2. Judge based on the authority order
3. If the new source is more authoritative, update the main documents and write to `CORRECTIONS.md`
4. If it cannot be determined, mark it as pending confirmation and do not overwrite directly

### Principle 4: Every update must be versioned
Any successful merge must:

- Generate a new version number
- Preserve a snapshot of the previous version
- Write an update summary

---

## Merge Workflow

### Step 1: Read the existing state
Read:

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

Understand the current knowledge boundary and version status.

### Step 2: Read the newly added sources
Classify the new sources into:

1. New validation results
2. New command records
3. New decisions
4. New failure cases
5. New environment information
6. New correction information
7. New documents or new scripts

### Step 3: Perform difference analysis
For each new item, determine whether it is:

- Supplementary
- An update
- A conflict
- A duplicate
- Noise

### Step 4: Execute the merge

#### Supplement
Add it directly to the appropriate location in the corresponding file.

#### Update
If the new information is more complete than the old information but does not conflict, upgrade the relevant section.

#### Conflict
Handle it according to the authoritative source order. When necessary:

- Update the main documents
- Write to `CORRECTIONS.md`
- Mark the impact scope

#### Duplicate
Do not write it again; only add it to the source index.

#### Noise
Do not include it in the main documents. It may be ignored.

### Step 5: Update each file

#### `SKILL.md`
Update only when the main entry knowledge changes.

#### `QUICKSTART.md`
Update only when the handoff steps, execution order, or core entry points change.

#### `CHECKLIST.md`
Update only when the validation steps or execution checklist changes.

#### `DECISIONS.md`
Add valid new decisions without deleting old ones. If an old decision is no longer valid, mark its status.

#### `FAILURES.md`
Add new failure cases and their fixes.

#### `VALIDATION_RULES.md`
If the definition of success or validation method changes, update this file.

#### `EVIDENCE_INDEX.md`
Add the locations of new evidence.

#### `ENVIRONMENT.md`
If versions, hardware, or runtime change, update this file while preserving records of old values.

#### `SOURCES.md`
Add new sources.

#### `CORRECTIONS.md`
All critical corrections must be written here.

### Step 6: Create a version
Create a new version folder or version record that includes at least:

- Old version
- New version
- Update time
- Update summary
- Affected files

---

## Conflict Resolution Rules

If new and old information conflict, determine priority using the following order:

1. Validation evidence
2. Command / decision logs
3. Migration or technical documentation
4. Scripts / Dockerfile / concrete implementation
5. README
6. User’s verbal description

If it still cannot be determined, mark it as:

`Pending Confirmation`

Do not force a conclusion.

---

## Special Rules for Correction Mode

If this run is in correction mode:

1. The old conclusion must be preserved
2. The new conclusion must be recorded
3. The reason for correction must be written
4. The effective version must be marked
5. It must indicate whether the correction affects:
   - quickstart
   - validation
   - environment
   - decisions
   - failures

---

## Output Requirements

After the merge is complete, at minimum output:

1. Update summary
2. List of modified files
3. List of newly added sources
4. Whether any conflicts occurred
5. Whether corrections were written
6. The new version number

---

## Prohibited Actions

Do not:

- Directly rewrite the entire project skill
- Overwrite validated conclusions without leaving a trace
- Delete failure knowledge
- Delete old version information
- Secretly modify corrections without recording them
- Promote unsupported new statements into main conclusions

---

## Definition of Completion

The merge is considered complete only if all of the following conditions are met:

1. The new information has been correctly classified
2. Existing knowledge has not been overwritten without trace
3. Conflicts have been handled or marked
4. `SOURCES.md` has been updated
5. `CORRECTIONS.md` has been updated
6. A new version has been created
7. A future AI Agent can still take over clearly
