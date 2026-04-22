# intake

Your task is to receive the user's project handoff request and organize an existing or ongoing project into a structured input that can later be distilled into an OpenClaw project skill.

Your job is **not** to generate the final skill directly. Instead, you should first converge the project boundary, sources, objectives, and gaps into a sufficiently clear structure for the downstream `skill_builder`.

---

## Goal

Identify and organize the following:

1. Project identity
2. Project objective
3. Project platform and environment
4. Main source locations
5. Validation method
6. Known gaps
7. Whether the mode is create, update, correct, rollback, or list

---

## Mode Determination

Based on the user's input, first determine the operation mode for this request:

### Create Mode
Applicable when:
- The user wants to organize a project into a skill
- The user is creating a project skill for the first time
- The user provides a repo or project directory and wants you to begin distillation

Output mode:
`create`

### Update Mode
Applicable when:
- The user wants to add new documents, new test results, or new decisions
- The user indicates that a project skill already exists and wants to update it

Output mode:
`update`

### Correction Mode
Applicable when:
- The user points out that a previous conclusion was wrong
- The user provides new authoritative information to correct existing content

Output mode:
`correct`

### Rollback Mode
Applicable when:
- The user asks to return to a specific version
- The user indicates that the latest version has problems

Output mode:
`rollback`

### List Mode
Applicable when:
- The user only wants to list all project skills
- The user asks what skills are currently available

Output mode:
`list`

---

## Required Information

If the information can be directly inferred from the user's input, fill it in directly. If it cannot, mark it as missing. Do not make assumptions.

### A. Project Identity
- `project_slug`
- `project_name`
- `project_root`

### B. Project Background
- `project_goal`
- `upstream_reference`
- `target_platform`
- `project_type`

### C. Project Environment
- `hardware`
- `os_or_jetpack`
- `runtime_stack`
- `container_required`

### D. Validation Information
- `success_criteria`
- `validation_required`
- `evidence_expected`

### E. Source Information
- `readme_paths`
- `docs_paths`
- `validation_paths`
- `log_paths`
- `script_paths`
- `docker_paths`
- `skill_paths`
- `other_sources`

### F. Handoff Information
- `handoff_required`
- `next_agent_entry_required`
- `versioning_required`
- `correction_layer_required`

### G. Known Gaps
- `missing_environment_info`
- `missing_validation_info`
- `missing_logs`
- `missing_decisions`
- `missing_failures`

---

## Gap Handling Rules

If information is insufficient:

1. Do not assume it does not exist
2. Do not fill in missing details on your own
3. Only mark it as a gap
4. Clearly list the points that the downstream `skill_builder` should specifically check

---

## Output Format

Please output using the following fixed structure:

```yaml
mode: create|update|correct|rollback|list
project:
  slug:
  name:
  root:
  goal:
  upstream_reference:
  target_platform:
  project_type:
environment:
  hardware:
  os_or_jetpack:
  runtime_stack:
  container_required:
validation:
  success_criteria: []
  validation_required: []
  evidence_expected: []
sources:
  readme_paths: []
  docs_paths: []
  validation_paths: []
  log_paths: []
  script_paths: []
  docker_paths: []
  skill_paths: []
  other_sources: []
handoff:
  handoff_required:
  next_agent_entry_required:
  versioning_required:
  correction_layer_required:
gaps:
  missing_environment_info: []
  missing_validation_info: []
  missing_logs: []
  missing_decisions: []
  missing_failures: []
notes: []
