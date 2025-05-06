class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.0/wash-cli_Darwin_arm64.tar.gz"
      sha256 "28385d233128b2948b9c5949fcb8078abab058e062f7326cfaf4a65b1cb4e585"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.0/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "58f253243ba3be61793fdc3c5459d4c582797319372bcd2963b94efaaecc7f1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.0/wash-cli_Linux_arm64.tar.gz"
      sha256 "b9585133eb3b70aeb8ed2f4056cb75a43f47ee2bd64cb303e5964f30776dac6e"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.0/wash-cli_Linux_x86_64.tar.gz"
      sha256 "a8f73b871222c7f72443cb341088d49c5539defe71f9585a9a14d39193f46182"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end