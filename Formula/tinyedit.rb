class Tinyedit < Formula
  desc "Small full-screen terminal text editor written in plain C"
  homepage "https://github.com/robertobissanti/tinyedit"
  url "https://github.com/robertobissanti/tinyedit/archive/refs/tags/v0.3.10.tar.gz"
  sha256 "bcc5a21848cd8a5f05c701695a8449be2af8d9ccb2731a1df2735e9d4eff053d"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    # Installs the binary plus shared color schemes, syntax definitions and
    # guides under #{pkgshare}, which the binary is compiled to look up.
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinyedit --version")
    assert_path_exists pkgshare/"color-scheme/one-dark.conf"
  end
end
