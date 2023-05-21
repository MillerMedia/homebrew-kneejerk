class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.1.4.tar.gz"
  version "0.1.4"
  sha256 "2579503a1d2aa7b621d68d2779f49052c7234d0543fb121fbf44e1cc19405ca0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"kneejerk", "./cmd/kneejerk"
  end


  test do
    system bin/"kneejerk", "-h"
  end
end
