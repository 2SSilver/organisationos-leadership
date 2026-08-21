# OrganisationOS — Leadership repo

## 1. What this is

This is the **Leadership repo** in an OrganisationOS three-repo set. It holds the working surface for Leaders and the Admin: strategy, meeting cadence, and the steward's backlog. It depends on the Foundation repo for shared standards, templates, and CI workflows.

---

## 2. What lives here

| Path | Contents |
| --- | --- |
| `strategy/` | Org-level strategic content: priorities, OKRs, position papers |
| `cadence/` | Leadership Forum minutes; propagation log tracking CDR → domain implementation |
| `steward/` | Admin's drift log, monthly DRI notes, harness improvement backlog |

**NOT here:** CDRs, NFRs, interfaces, standards, architectural decisions, or any cross-domain artefact. Those live in the Foundation repo. If the content affects more than one domain or needs org-wide enforcement, it goes in Foundation.

---

## 3. Clone layout

See Foundation README §3 for the full clone layout and the critical "not nested" caveat. In short:

```text
~/projects/<adopter-org>/
  organisationos-foundation/     ← must be cloned first
  organisationos-leadership/     ← this repo
  organisationos-domain/
```

Do NOT nest these repos inside another project tree. Cross-repo `@import` requires top-level sibling placement.

---

## 4. Role-to-clone-set matrix

| Role | Required clones | Notes |
| --- | --- | --- |
| Leader | Foundation + Leadership + Domain | Needs Domain to review Domain PRs locally |
| Admin | Foundation + Leadership + Domain (+ per-domain if split) | Full set required |

Team Members, Product Owners, and Domain Leads do not normally need the Leadership clone unless they are reviewing cross-domain strategy artefacts.

---

## 5. Onboarding sequence

1. Clone Foundation first (the `@import` in this repo's CLAUDE.md resolves to `../organisationos-foundation/`).
2. Clone this repo as a sibling.
3. Update `.github/CODEOWNERS` with real GitHub handles.
4. The role→`additionalDirectories` mapping has one canonical source: Foundation's `standards/templates/onboarding/` (5 role-specific files). Copy the file matching your role — `../organisationos-foundation/standards/templates/onboarding/settings.local.json.example-<role>` — to `.claude/settings.local.json`, and the matching `claude-local-<role>.example.md` to `CLAUDE.local.md`. This repo's own `.claude/settings.local.json.example`, if present, is a pointer to that folder, not a second copy of the mapping. On a role change, re-copy from the updated onboarding file (see the monthly-DRI checklist).
5. Install the pre-commit hook from Foundation: `cp ../organisationos-foundation/.github/hooks/pre-commit .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit`.

---

## 6. Generic worked example — GreenLeaf Research Lab

GreenLeaf Research Lab uses the three-repo set. A CDR for a new anonymisation standard merges in the Foundation repo. Admin sees the merge notification and opens a propagation log entry in `cadence/propagation-log.md` with the CDR number and links to the three downstream implementation PRs opened in the Domain repo (one per affected domain: research, operations, compliance).

At the next Leadership Forum, the Leader reviews `cadence/propagation-log.md` to confirm all three implementation PRs have merged. The outcome is recorded as an addendum in the Forum minutes. The propagation cycle closes when all three domain PRs are merged and the log entry is marked complete.

---

## 7. Pointer to Foundation

For source of truth on standards, CDRs, NFRs, interfaces, and shared CI, see the Foundation repo (`../organisationos-foundation/`). Leadership references Foundation content — it does not copy or redefine it.
