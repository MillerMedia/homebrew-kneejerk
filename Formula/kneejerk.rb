class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "8a66e10da32aad809d5a5eb51e6768e5a9a6284461c3e7235428fb7e17513227"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end


  test do
    system bin/"kneejerk", "-h"
  end
end
