# frozen_string_literal: true

# Formula for the ReviewGate command-line interface.
class Reviewgate < Formula
  desc "Score-centered PR review gate for agent-written code"
  homepage "https://reviewgate.lvtd.dev"
  url "https://github.com/LVTD-LLC/reviewgate/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "60e92cf60915ba170c001b1343e39780a9d988804014bb94c2c626775c35ee90"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/reviewgate-cli")
  end

  test do
    assert_match "Open-source AI pre-merge checks", shell_output("#{bin}/reviewgate --help")
  end
end
