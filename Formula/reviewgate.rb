# frozen_string_literal: true

# Formula for the ReviewGate command-line interface.
class Reviewgate < Formula
  desc "Score-centered PR review gate for agent-written code"
  homepage "https://reviewgate.lvtd.dev"
  url "https://github.com/LVTD-LLC/reviewgate/archive/refs/tags/v0.9.4.tar.gz"
  sha256 "36b6bbb52e821bfeb373241d948ebcdd1ac6b717fe4accad69b93ec91763c8c5"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/reviewgate-cli")
  end

  test do
    assert_match "Open-source AI pre-merge checks", shell_output("#{bin}/reviewgate --help")
  end
end
