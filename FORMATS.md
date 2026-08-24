> This file mirrors the canonical Foundation `FORMATS.md`. The CI workflow `format-gate` (called from Foundation) enforces this whitelist on Leadership content. Changes to formats must originate as a PR in Foundation.

# FORMATS — what lives in Git, what lives elsewhere

Three principles. The whitelist follows. Adopters apply the principles to add or remove formats for their context.

1. **Prefer diffable text** where the audience reads text.
2. **Reference, do not commit, anything generated from a live system** (dashboards, scheduling tools, CRM exports).
3. **Cap binary size per file**, with format-specific limits.

## In Git — whitelist

| Format | Use for | Size cap |
| --- | --- | --- |
| Markdown (`.md`) | Everything written | — |
| Mermaid (in Markdown fences) | Diagrams expressible as graph, sequence, flow, tree | — |
| Plain text (`.txt`) | Raw extracted text (transcripts, OCR, log dumps) | — |
| CSV / TSV (`.csv`, `.tsv`) | Structured tabular data | — |
| JSON / JSONC / YAML (`.json`, `.jsonc`, `.yaml`, `.yml`) | Config, frontmatter, machine-readable data. `.jsonc` is JSON with comments, used by tool configs such as `.markdownlint.jsonc` | — |
| TOML (`.toml`) | Build/config files | — |
| Excalidraw / Drawio (`.excalidraw`, `.drawio`) | Diagrams Mermaid cannot express | ≤500 KB |
| SVG (`.svg`) | Generated diagram output | ≤200 KB |
| PNG (`.png`) | Screenshots, rendered images, dashboard snapshots at a point in time | ≤2 MB |
| PDF (`.pdf`) | Received external documents referenced inline (regulations, signed agreements) | ≤2 MB |
| HTML (`.html`) | Rare; generated rendered output | — |

**Per-PR aggregate cap:** 10 MB new binary content. Larger PRs split.

## Out of Git — referenced via `references.md`

| Format / system | Why out of Git |
| --- | --- |
| Excel with macros, pivots, dashboards, live data | Binary, opaque, work doesn't diff cleanly |
| *Plain tabular Excel* | Export to CSV and commit; the CSV is the source. |
| PowerPoint / Keynote (`.pptx`, `.key`) | Binary, opaque to diff. Built from Markdown via the build-deck pattern. |
| Interactive dashboards (Looker, Power BI, Grafana, Tableau) | Live data; the artefact is the URL. Snapshot screenshots may be committed as PNG. |
| Long video, podcast, audio | Large binary; reference and timestamp in `references.md` |
| Live drafting docs (Google Docs, Figma) | Designed for live collaboration; finished content moves into Markdown when stable |
| Notion / Confluence pages | Same as live drafting; reference and migrate when stable |

## Adopter customisation

The whitelist is a placeholder, not a fixed list. Add formats by applying the three principles:

- **Research labs:** add `.tex`, `.bib`, `.ipynb` for paper sources.
- **Design orgs:** add `.fig` exports if they diff cleanly, or store in Figma and reference.
- **Marketing teams:** brand assets are often binary; either reference them or cap aggressively.

Add to `FORMATS.md`, then update `.github/workflows/format-gate.yml` to match. Format changes are a two-approver PR (Admin + Leader).

## Enforcement

- `.github/workflows/format-gate.yml` blocks any change introducing a non-whitelisted extension or exceeding a size cap.
- The failure message is plain English and names the file and the reason (see `.github/workflows/format-gate.yml`).
