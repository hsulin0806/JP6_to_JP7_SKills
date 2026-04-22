# Public AI Project Documentation Standard

## Principles

1. Value first, implementation second.
2. Every operational claim must be reproducible.
3. Hardware validation must remain extensible.
4. At least one execution-result image is required.
5. Use formal, external-facing wording.

## Required section order

1. Project title + one-line value statement
2. Project information
3. Model introduction
4. InferenceKit value (if applicable)
5. Verified hardware table (with future-reserved row)
6. Execution result visuals
7. Developer setup/run/verification
8. Standard/template reference footer

## Model introduction requirements

Include:
- Core model(s)
- Inference characteristics (e.g. open-vocabulary, tree prompt)
- Acceleration path (e.g. TensorRT)
- Upstream/paper link

## Hardware table requirements

Columns:
- Platform
- Validation status
- Link
- Notes

Must include at least:
- One verified platform row
- One reserved future-platform row

## Developer section requirements

Must include:
- Preconditions
- Build/install command
- First-run command and success signals
- Second-run reuse note
- Optional offline run command
- Web UI/health check commands
- Common troubleshooting bullets

## Wording restrictions

Avoid internal-only wording such as:
- "for procurement only"
- "for PM only"
- "for external display"
- internal reminders/changelogs unrelated to users
