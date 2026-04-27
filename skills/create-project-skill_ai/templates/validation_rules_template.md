# {{project_name}} Validation Rules

## Definition of Success

This project may be declared complete only when all of the following conditions are satisfied:

{{success_definition_list}}

---

## Validation Item 1: Build Succeeds

### Validation Goal
{{build_validation_goal}}

### Validation Command
{{build_validation_command}}

### Expected Result
{{build_expected_result}}

### Evidence Location
{{build_evidence_location}}

### Failure Conditions
{{build_failure_conditions}}

---

## Validation Item 2: First Run Succeeds

### Validation Goal
{{first_run_validation_goal}}

### Validation Command
{{first_run_validation_command}}

### Expected Result
{{first_run_expected_result}}

### Evidence Location
{{first_run_evidence_location}}

### Failure Conditions
{{first_run_failure_conditions}}

---

## Validation Item 3: Camera Validation Succeeds

### Validation Goal
{{camera_validation_goal}}

### Validation Command
{{camera_validation_command}}

### Expected Result
{{camera_expected_result}}

### Evidence Location
{{camera_evidence_location}}

### Failure Conditions
{{camera_failure_conditions}}

---

## Validation Item 4: MP4 Validation Succeeds

### Validation Goal
{{mp4_validation_goal}}

### Validation Command
{{mp4_validation_command}}

### Expected Result
{{mp4_expected_result}}

### Evidence Location
{{mp4_evidence_location}}

### Failure Conditions
{{mp4_failure_conditions}}

---

## Hard Fail Conditions

If any one of the following occurs, the project must not be declared complete:

- {{hard_fail_condition_1}}
- {{hard_fail_condition_2}}
- {{hard_fail_condition_3}}
- {{hard_fail_condition_4}}

---

## Maintenance Rules

- When a new validation method is added, you must also add its command, expected result, evidence location, and failure conditions
- If the definition of success changes, you must also update `SKILL.md` and `CHECKLIST.md`
