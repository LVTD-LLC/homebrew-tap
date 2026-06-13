# LVTD Homebrew Tap

Homebrew tap for LVTD apps and CLI tools.

## PGSandbox MCP

```bash
brew install LVTD-LLC/tap/pgsandbox-mcp
```

This formula currently installs the macOS arm64 release artifact.

After starting Postgres, register the MCP server:

```bash
pgsandbox-mcp setup --client codex --admin-url "$PGSANDBOX_ADMIN_DATABASE_URL"
```

## BarShelf

```bash
brew install --cask LVTD-LLC/tap/barshelf
```
