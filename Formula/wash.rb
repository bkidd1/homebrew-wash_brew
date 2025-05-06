class Wash < Formula
  desc "A CLI tool for analyzing and cleaning code"
  homepage "https://github.com/bkidd1/wash-cli"
  version "1.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.9/wash-cli_Darwin_arm64.tar.gz"
      sha256 "1bf34cfeae8ba2c897df8b24321a004a7775f037b9e5b7c060aeaecdd19810fb"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.9/wash-cli_Darwin_x86_64.tar.gz"
      sha256 "c26308a892a4a6b5459a4550c2266c4c8364031e7e0f3e6a84c36c7969821e68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.9/wash-cli_Linux_arm64.tar.gz"
      sha256 "74b424ed8a4e143dc835e34a98ee33ba3a440dd90dc9b3fb07113a51bf5dd62e"
    else
      url "https://github.com/bkidd1/wash-cli/releases/download/v1.0.9/wash-cli_Linux_x86_64.tar.gz"
      sha256 "6cb469ec8847a3ea60159f1dfca438234a4cd57108f46a006bf0edfb09d23c2f"
    end
  end

  def install
    bin.install "wash"
  end

  test do
    system "#{bin}/wash", "version"
  end
end