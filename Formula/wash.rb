class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Darwin_arm64.tar.gz"
      sha256 "db46f6769af61ebe220032ad91339f23401918928f431170395977b8a3c8e895"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "db46f6769af61ebe220032ad91339f23401918928f431170395977b8a3c8e895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Linux_arm64.tar.gz"
      sha256 "db46f6769af61ebe220032ad91339f23401918928f431170395977b8a3c8e895"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.1.2/wash-cli_Linux_x86_64.tar.gz"
      sha256 "db46f6769af61ebe220032ad91339f23401918928f431170395977b8a3c8e895"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end