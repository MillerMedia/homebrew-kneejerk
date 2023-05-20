class Kneejerk < Formula
  desc "A tool for scanning environment variables from React websites"
  homepage "https://github.com/MillerMedia/Kneejerk"
  url "https://github.com/MillerMedia/Kneejerk/archive/refs/tags/0.0.1.tar.gz"
  sha256 "507fec4b595bfedee3993349af31c13d517375bccb2c3db79b6a58af75364bde"

  depends_on "python@3.9"

  def install
    ENV["SETUPTOOLS_SCM_PRETEND_VERSION"] = version
    system Formula["python@3.9"].opt_bin/"python3", *Language::Python.setup_install_args(prefix)
  end
end
