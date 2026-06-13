# LVTD Homebrew Tap

Homebrew tap for LVTD macOS apps and CLI tools.

## PGSandbox MCP

```bash
brew install LVTD-LLC/tap/pgsandbox-mcp
```

The v0.1.0 formula installs the macOS arm64 release artifact.

After starting a local Postgres instance, register the MCP server with your MCP client:

```bash
PGSANDBOX_ADMIN_DATABASE_URL="postgres://postgres:postgres@localhost:5432/postgres"
pgsandbox-mcp setup --client codex --admin-url "$PGSANDBOX_ADMIN_DATABASE_URL"
```

Upgrade later:

```bash
brew update
brew upgrade pgsandbox-mcp
```

Uninstall:

```bash
brew uninstall pgsandbox-mcp
```

## BarShelf

```bash
brew tap lvtd-llc/tap
brew install --cask barshelf
```

Upgrade later:

```bash
brew update
brew upgrade --cask barshelf
```

Uninstall:

```bash
brew uninstall --cask barshelf
```
