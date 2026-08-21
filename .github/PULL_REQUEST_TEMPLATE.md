## What changed

One paragraph. What is different now?

## Why

One paragraph. What problem does this solve? What changed in the world that made this change necessary?

## Area affected

- [ ] `strategy/` — Leader reviews
- [ ] `cadence/` — append-only; corrections are addenda
- [ ] `cadence/propagation-log.md` — Admin owns
- [ ] `steward/` — Admin owns
- [ ] `.github/` or `.claude/` harness — two-approver (Admin + Leader)

> **Note:** If this PR introduces a new standard, NFR, or interface change, it likely belongs in the Foundation repo instead — see CLAUDE.md.

## Cross-domain implications

None | <list, with one line each>. If cross-domain, has a CDR been raised in Foundation? (See `../organisationos-foundation/standards/templates/cdr-template.md`)

## Approval checklist (cross-domain / substrate PRs only)

Canonical rule (spec §10/§11.2/§12): the Leader + the Domain Lead of each
affected domain (+ Product Owner and Admin where the CDR template lists
them). CODEOWNERS lists the fallback superset; this checklist records the
actual affected set. (Note: this repo's own `/cadence/` minutes/propagation
edits are not cross-domain PRs — see the Area affected checklist above; this
block applies when a Leadership-repo PR is tied to a cross-domain CDR.)

- [ ] Affected domain(s) named: <list>
- [ ] Each affected Domain Lead approved
- [ ] Leader approved
- [ ] Product Owner approved (where the CDR template lists PO for this artefact type)
- [ ] Admin approved (where the CDR template lists Admin for this artefact type)

Manual affordance; the completeness check is CI-enforced in the Foundation repo, where cross-domain artefacts live.

## Reviewer affordances

- [ ] Rendered preview opened: <link auto-posted by CI>
- [ ] Banned-string check passed locally (pre-commit + CI)
- [ ] I read the artefact, not just the agent's review

## CDR / propagation log linkage (if this PR closes a propagation action)

Closes propagation-log entry for CDR-XXX

## Reviewers

- Leader: @<handle>
- Admin: @<handle>
- Second reviewer if proposer wears multiple roles: @<handle>
