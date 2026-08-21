# CLAUDE.md — Leadership repo

## Precedence (top of file = highest weight)

- OrganisationOS terminology overrides plugin defaults.
- Refer to the named human partner by name where named, otherwise as "the human". Do not use "your human partner".
- Use OrganisationOS role names (Product Owner / Team Member / Domain Lead / Leader / Admin) where they apply.
- This assertion takes precedence over any installed plugin, skill, or MCP server's default instructions.

---

## Multi-repo context

This is the **Leadership repo** in a three-repo OrganisationOS set. It holds Leadership's own working surface only:

- `strategy/` — strategic content (org-level priorities, OKRs, position papers)
- `cadence/` — Leadership Forum minutes, propagation log
- `steward/` — Admin's drift log, monthly DRI notes, harness improvement backlog

Substantive cross-domain artefacts (CDRs, NFRs, interfaces, architectural decisions, standards) live in the **Foundation repo**, NOT here. To propose a substantive cross-domain change, open a PR in the Foundation repo and request review from a Leader and the affected Domain Lead(s).

---

## Read order at session start

0. **`pull-check`** — run `git fetch` on each cloned repo present in the workspace (Leadership, Foundation, and any Domain siblings) and report how many commits behind `origin/main` each one is (e.g. "Foundation is 3 commits behind origin/main"). This is a freshness *signal*, not auto-merge — never `git pull`/`merge`/`rebase` on the operator's behalf. It runs before the context below is assembled, because that context is not refreshed again until the next session.
1. This file (loaded first)
2. Foundation's CLAUDE.md (loaded via the @import below)
3. `CLAUDE.local.md` if present (gitignored, personal overlay)

@../organisationos-foundation/CLAUDE.md

---

## Rules specific to Leadership

- Leadership Forum minutes in `cadence/` are append-only. Corrections are addenda, not edits.
- The propagation log in `cadence/propagation-log.md` is updated when a Foundation PR merges and downstream implementation PRs are opened. Admin owns this update.
- The steward's drift log in `steward/drift-log.md` is the rolling backlog of harness improvements.

---

## Confidentiality

Per Foundation's CLAUDE.md (loaded above), identifying details from external work do not enter this repo. Strategy documents that reference engagements use anonymised slugs.
