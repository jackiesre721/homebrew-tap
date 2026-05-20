class Mydml < Formula
  desc "MySQL batch DML tool — DELETE/UPDATE/INSERT_SELECT without locking"
  homepage "https://github.com/jackiesre721/mydml"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackiesre721/mydml/releases/download/v1.0.0/mydml_darwin_arm64.tar.gz"
      sha256 "610081b661604c97956640d3e6cf53c73f8ac31e141a972dc20d559915f91c5f"
    else
      url "https://github.com/jackiesre721/mydml/releases/download/v1.0.0/mydml_darwin_amd64.tar.gz"
      sha256 "54a1d72f998d5a2ef27950d1b9a529821d8ed1be9e1f66a993b3989fb2160cdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackiesre721/mydml/releases/download/v1.0.0/mydml_linux_arm64.tar.gz"
      sha256 "fd9d70b10c295b874466603e64c55fdea4d385753ea30f0bd1794a216a64a8fd"
    else
      url "https://github.com/jackiesre721/mydml/releases/download/v1.0.0/mydml_linux_amd64.tar.gz"
      sha256 "b383d78140321f129d4db8ec55fda4c480a133acfa6b90ae6ee1cc0ae3a45267"
    end
  end

  def install
    bin.install "mydml"
  end

  test do
    assert_match "mydml", shell_output("#{bin}/mydml --help")
  end
end
