class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.1.5.tar.gz"
  version "0.1.5"
  sha256 "6c14c47fdb1ceaa418cfa4c6698a27a22952b69ddcdfe1c587c5c1110767e07b"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end


  test do
    system bin/"kneejerk", "-h"
  end
end
