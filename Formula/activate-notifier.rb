class ActivateNotifier < Formula
  desc "Wrapper around terminal-notifier that auto-injects -activate <bundleId>"
  homepage "https://github.com/tockrock/activate-notifier"
  url "https://github.com/tockrock/activate-notifier/releases/download/v0.9.0/activate-notifier.tar.gz"
  sha256 "1f355e9c21e2f055255068fe2b6c42cdf24085ace3c2eae59fda3b4f34aa250c"
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
