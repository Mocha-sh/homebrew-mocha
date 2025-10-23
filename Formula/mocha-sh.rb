class MochaSh < Formula
  include Language::Python::Virtualenv

  desc "Mocha.sh — your cozy terminal companion ☕"
  homepage "https://github.com/mocha-sh/mocha"
  url "https://files.pythonhosted.org/packages/source/m/mocha-sh/mocha-sh-1.0.5.tar.gz"
  sha256 "REPLACE_WITH_REAL_SHA256"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Mocha.sh", shell_output("#{bin}/mocha --help")
  end
end
