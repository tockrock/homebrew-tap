class ActivateNotifier < Formula
  desc "Wrapper around terminal-notifier that auto-injects -activate <bundleId>"
  homepage "https://github.com/tockrock/activate-notifier"
  url "https://github.com/tockrock/activate-notifier/releases/download/v1.0.0/activate-notifier.tar.gz"
  sha256 "6991839ab3970e2d4087afdf1656746f538219a537f296d278808560d8a2be4e"

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