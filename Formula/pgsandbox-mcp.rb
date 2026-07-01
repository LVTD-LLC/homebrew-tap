# frozen_string_literal: true

# Formula for the PGSandbox MCP command-line server.
class PgsandboxMcp < Formula
  desc "MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox-mcp"
  url "https://github.com/LVTD-LLC/pgsandbox-mcp/releases/download/v0.2.1/pgsandbox-mcp-0.2.1.tar.gz"
  sha256 "0aaf0408a517dd883b35a2ca9310f51fb4234bdbd58b8d022da30b7078017313"
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
