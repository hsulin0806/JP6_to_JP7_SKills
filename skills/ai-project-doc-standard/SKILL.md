---
name: ai-project-doc-standard
description: Write and review public-facing AI project documentation (README/website docs) using a consistent business+developer structure. Use when drafting, polishing, or auditing external release docs, adding model-introduction sections, validating hardware-proof sections, or updating reusable documentation standards/templates across projects.
---

# AI Project Doc Standard

Produce external-release documentation with consistent structure and tone.

## Workflow

1. Read `references/doc-standard.md` first.
2. If creating or rewriting a README, use `references/readme-template.md` as the base.
3. Ensure sections are ordered exactly as defined in the standard.
4. Keep tone formal and public-facing (no internal-only labels or chatty notes).
5. Ensure model introduction is included with architecture + inference path + acceleration notes.
6. Ensure hardware validation uses expandable table format (include reserved row for future platforms).
7. Ensure execution result images/GIFs are present.
8. Ensure developer section includes reproducible commands and health checks.

## Output checks

Before finalizing, confirm all items:

- Project positioning exists.
- Model introduction exists.
- InferenceKit value section exists (when applicable).
- Hardware validation table exists and is expandable.
- Result visuals exist.
- Developer installation/startup/verification steps exist.
- Document references the standard/template at the end.

If any item is missing, do not mark the documentation as complete.
