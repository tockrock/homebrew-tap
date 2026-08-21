class ActivateNotifier < Formula
  desc "Wrapper around terminal-notifier that auto-injects -activate <bundleId>"
  homepage "https://github.com/tockrock/activate-notifier"
  url "https://github.com/tockrock/activate-notifier/releases/download/v1.0.1/activate-notifier.tar.gz"
  sha256 "c680664ae70f28dd8d3876c1363a8e86fd3727d6d3ef624b2f8a27b3af75014e"

  depends_on :macos => :sequoia
  depends_on "terminal-notifier"
  depends_on "tockrock/tap/proc-appinfo"

  def install
    bin.install "activate-notifier"
  end

  test do
    system "#{bin}/activate-notifier", "--help"
  end
end