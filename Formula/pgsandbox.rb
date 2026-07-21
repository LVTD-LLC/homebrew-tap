# frozen_string_literal: true

# Formula for the PGSandbox command-line and MCP server.
class Pgsandbox < Formula
  desc "CLI and MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox"
  url "https://github.com/LVTD-LLC/pgsandbox/releases/download/v0.5.0/pgsandbox-0.5.0.tar.gz"
  sha256 "c18160774987ed9692323ea4e9ef5345479edf96408db42be87e0c3969bf827d"
  license "MIT"

  depends_on :macos

  on_intel do
    disable! date: "2026-06-13", because: "only macOS arm64 release archives are published"
  end

  def install
    bin.install "pgsandbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgsandbox --version")
  end
end
