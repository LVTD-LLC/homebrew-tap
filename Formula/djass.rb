# frozen_string_literal: true

# Formula for the Djass command-line interface.
class Djass < Formula
  desc "Generate production-ready Django SaaS repositories from djass.dev"
  homepage "https://djass.dev"
  version "0.1.0"

  livecheck do
    url :stable
    regex(/djass_v?(\d+(?:\.\d+)+)_/i)
  end

  on_macos do
    on_arm do
      url "https://djass.dev/downloads/cli/v0.1.0/djass_v0.1.0_Darwin_arm64.tar.gz"
      sha256 "41450ed3b1356404ff99dccf41881616f20a5f0da7b940aea0ce62a243ff11d9"
    end
    on_intel do
      url "https://djass.dev/downloads/cli/v0.1.0/djass_v0.1.0_Darwin_x86_64.tar.gz"
      sha256 "48e02544f704324dff201bce4a99bc735f8930d25d65c85d5a7f54a0a95d47aa"
    end
  end

  on_linux do
    on_arm do
      url "https://djass.dev/downloads/cli/v0.1.0/djass_v0.1.0_Linux_arm64.tar.gz"
      sha256 "10dff7221df9eea4c438f37beeffb3170c68afa6ce8203e18ec9ca2093682107"
    end
    on_intel do
      url "https://djass.dev/downloads/cli/v0.1.0/djass_v0.1.0_Linux_x86_64.tar.gz"
      sha256 "ed2435247af7d285aba31b1c16bf5405cf6de409c945df0d2ac81d60ee37de80"
    end
  end

  def install
    bin.install "djass"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/djass version")
    assert_match "Djass generates", shell_output("#{bin}/djass help")
  end
end
