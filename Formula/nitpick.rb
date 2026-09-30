# frozen_string_literal: true

# Formula for the nitpick command-line interface.
class Nitpick < Formula
  desc "AI code review for AI agents, via OpenRouter or a local model"
  homepage "https://nitpick.sh"
  url "https://github.com/LVTD-LLC/nitpick/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0ed002910646519a84c6fcb744fe501f035d8cf430640ddda90057fc5877bdd3"
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
