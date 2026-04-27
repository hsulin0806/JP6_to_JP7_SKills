name: {{project_slug}}
description: {{project_description}}
version: {{version}}
user-invocable: true

# {{project_name}}

## Project Summary

### Project Goal
{{project_goal}}

### Project Type
{{project_type}}

### Upstream Reference
{{upstream_reference}}

### Target Platform
{{target_platform}}

### Current Status
{{project_status}}

---

## Definition of Success

This project is considered complete only when all of the following conditions are satisfied:

{{success_definition_list}}

---

## Priority Order of Authoritative Sources

When different documents or records conflict with one another, determine precedence in the following order:

1. Validation results under `validation/`
2. `logs/COMMAND_LOG.md` and `logs/DECISION_LOG.md`
3. Migration or technical documentation under `docs/`
4. `Dockerfile`, scripts, and implementation details
5. Existing skill files under `.openclaw/skills/`
6. `README.md`
7. The user's verbal supplements

If it still cannot be determined, mark it as `Pending Confirmation` and do not draw a conclusion on your own.

---

## Recommended Reading Order

For future AI Agents or new maintainers, understand this project in the following order:

1. `QUICKSTART.md`
2. `VALIDATION_RULES.md`
3. `ENVIRONMENT.md`
4. `DECISIONS.md`
5. `FAILURES.md`
6. `EVIDENCE_INDEX.md`
7. Relevant `docs/`
8. `README.md`

---

## Quick Handoff Workflow

### Step 1
{{handoff_step_1}}

### Step 2
{{handoff_step_2}}

### Step 3
{{handoff_step_3}}

### Step 4
{{handoff_step_4}}

---

## Target Platform and Environment Assumptions

### Hardware
{{hardware}}

### System / Platform
{{os_or_platform}}

### Runtime Stack
{{runtime_stack}}

### Container Requirements
{{container_requirement}}

### Model or Cache Location
{{model_cache_location}}

### Important Environment Constraints
{{environment_constraints}}

---

## Build Workflow

### Prerequisites
{{build_prerequisites}}

### Build Entry
{{build_entry}}

### Build Steps
{{build_steps}}

### Build Success Criteria
{{build_success_criteria}}

---

## First Run Workflow

### Purpose
{{first_run_goal}}

### Execution Method
{{first_run_steps}}

### Expected Behavior
{{first_run_expected_behavior}}

### Output Locations
{{first_run_outputs}}

### Evidence to Retain
{{first_run_evidence}}

---

## Validation Rules

### Required Pass Items
{{validation_required_items}}

### Validation Methods
{{validation_methods}}

### Failure Conditions
{{validation_failure_conditions}}

### Evidence Locations
{{validation_evidence_locations}}

---

## Summary of Key Decisions

### Decision 1
- Problem: {{decision_1_problem}}
- Candidate Options: {{decision_1_options}}
- Final Choice: {{decision_1_choice}}
- Reason: {{decision_1_reason}}
- Trade-off: {{decision_1_tradeoff}}
- Validation Method: {{decision_1_validation}}

### Decision 2
- Problem: {{decision_2_problem}}
- Candidate Options: {{decision_2_options}}
- Final Choice: {{decision_2_choice}}
- Reason: {{decision_2_reason}}
- Trade-off: {{decision_2_tradeoff}}
- Validation Method: {{decision_2_validation}}

---

## Known Limitations

{{known_limitations}}

---

## Recommended Future Improvements

{{future_improvements}}

---

## Missing Information

The following items do not yet have sufficient evidence or source support and must be completed later:

{{missing_information}}

---

## Update Procedure

### When adding new information
- Update `SOURCES.md` first
- Then update `DECISIONS.md`, `FAILURES.md`, `VALIDATION_RULES.md`, and `EVIDENCE_INDEX.md` according to the content type
- If the main entry knowledge changes, update this file as well

### When an existing conclusion is found to be incorrect
- Do not overwrite it directly
- Write it into `CORRECTIONS.md` first
- Then create a new version
- If necessary, also update `QUICKSTART.md` and `VALIDATION_RULES.md`

### Version Management
- Create a new version for every important update
- Preserve the old version content and change summary
