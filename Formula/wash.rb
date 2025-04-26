class Wash < Formula
  desc "A development assistant that helps track errors, decisions, and project state"
  homepage "https://github.com/bkidd1/wash-cli"
  url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "81815efb5bd04583d703bf679d0b9d5ed838a655236bb33a4feec145b556efea"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"wash", "./cmd/wash"
  end

  test do
    assert_match "v1.0.2", shell_output("#{bin}/wash version")
  end
end