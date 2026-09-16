# frozen_string_literal: true

# Formula for the ReviewGate command-line interface.
class Reviewgate < Formula
  desc "Score-centered PR review gate for agent-written code"
  homepage "https://reviewgate.lvtd.dev"
  url "https://github.com/LVTD-LLC/reviewgate/archive/refs/tags/v0.9.5.tar.gz"
  sha256 "51d1bc8c05ed6d8c16415a44d2558641fe9e805dc2b04a343101e6bc9af3dcfb"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/reviewgate-cli")
  end

  test do
    assert_match "Open-source AI pre-merge checks", shell_output("#{bin}/reviewgate --help")
  end
end
