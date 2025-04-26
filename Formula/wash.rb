class Wash < Formula
    desc "CLI tool for managing your washing machine"
    homepage "https://github.com/bkidd1/wash-cli"
    url "https://github.com/bkidd1/wash-cli/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "e56dc64fcbc9e415956454b703a02462321c1cf7efa205796a7b1a6fe31fb2d1"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-trimpath", "-o", bin/"wash", "./cmd/wash"
    end
  
    test do
      assert_match "dev", shell_output("#{bin}/wash version")
    end
  end