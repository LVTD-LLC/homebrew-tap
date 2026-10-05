# frozen_string_literal: true

# Formula for the nitpick command-line interface.
class Nitpick < Formula
  desc "AI code review for AI agents, via OpenRouter or a local model"
  homepage "https://nitpick.sh"
  url "https://github.com/LVTD-LLC/nitpick/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "aeba933e813cccdb0e7357e4c0216c825f72db33acdf0d01f3465161ceb3ce15"
  license "MIT"
  head "https://github.com/LVTD-LLC/nitpick.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "AI code review for AI agents", shell_output("#{bin}/nitpick --help")
    assert_match version.to_s, shell_output("#{bin}/nitpick --version")
  end
end
