class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.4/wash-cli_Darwin_arm64.tar.gz"
      sha256 "a234fd64331d8069735a7cbbf03d6aaefc2853405c97e98e287302c94b3b0987"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.4/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "bde1836206e46b5327ad25b14c62a4d13e13d759eaaf6f1d75aec01c9531de62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.4/wash-cli_Linux_arm64.tar.gz"
      sha256 "b1e4d94a6c749136bc6658c9c13b0df191fdfff1edf96db2a22b7a2b7e687ea6"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.4/wash-cli_Linux_x86_64.tar.gz"
      sha256 "40ad066ad0441deda08eb1434c1cb2a2fbdc5b61905ee15061bd543ef7c5e4af"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end