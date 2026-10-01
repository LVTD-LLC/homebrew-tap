# LVTD Homebrew Tap

Homebrew tap for LVTD apps and CLI tools.

## djass

Generate production-ready Django SaaS repositories from [djass.dev](https://djass.dev) through the hosted Projects API.

```bash
brew install LVTD-LLC/tap/djass
```

Installs the prebuilt `djass` binary for macOS and Linux (arm64 and x86_64). Then set `DJASS_API_KEY` from your [Djass account settings](https://djass.dev/settings) and run `djass generate --name "Acme CRM" --slug acme_crm --output ./acme_crm`. Docs: https://djass.dev/docs/api/cli/. Agent plugin: https://github.com/LVTD-LLC/djass-skills

## nitpick

AI code review for AI agents. Sends your git diff plus the relevant repo context to any OpenRouter or local model and prints structured findings.

```bash
brew install LVTD-LLC/tap/nitpick
```

Builds from source, so the first install takes a few minutes. Then set `NITPICK_OPENROUTER_API_KEY` and run `nitpick` in any git repo. Docs: https://github.com/LVTD-LLC/nitpick

## PGSandbox

```bash
brew install LVTD-LLC/tap/pgsandbox
```

This formula currently installs the macOS arm64 release artifact.

Register the MCP server:

```bash
pgsandbox setup --client codex
```
