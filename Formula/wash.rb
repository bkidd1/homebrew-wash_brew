class Wash < Formula
  desc "A development assistant that helps track errors, decisions, and project state"
  homepage "https://github.com/bkidd1/wash-cli"
  url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.8.tar.gz"
  sha256 "ac2547d8443dfcdfc2bc64857b72c581f15b5f25dc27e6351e3c975f259e4d09"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "ac2547d8443dfcdfc2bc64857b72c581f15b5f25dc27e6351e3c975f259e4d09"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Darwin_arm64.tar.gz"
      sha256 "ac2547d8443dfcdfc2bc64857b72c581f15b5f25dc27e6351e3c975f259e4d09"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Linux_x86_64.tar.gz"
      sha256 "ac2547d8443dfcdfc2bc64857b72c581f15b5f25dc27e6351e3c975f259e4d09"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Linux_arm64.tar.gz"
      sha256 "ac2547d8443dfcdfc2bc64857b72c581f15b5f25dc27e6351e3c975f259e4d09"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    assert_match "v1.0.8", shell_output("#{bin}/wash version")
  end
end