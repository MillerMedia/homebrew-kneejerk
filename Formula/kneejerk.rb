class Kneejerk < Formula
  include Language::Python::Virtualenv

  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.0.1.tar.gz"
  sha256 "your_tarball_sha256"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Place your test here. Something like...
    assert_match "0.0.1", shell_output("#{bin}/kneejerk --version")
  end
end
