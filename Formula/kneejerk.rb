class Kneejerk < Formula
  include Language::Python::Virtualenv

  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "507fec4b595bfedee3993349af31c13d517375bccb2c3db79b6a58af75364bde"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
