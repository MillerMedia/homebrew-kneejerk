class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.1.tar.gz"
  version "0.1"
  sha256 "de5955c932ff2c07988cb37607b4ff7ba9390bfc39313618baafe8776bc9e7e2"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "."
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
