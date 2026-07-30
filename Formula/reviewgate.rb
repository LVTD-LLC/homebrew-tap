# frozen_string_literal: true

# Formula for the ReviewGate command-line interface.
class Reviewgate < Formula
  desc "Score-centered PR review gate for agent-written code"
  homepage "https://reviewgate.lvtd.dev"
  url "https://github.com/LVTD-LLC/reviewgate/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "453978dca9165547be8bd73a7c974a9622015aadd2c63170e99ffa73f93ad8fc"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/reviewgate-cli")
  end

  test do
    assert_match "Open-source AI pre-merge checks", shell_output("#{bin}/reviewgate --help")
  end
end
