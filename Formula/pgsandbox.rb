# frozen_string_literal: true

# Formula for the PGSandbox command-line and MCP server.
class Pgsandbox < Formula
  desc "CLI and MCP server for disposable Postgres sandboxes"
  homepage "https://github.com/LVTD-LLC/pgsandbox"
  url "https://github.com/LVTD-LLC/pgsandbox/releases/download/v0.4.9/pgsandbox-0.4.9.tar.gz"
  sha256 "6b90ec4ee1715ad645c9515677f2251ced163b394168b176e1f7d7125ed7901d"
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
