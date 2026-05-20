class Mydml < Formula
  desc "MySQL batch DML tool — DELETE/UPDATE/INSERT_SELECT without locking"
  homepage "https://github.com/jackiesre721/mydml"
  url "https://github.com/jackiesre721/mydml/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ccef5893c7a43d28813b8ba02cb074867d84086584db18c24ef4a225aaad93ff"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/mydml"
  end

  test do
    assert_match "mydml", shell_output("#{bin}/mydml --help")
  end
end
