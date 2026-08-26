---
name: Monthly maintenance (Admin)
about: Opened by the monthly-dri workflow on the 1st of each month; run it from the Actions tab if it did not
labels: drift, harness
---

# Monthly maintenance check — YYYY-MM

For each domain, the Admin (or per-domain steward at scale) reviews:

- [ ] Stale CLAUDE.md (>90 days since last meaningful edit AND the domain has shipped work that should have changed it)
- [ ] Stale interfaces (no quarterly active-references update)
- [ ] Stalled CDR propagation (any propagation action open >30 days in `cadence/propagation-log.md` — cross-check `propagation-sla.yml` issues)
- [ ] Stale wiki content — files in `domain-*/<knowledge-folder>/` unmodified >180 days and not referenced from a current method or interface
- [ ] Accumulated drafts — any file in `domain-*/_drafts/` >14 days (cross-check `draft-staleness.yml` reports); decision per draft: merge, retire, or extend
- [ ] Banned-pattern list (anything new from the last month's work)
- [ ] FORMATS.md (anything new on the export-target side?)
- [ ] Templates (any template not used in 6 months — retire candidate)
- [ ] Plugin / MCP version review (pin bump needed?)
- [ ] **Improvement-loop proposal** — one harness change drafted as a PR (skill, CI rule, template, or none with rationale). Admin-Engineer cadence visible artefact.
- [ ] Commit-volume sanity check — any domain <3 commits/person/month after week 6 of adoption? If yes, the answer is workflow integration, not more CI rules.

Close this issue with a one-paragraph summary linked from `steward/drift-log.md`.
