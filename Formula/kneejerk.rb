class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "20e163a5bb9b8a902f6122d77b0f3c03df5b6fab580eb751548085aed19a023e"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "."
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
