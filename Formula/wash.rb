class Wash < Formula
  desc "A development assistant that helps track errors, decisions, and project state"
  homepage "https://github.com/bkidd1/wash-cli"
  url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "add467fbc5a5f3f9e21154747d33ac68e29d2b2c9f736b0e349eed20adb7d6e2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wash", "./cmd/wash"
  end

  test do
    assert_match "v1.0.2", shell_output("#{bin}/wash version")
  end
end