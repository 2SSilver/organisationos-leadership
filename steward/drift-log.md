# Drift log

The Admin's rolling backlog of harness drift and improvement items. This is **not** the CDR propagation tracker — that lives in `../cadence/propagation-log.md`. This file captures harness health: stale artefacts surfaced by the monthly DRI, improvement-loop proposals, and harness-substrate change reasoning.

## What goes here

- Findings from the monthly maintenance issue (see README): stale CLAUDE.md, stale interfaces, stale wiki content, accumulated drafts, banned-pattern-list gaps.
- Improvement-loop proposals — the one-harness-change-per-month the Admin-Engineer drafts as a Foundation PR.
- Reasoning for harness-substrate changes (workflows, templates, role docs) that do not warrant a CDR.
- Admin/Leader disagreements, recorded here when escalated at the Leadership Forum (`cadence/`).

## Format

```text
## YYYY-MM — monthly DRI summary

- Drift found: <item> — Action: <PR link or "monitoring">
- Improvement proposal: <one-line> — <Foundation PR link or "deferred, reason">

Notes: <escalations, context>
```

## Rules

- The monthly maintenance issue (see README) closes with a one-paragraph summary linked from this file.
- Harness improvement proposals route to Foundation as two-approver PRs (Admin + Leader).
- Closed months remain for the audit trail; optionally archive to `_archive/drift-log-YYYY.md` annually.

## Current state

> Replace this section with the current state. At adoption time, this file is empty save for these instructions.
