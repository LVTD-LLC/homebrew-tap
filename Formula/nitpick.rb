# frozen_string_literal: true

# Formula for the nitpick command-line interface.
class Nitpick < Formula
  desc "AI code review for AI agents, via OpenRouter or a local model"
  homepage "https://nitpick.sh"
  url "https://github.com/LVTD-LLC/nitpick/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9549d2bf7fda7d24e585d991d8cbad5c0e7a0e59ae861c0b11d75489c9c7bc83"
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
