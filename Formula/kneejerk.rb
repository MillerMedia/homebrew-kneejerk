class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.1.4.tar.gz"
  version "0.1.4"
  sha256 "663c7f6ee8b0e3cc1ad8ca8ffe6c3e20e13322eebfe1b0850173ce661deee1ec"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end


  test do
    system bin/"kneejerk", "-h"
  end
end
