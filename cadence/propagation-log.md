# Propagation log

Open propagation actions from accepted CDRs. The Admin maintains this file. Each accepted CDR (from the Leadership Forum) gets a section here recording the downstream implementation work and its status.

## Format

```text
## CDR-NNN: <title>

- [ ] Action in Domain 1: <description> — Owner: @<handle>, Deadline: YYYY-MM-DD
- [x] Action in Domain 2: <description> — Owner: @<handle>, Deadline: YYYY-MM-DD, Closed by PR #NNN on YYYY-MM-DD
- [ ] Interface update: <interface name> — Owner: @<handle>, Deadline: YYYY-MM-DD

Notes: <any escalations, blockers, or context>
```

## Rules

- Every accepted CDR gets a section here when the Admin co-signs it at the Forum.
- Each propagation action is a checkbox row with owner, deadline, and (when closed) the closing PR SHA/number.
- Items unchecked >30 days past their deadline are surfaced by `propagation-sla.yml` as issues; the Admin escalates at the next Leadership Forum.
- Closed sections (all items checked) move to the bottom of the file after the current calendar month ends. Optionally archive to `_archive/propagation-log-YYYY.md` annually.
- This file tracks **propagation** (CDR → downstream PRs). Harness drift and improvement items live separately in `steward/drift-log.md`.

## Current state

> Replace this section with the current state. At adoption time, this file is empty save for these instructions.
