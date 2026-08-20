# Cadence

Leadership Forum minutes, agendas, and propagation log.

## Adopted cadence

> Replace this block with the adopter's chosen cadence per v3.1 §11 scale shapes.

- **Forum name:** Leadership Forum (rename to fit culture: Council, Forum, Round Table, etc.)
- **Frequency:** Monthly (default; adjust to fortnightly for <20 people or split-session for 50+)
- **Chair:** Leader
- **Attendees:** Leader, Domain Leads, Admin. Product Owners attend when on agenda. Per-domain stewards at scale.
- **Decision rule:** consent of affected Domain Leads. Leader override after 2 stalled cycles.
- **Quorum:** all affected Domain Leads present or formally delegated.

## Upstream / downstream coupling

If this organisation sits inside a larger parent, declare:
- **Upstream:** the strategy this forum receives from (e.g. parent firm's executive committee)
- **Downstream:** what this forum propagates (e.g. per-domain planning rounds, departmental reviews)

## File pattern

- `YYYY-MM-DD.md` — minutes of each forum. Commit within one working day.
- `vocabulary-YYYY-MM-DD.md` — output of any vocabulary workshop (see `../../foundation/standards/templates/vocabulary-workshop.md`).

## Minutes template

```markdown
# Leadership Forum — YYYY-MM-DD

## Attendees
- Leader: @<handle>
- Domain Leads present: @<handles>
- Domain Leads delegated: @<handle> (delegated to @<deputy>)
- Admin: @<handle>
- POs attending for specific items: @<handle> for <item>

## Agenda
1. Propagation review (Admin presents `propagation-log.md`)
2. CDR-NNN proposed by @<handle>
3. Strategy refresh proposal
4. (Other)

## Decisions
- CDR-NNN: Accepted | Deferred | Rejected — rationale
- Strategy change: Adopted | Returned for revision

## Open propagation actions
(Cross-link to `propagation-log.md`)

## Next forum
YYYY-MM-DD
```
