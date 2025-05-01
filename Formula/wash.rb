class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Darwin_arm64.tar.gz"
      sha256 "81a6ebbf6e95884fa01365f24251f6b517e17fc2dd25319970dafcdd43fad694"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "0c663a470f5c80cb5cda7f12c5250a34d94879fe8d25a27c4cd6e95cd340edab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Linux_arm64.tar.gz"
      sha256 "78b61673102077302a6f416e9732d0feae5de2834090c20b91760e7b1ef1ac36"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.8/wash-cli_Linux_x86_64.tar.gz"
      sha256 "58995c149624439939a942b7a71fa14f4342e0da38c0fb5a8cfdc7cd862b094d"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end