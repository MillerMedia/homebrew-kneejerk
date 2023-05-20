class Kneejerk < Formula
  include Language::Python::Virtualenv

  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.0.1.tar.gz"
  sha256 "507fec4b595bfedee3993349af31c13d517375bccb2c3db79b6a58af75364bde"

  depends_on "python@3.9"

  def install
    venv = virtualenv_create(libexec, Formula["python@3.9"].opt_bin/"python3")
    system libexec/"bin/pip", "install", "-v", "--no-deps", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "kneejerk"
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "0.0.1", shell_output("#{bin}/kneejerk --version")
  end
end
