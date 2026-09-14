#!/bin/bash
# coverage-check.sh — every harness file is claimed by at least one PRD's
# specifies: list, and every claimed path exists. Run from steward/prds/.
# Exit 0 = clean; 1 = unclaimed or stale entries; 2 = sibling layout broken.
# Exclusions: LICENSE, .gitkeep, .DS_Store, docs/assets/banner.png, steward/prds/**.
# The check proves no file is undocumented. It does NOT prove any file is
# documented well — that is a review concern, not a tooling one. Nor does it
# prove exclusive ownership: it detects only files with zero claimants, and
# two files are legitimately claimed twice (see README.md).
set -u
shopt -s nullglob   # a zero-PRD directory must not leave the literal glob in $f
BASE="$(cd "$(dirname "$0")/../../.." && pwd)"   # parent of the three clones
REPOS="organisationos-foundation organisationos-leadership organisationos-domain"
for r in $REPOS; do
  [ -d "$BASE/$r" ] || { echo "ERROR: expected sibling clone at $BASE/$r (see PRD-01)"; exit 2; }
done
claims=$(mktemp); files=$(mktemp)
for f in "$(dirname "$0")"/prd-*.md; do
  awk '/^specifies:/{s=1;next} s&&/^  - /{line=$0; sub(/^  - /,"",line); print line} s&&!/^  /{s=0}' "$f"
done | sort -u > "$claims"
for r in $REPOS; do
  ( cd "$BASE" && find "$r" -type f \
      -not -path '*/.git/*' -not -name 'LICENSE' -not -name '.gitkeep' \
      -not -name '.DS_Store' -not -path '*/docs/assets/banner.png' \
      -not -path '*/steward/prds/*' )
done | sort -u > "$files"
unclaimed=$(comm -23 "$files" "$claims"); stale=$(comm -13 "$files" "$claims")
rc=0
[ -n "$unclaimed" ] && { echo "UNCLAIMED (no PRD specifies these):"; echo "$unclaimed"; rc=1; }
[ -n "$stale" ] && { echo "STALE (claimed but not on disk):"; echo "$stale"; rc=1; }
[ $rc -eq 0 ] && echo "coverage OK: $(wc -l < "$files" | tr -d ' ') files claimed, 0 unclaimed"
rm -f "$claims" "$files"; exit $rc
