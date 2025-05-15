class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Darwin_arm64.tar.gz"
      sha256 "045db767494a1836d67688bea921e56610a788ec936086a3d764dd103ad2e4d6"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "aaba0fad2cda484455f191af28953ab6842310c94527a949a47eae2788c1ae70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Linux_arm64.tar.gz"
      sha256 "5bbfcc2aced3bdba0b8a5e563de13acfbb1fd559966c58147cad7b6174e85af3"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.3/wash-cli_Linux_x86_64.tar.gz"
      sha256 "7766a60bb54e9951bec9969879239aed79d4c298dfaad2203a7858ffffa6b2ed"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end