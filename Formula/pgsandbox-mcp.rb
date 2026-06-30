# frozen_string_literal: true

# Formula for the PGSandbox MCP command-line server.
class PgsandboxMcp < Formula
  desc "MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox-mcp"
  url "https://github.com/LVTD-LLC/pgsandbox-mcp/releases/download/v0.1.3/pgsandbox-mcp-0.1.3.tar.gz"
  sha256 "c860242a18eb2d564cc23f0fdfa3c9cd30f62854aae2dcbdf55f956d435392dc"
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
