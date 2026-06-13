# LVTD Homebrew Tap

Homebrew tap for LVTD macOS apps and CLI tools.

## PGSandbox MCP

```bash
brew install LVTD-LLC/tap/pgsandbox-mcp
pgsandbox-mcp setup --client codex --admin-url postgres://postgres:postgres@localhost:5432/postgres
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
