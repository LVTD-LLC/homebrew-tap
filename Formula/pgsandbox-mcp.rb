# frozen_string_literal: true

# Formula for the PGSandbox MCP command-line server.
class PgsandboxMcp < Formula
  desc "MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox-mcp"
  url "https://github.com/LVTD-LLC/pgsandbox-mcp/releases/download/v0.2.0/pgsandbox-mcp-0.2.0.tar.gz"
  sha256 "a8221cff762bf5f7802f37a8a1981294a1ea7010f3761c671dfff01b56f89ca1"
  license "MIT"

  depends_on :macos

  on_intel do
    disable! date: "2026-06-13", because: "v0.1.0 is only available as a macOS arm64 binary"
  end

  def install
    bin.install "pgsandbox-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgsandbox-mcp --version")
  end
end
