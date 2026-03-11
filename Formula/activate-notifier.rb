class ActivateNotifier < Formula
  desc "Wrapper around terminal-notifier that auto-injects -activate <bundleId>"
  homepage "https://github.com/tockrock/activate-notifier"
  url "https://github.com/tockrock/activate-notifier/releases/download/v0.0.0/activate-notifier.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on :macos => :sequoia
  depends_on "terminal-notifier"
  depends_on "tockrock/tap/terminal-bundleid"

  def install
    bin.install "activate-notifier"
  end

  test do
    system "#{bin}/activate-notifier", "--help"
  end
end
