# {{project_name}} Source Inventory

## Usage

This file records all sources used during the distillation of the project skill, so that future AI Agents can trace the source scope behind each conclusion.

---

## Authoritative Sources

### Source 1
- Type: {{source_1_type}}
- Path: {{source_1_path}}
- Usage: {{source_1_usage}}
- Authoritative Source: Yes

### Source 2
- Type: {{source_2_type}}
- Path: {{source_2_path}}
- Usage: {{source_2_usage}}
- Authoritative Source: Yes

### Source 3
- Type: {{source_3_type}}
- Path: {{source_3_path}}
- Usage: {{source_3_usage}}
- Authoritative Source: Yes

---

## General Sources

### Source 4
- Type: {{source_4_type}}
- Path: {{source_4_path}}
- Usage: {{source_4_usage}}
- Authoritative Source: No

### Source 5
- Type: {{source_5_type}}
- Path: {{source_5_path}}
- Usage: {{source_5_usage}}
- Authoritative Source: No

### Source 6
- Type: {{source_6_type}}
- Path: {{source_6_path}}
- Usage: {{source_6_usage}}
- Authoritative Source: No

---

## Missing Sources

The following sources are expected to exist but are currently missing:

- {{missing_source_1}}
- {{missing_source_2}}
- {{missing_source_3}}

---

## Maintenance Rules

- Whenever a new source is added, its purpose must also be recorded
- If a key conclusion depends on a new source, also check whether `EVIDENCE_INDEX.md` needs to be updated
- If a new authoritative source is added, also check whether the authority order in `SKILL.md` needs to be adjusted
