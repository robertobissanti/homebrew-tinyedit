class Tinyedit < Formula
  desc "Small full-screen terminal text editor written in plain C"
  homepage "https://github.com/robertobissanti/tinyedit"
  url "https://github.com/robertobissanti/tinyedit/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "e0515bc931790aa00647fc60939695305e8099f3eab889872d16d05ffaba7342"
  license "MIT"

  def install
    system "make"
    bin.install "bin/tinyedit"
  end

  test do
    assert_predicate bin/"tinyedit", :exist?
    assert_predicate bin/"tinyedit", :executable?
  end
end
