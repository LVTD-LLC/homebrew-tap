# frozen_string_literal: true

# Formula for the PGSandbox MCP command-line server.
class PgsandboxMcp < Formula
  desc "MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox-mcp"
  url "https://github.com/LVTD-LLC/pgsandbox-mcp/releases/download/v0.3.0/pgsandbox-mcp-0.3.0.tar.gz"
  sha256 "d13c46686805eeb3c21784cddadc693afbc057858f767af824cc9d77175836e2"
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
