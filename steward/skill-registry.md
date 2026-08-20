# Skill registry

OrganisationOS-native skills that route around `superpowers:` or other plugin skills via description-based routing (see v3.1 §15).

The Admin maintains this file. Reviewed at monthly DRI (§13).

## Format

| Name | Declared in | Routes around | Approver | Date approved | Last verified |
|---|---|---|---|---|---|
| requesting-deliverable-review | foundation/.claude/skills/requesting-deliverable-review/ | superpowers:requesting-code-review | @<domain-1-lead> | YYYY-MM-DD | YYYY-MM-DD |

## Rules

- Every OrganisationOS-native skill whose `description:` opens with "Use this instead of `<plugin>:<skill>` when..." is registered here.
- Domain Lead approves a routing declaration when the skill is created.
- Admin verifies at monthly DRI that the routed-around skill still exists and the routing is still warranted.

## Current state

> Replace this section with the current registry. At adoption time, this file holds only these instructions.
