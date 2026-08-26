# AGENTS.md — Leadership repo

Cross-vendor agent definitions live in the Foundation repo: `.github/agents/` is the Copilot-CLI-native source of truth and `.claude/agents/` is the Claude Code mirror (Foundation's `agent-mirror-sync` check keeps the two identical). Claude Code picks up Foundation's `.claude/agents/` only when a session is started with `--add-dir ../organisationos-foundation`; the `additionalDirectories` entry in `settings.local.json` grants file access and loads no agents. See Foundation `docs/loading-model.md`.

Leadership-specific agent overrides (rare) would live in this repo's `.github/agents/` — currently none.
