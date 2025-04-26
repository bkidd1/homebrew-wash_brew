class Wash < Formula
  desc "A development assistant that helps track errors, decisions, and project state"
  homepage "https://github.com/bkidd1/wash-cli"
  url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b8171b933b7ef80d38006bb62b12669456b287780a7c0bd3e044ee4bb72b6301"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wash", "./cmd/wash"
  end

  test do
    assert_match "v0.1.1", shell_output("#{bin}/wash version")
  end
end