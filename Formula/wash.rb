class Wash < Formula
    desc "CLI tool for managing your washing machine"
    homepage "https://github.com/bkidd1/wash-cli"
    url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "70fbd34166df09e8ee4f74964d19807014344607bc2de6f592d35b7a1661045a"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-trimpath", "-o", bin/"wash", "./cmd/wash"
    end
  
    test do
      assert_match "dev", shell_output("#{bin}/wash version")
    end
  end