class ProcAppinfo < Formula
  desc "Show detailed app info for the first macOS ancestor of any process"
  homepage "https://github.com/tockrock/proc-appinfo"
  url "https://github.com/tockrock/proc-appinfo/releases/download/vX.X.X/proc-appinfo.tar.gz"
  sha256 "REPLACE_WITH_SHA256"

  def install
    bin.install "proc-appinfo"
  end

  test do
    system "#{bin}/proc-appinfo", "--help"
  end
end
