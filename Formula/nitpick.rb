# frozen_string_literal: true

# Formula for the nitpick command-line interface.
class Nitpick < Formula
  desc "AI code review for AI agents, via OpenRouter or a local model"
  homepage "https://nitpick.sh"
  url "https://github.com/LVTD-LLC/nitpick/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "943b070665eec19567974187b5d0e253ed82a42016524c8b851ce3d7845447f0"
  license "MIT"
  head "https://github.com/LVTD-LLC/nitpick.git", branch: "main"

  depends_on "rust" => :build

  def install
    # Public write-only ingestion token, not a management credential.
    ENV["NITPICK_POSTHOG_PROJECT_TOKEN"] = "phc_woAnPTTMW6HB4WNiRaCij6BP7hiotYRpcN3dPcsj9jLQ"
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Nitpick collects anonymous usage diagnostics (never code or prompts).
      Disable all telemetry with NITPICK_TELEMETRY=0 or DO_NOT_TRACK=1.
      Details: https://nitpick.sh/privacy/
    EOS
  end

  test do
    assert_match "AI code review for AI agents", shell_output("#{bin}/nitpick --help")
    assert_match version.to_s, shell_output("#{bin}/nitpick --version")
  end
end
