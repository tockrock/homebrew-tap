class TerminalBundleid < Formula
  disable! date: "2026-05-09", because: "it has been replaced by tockrock/tap/proc-appinfo"

  desc "Returns the bundle ID of the terminal app you are running it from"
  homepage "https://github.com/tockrock/terminal-bundleid"
  url "https://github.com/tockrock/terminal-bundleid/releases/download/v0.9.0/terminal-bundleid.tar.gz"
  sha256 "6832618a871a6d8e3578d55744388d36253fda5265c88ca2a2a95c5bff6fe153"

  def install
    bin.install "terminal-bundleid"
  end

  test do
    system "#{bin}/terminal-bundleid", "--help"
  end
end
