class Wash < Formula
  desc "A development assistant that helps track errors, decisions, and project state"
  homepage "https://github.com/bkidd1/wash-cli"
  url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "5ac938306d802ecf485b46f992043ac35f8173b9ee60dceb4641fe47b652d103"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wash", "./cmd/wash"
  end

  test do
    assert_match "v1.0.3", shell_output("#{bin}/wash version")
  end
end