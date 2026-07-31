# frozen_string_literal: true

# Formula for the ReviewGate command-line interface.
class Reviewgate < Formula
  desc "Score-centered PR review gate for agent-written code"
  homepage "https://reviewgate.lvtd.dev"
  url "https://github.com/LVTD-LLC/reviewgate/archive/refs/tags/v0.9.3.tar.gz"
  sha256 "3fb45ecb625dbcabaabf1f2821921c2371bb7ce3da5cab9de209f551a1f55b1a"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/reviewgate-cli")
  end

  test do
    assert_match "Open-source AI pre-merge checks", shell_output("#{bin}/reviewgate --help")
  end
end
