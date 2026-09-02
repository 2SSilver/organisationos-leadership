# PRD set — the harness as built

This is the as-built PRD set for the OrganisationOS harness: one PRD per capability, each describing what exists today rather than what was originally intended. PRDs are ordered by dependency, so reading them in the order listed below rebuilds the harness from nothing to fully wired. Every requirement in every PRD carries one of four statuses, defined below, so a rebuilder can tell working logic from documented intent from aspiration at a glance.

## Status legend

| Status | Meaning |
| --- | --- |
| `ENFORCED` | Logic executed and observed producing the correct verdict on both a violating and a clean input. Locus recorded (CI or local). |
| `SHIPPED` | The mechanism exists and is wired, but its logic has not been observed executing. |
| `CONVENTION` | Documented and expected; nothing enforces it. |
| `GAP` | Intended by the design; not built. |

## What the coverage check proves

`coverage-check.sh` proves no file in the harness is undocumented. It does not prove any file is documented well — a PRD can name a file in `specifies:` and say nothing useful about it, and the check still passes. It is a floor against forgetting something exists, not a quality gate. Quality is a review concern, not a tooling one.

## The set

<!-- filled by the index task -->

## Maintenance

The Admin owns this set. `coverage-check.sh` is re-run at the monthly DRI to confirm every harness file is still claimed and every claim still resolves. Each PRD's `verified:` frontmatter date says when its statuses were last checked against the live repos, not when the PRD was last edited.
