class Kneejerk < Formula
  include Language::Python::Virtualenv

  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "080c2c41319f514b99ab7d757b4acad6ae58fc5ddbedb81cd42584f240c14fb9"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"kneejerk", "-h"
  end
end
