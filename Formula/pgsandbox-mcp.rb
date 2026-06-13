# frozen_string_literal: true

# Formula for the PGSandbox MCP command-line server.
class PgsandboxMcp < Formula
  desc "MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox-mcp"
  url "https://github.com/LVTD-LLC/pgsandbox-mcp/releases/download/v0.1.0/pgsandbox-mcp-0.1.0.tar.gz"
  sha256 "075f9769a66c2237f34926787b72aee2c5d9d55b1ed8c1bc47e8bb9fd6fbdd6b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pgsandbox-mcp"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pgsandbox-mcp --version").strip
  end
end
