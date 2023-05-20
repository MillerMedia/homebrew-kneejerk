class Kneejerk < Formula
  include Language::Python::Virtualenv

  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.0.1.tar.gz"
  sha256 "cbaa6cf770b5867f4967eac62c2293dfe94e2e18e6a3f3b4131308df42bb51c5"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Place your test here. Something like...
    assert_match "0.0.1", shell_output("#{bin}/kneejerk --version")
  end
end
