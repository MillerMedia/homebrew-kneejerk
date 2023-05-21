class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.2.tar.gz"
  version "0.2"
  sha256 "9206d7da24f70f46bc7bc330304b40a4715c82b4c0580a0c40340a95801fd34c"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end


  test do
    system bin/"kneejerk", "-h"
  end
end
