# {{project_name}} Handoff and Validation Checklist

## 1. Basic Project Information Confirmation

- [ ] `project_slug` has been confirmed
- [ ] The project root directory has been confirmed
- [ ] The project goal has been confirmed
- [ ] The upstream reference project has been confirmed
- [ ] The target platform has been confirmed
- [ ] Whether this project is containerized has been confirmed

---

## 2. Authoritative Source Confirmation

- [ ] `QUICKSTART.md` has been read
- [ ] `VALIDATION_RULES.md` has been read
- [ ] `ENVIRONMENT.md` has been read
- [ ] `DECISIONS.md` has been read
- [ ] `FAILURES.md` has been read
- [ ] `SOURCES.md` has been confirmed
- [ ] The priority order of authoritative sources has been understood
- [ ] It has been confirmed whether `CORRECTIONS.md` contains content that must be applied first

---

## 3. Environment Check

- [ ] The hardware model has been confirmed
- [ ] The system version has been confirmed
- [ ] The JetPack / L4T version has been confirmed
- [ ] The CUDA version has been confirmed
- [ ] The TensorRT version has been confirmed
- [ ] The Docker version has been confirmed
- [ ] NVIDIA Container Toolkit has been confirmed
- [ ] The camera model has been confirmed
- [ ] The test MP4 specification has been confirmed
- [ ] The image tag has been confirmed
- [ ] The git commit hash has been confirmed

---

## 4. Source Integrity Check

- [ ] `README.md` has been found
- [ ] `docs/` has been found
- [ ] `validation/` has been found
- [ ] `logs/COMMAND_LOG.md` has been found
- [ ] `logs/DECISION_LOG.md` has been found
- [ ] `Dockerfile` has been found
- [ ] `scripts/` has been found
- [ ] Existing `.openclaw/skills/` has been found
- [ ] Missing source items have been identified
- [ ] Missing source items have been marked as pending completion

---

## 5. Build Check

- [ ] The build prerequisites have been confirmed
- [ ] The build entry command has been confirmed
- [ ] The build process documentation has been confirmed
- [ ] The build success criteria have been confirmed
- [ ] The build artifact locations have been confirmed
- [ ] The build evidence locations have been confirmed

---

## 6. First Run Check

- [ ] The first-run objective has been confirmed
- [ ] The first-run execution command has been confirmed
- [ ] Whether downloading is allowed during the first run has been confirmed
- [ ] Whether model conversion is allowed during the first run has been confirmed
- [ ] The post-first-run model/cache storage location has been confirmed
- [ ] The first-run output locations have been confirmed
- [ ] The first-run evidence is complete

---

## 7. Camera Validation Check

- [ ] The camera validation command has been confirmed
- [ ] The source of the camera device has been confirmed
- [ ] The expected result of camera validation has been confirmed
- [ ] The actual result of camera validation has been confirmed
- [ ] The camera evidence location has been confirmed
- [ ] The reason why camera validation passed or failed has been confirmed

---

## 8. MP4 Validation Check

- [ ] The MP4 validation command has been confirmed
- [ ] The source of the MP4 test file has been confirmed
- [ ] The expected result of MP4 validation has been confirmed
- [ ] The actual result of MP4 validation has been confirmed
- [ ] The MP4 evidence location has been confirmed
- [ ] The reason why MP4 validation passed or failed has been confirmed

---

## 9. Validation Rules Check

- [ ] `VALIDATION_RULES.md` has been read
- [ ] All required pass conditions have been confirmed
- [ ] The failure conditions have been confirmed
- [ ] All validation commands have been confirmed
- [ ] All evidence locations have been confirmed
- [ ] It has been confirmed whether the current state can be declared complete

---

## 10. Failure Knowledge Check

- [ ] `FAILURES.md` has been read
- [ ] It has been confirmed that each error category includes symptoms
- [ ] It has been confirmed that each error category includes root causes
- [ ] It has been confirmed that each error category includes diagnostic methods
- [ ] It has been confirmed that each error category includes correct fixes

---

## 11. Decision Knowledge Check

- [ ] `DECISIONS.md` has been read
- [ ] The major decision items have been confirmed
- [ ] The reasons for each decision have been confirmed
- [ ] The trade-offs of each decision have been confirmed
- [ ] The validation method for each decision has been confirmed
- [ ] It has been confirmed whether there are old decisions that need correction

---

## 12. Handoff and Takeover Check

- [ ] It has been confirmed that `SKILL.md` can serve as the main entry point
- [ ] It has been confirmed that `QUICKSTART.md` is sufficient for a new AI Agent to take over immediately
- [ ] It has been confirmed that `CHECKLIST.md` is executable in practice
- [ ] It has been confirmed that `EVIDENCE_INDEX.md` allows quick evidence lookup
- [ ] It has been confirmed that `ENVIRONMENT.md` is sufficient to reproduce the environment
- [ ] It has been confirmed that `SOURCES.md` is sufficient to trace the sources of conclusions

---

## 13. Update and Correction Check

- [ ] It has been confirmed whether there are new sources waiting to be merged
- [ ] It has been confirmed whether there is conflicting information waiting to be resolved
- [ ] It has been confirmed whether `CORRECTIONS.md` needs to be updated
- [ ] It has been confirmed whether a new version needs to be created
- [ ] It has been confirmed whether `QUICKSTART.md` needs to be updated
- [ ] It has been confirmed whether `VALIDATION_RULES.md` needs to be updated

---

## 14. Final Completion Determination

This project can be considered handoff-ready only when all of the following conditions are satisfied:

- [ ] The main entry file `SKILL.md` is complete
- [ ] `QUICKSTART.md` is complete
- [ ] `CHECKLIST.md` is complete
- [ ] `DECISIONS.md` is complete
- [ ] `FAILURES.md` is complete
- [ ] `VALIDATION_RULES.md` is complete
- [ ] `EVIDENCE_INDEX.md` is complete
- [ ] `ENVIRONMENT.md` is complete
- [ ] `SOURCES.md` is complete
- [ ] `CORRECTIONS.md` has been initialized or updated
- [ ] All key conclusions have sources
- [ ] All validation items have evidence
- [ ] A future AI Agent can take over directly without relying on the original conversation
