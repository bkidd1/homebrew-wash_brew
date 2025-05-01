class Wash < Formula
  desc "A development assistant that helps track errors, decisions, and project state"
  homepage "https://github.com/bkidd1/wash-cli"
  url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "8192a631690cca417c0bf5609e2bd8fe4f3e04d2e2e7370dfa96858644b742b7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.7/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "8192a631690cca417c0bf5609e2bd8fe4f3e04d2e2e7370dfa96858644b742b7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.7/wash-cli_Darwin_arm64.tar.gz"
      sha256 "8192a631690cca417c0bf5609e2bd8fe4f3e04d2e2e7370dfa96858644b742b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.7/wash-cli_Linux_x86_64.tar.gz"
      sha256 "8192a631690cca417c0bf5609e2bd8fe4f3e04d2e2e7370dfa96858644b742b7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.7/wash-cli_Linux_arm64.tar.gz"
      sha256 "8192a631690cca417c0bf5609e2bd8fe4f3e04d2e2e7370dfa96858644b742b7"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    assert_match "v1.0.7", shell_output("#{bin}/wash version")
  end
end