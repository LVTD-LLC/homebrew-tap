# frozen_string_literal: true

# Formula for the nitpick command-line interface.
class Nitpick < Formula
  desc "AI code review for AI agents, via OpenRouter or a local model"
  homepage "https://nitpick.sh"
  url "https://github.com/LVTD-LLC/nitpick/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "be610fa0b3c34e6670fe7e5f8ba11e048859ef5eb28670e4948a549e9e0e415a"
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
    require "json"

    ENV["NITPICK_TELEMETRY"] = "0"
    assert_match "AI code review for AI agents", shell_output("#{bin}/nitpick --help")
    assert_match version.to_s, shell_output("#{bin}/nitpick --version")

    system "git", "init", "-q"
    system "git", "config", "diff.mnemonicPrefix", "true"
    system "git", "-c", "user.name=Nitpick", "-c", "user.email=test@example.org",
           "commit", "-q", "--allow-empty", "-m", "base"
    (testpath/"new.py").write("answer = 41\nanswer += 1\n")

    pack = JSON.parse(shell_output("#{bin}/nitpick context --json --budget 1"))
    file = pack.fetch("files").fetch(0)
    assert_equal "new.py", file.fetch("path")
    assert_nil file.fetch("listing")
    assert_includes pack.fetch("diff_text"), "@@ -0,0 +1,2 @@\n+answer = 41\n+answer += 1"
  end
end
