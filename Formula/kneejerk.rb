class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.1.2.tar.gz"
  version "0.1.2"
  sha256 "2e53fcd52210685be134fec48022e8a7d798ccb15ecb9756580dab64d1c4f0bc"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "."
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
