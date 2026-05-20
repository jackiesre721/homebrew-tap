class Mydml < Formula
  desc "MySQL batch DML tool — DELETE/UPDATE/INSERT_SELECT without locking"
  homepage "https://github.com/jackiesre721/mydml"
  url "https://github.com/jackiesre721/mydml/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0b96c0ce249fd3a66e2d2b25999183d82f5b5e72a19d79ff2035b9643eea15f4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/mydml"
  end

  test do
    assert_match "mydml", shell_output("#{bin}/mydml --help")
  end
end
