class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Darwin_arm64.tar.gz"
      sha256 "8c845062b8be78337448941fdaa3e09eedcbd07dd666a36dc2bcab486ee3c4c9"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "a44a25c4ceebc22b5cc8520c697c384ef15ed1381ad81bab9381446e90e84429"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Linux_arm64.tar.gz"
      sha256 "5be0c218451f48c467255fa60f51db34072aa0b5d26edfc4143bb0bd4edc5ec7"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Linux_x86_64.tar.gz"
      sha256 "92f2ef0ec44ef770cac8feb8f6b12e7b8aa0becd3127c118fc55765709aef731"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end