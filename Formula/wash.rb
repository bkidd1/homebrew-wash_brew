class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Darwin_arm64.tar.gz"
      sha256 "118662ea700814f8f4699105bbaed92bd65763df7c9268f04a6d41cac8d9b6c9"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "c01f59dab621e26c2e276ed0c2948d9ea4c79f1fe0a1e649e56d1a1fc68eef87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Linux_arm64.tar.gz"
      sha256 "42b4c547b550a689e209d549c7e5958b5b6cccdef685f4800c7a185d88ef67ed"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Linux_x86_64.tar.gz"
      sha256 "c60f3f4599480b90a0036f52b03389c736b2a274504687d9d18bc441d6d97bd4"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end