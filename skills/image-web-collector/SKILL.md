---
name: image-web-collector
description: Collect and triage web images for dataset building, especially when a project needs more images from the internet and existing search/download flows are noisy or failing. Use for targeted image collection, query refinement, smoke/fire dataset expansion, source fallback selection, and filtering web results into cleaner candidate sets for annotation.
---

Collect targeted images from the web with a bias toward precision over volume.

Workflow:
1. Start from narrow queries, not broad ones.
2. Prefer source diversity and fallback collectors when a provider rate-limits or resets connections.
3. Save raw downloads first, then write metadata sidecars or JSONL logs.
4. Filter likely false positives before annotation when the target class is sparse (for example smoke without visible flames).
5. When searching for smoke-related images, explicitly separate:
   - smoke without fire
   - engine-bay smoke
   - exhaust smoke
   - scooter/motorcycle smoke
6. Reuse scripts in `scripts/` instead of rewriting collectors ad hoc.

Read `references/smoke-queries.md` when the target dataset is about vehicles emitting smoke or low-flame fire/smoke events.

Use bundled scripts:
- `scripts/run_smoke_collection.py` to launch multi-query smoke-focused collection
- existing project collectors can still be called if they already exist in the target project
