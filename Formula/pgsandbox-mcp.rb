# frozen_string_literal: true

# Formula for the PGSandbox MCP command-line server.
class PgsandboxMcp < Formula
  desc "MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox-mcp"
  url "https://github.com/LVTD-LLC/pgsandbox-mcp/releases/download/v0.4.1/pgsandbox-mcp-0.4.1.tar.gz"
  sha256 "b17519ba9f19e237b431d5ad07669a503f4b6a9c1d4728638cea24fd5223a1cd"
  license "MIT"

  depends_on :macos

  on_intel do
    disable! date: "2026-06-13", because: "only macOS arm64 release archives are published"
  end

  def install
    bin.install "pgsandbox-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgsandbox-mcp --version")
  end
end
