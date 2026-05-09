class ProcAppinfo < Formula
  desc "Show detailed app info for the first macOS ancestor of any process"
  homepage "https://github.com/tockrock/proc-appinfo"
  url "https://github.com/tockrock/proc-appinfo/releases/download/v1.0.0/proc-appinfo.tar.gz"
  sha256 "dd2d4c335e5f3c8b5e747e17b6268ceefa00b8607a427fc9bfa93b4002aa536c"

  def install
    bin.install "proc-appinfo"
  end

  test do
    system "#{bin}/proc-appinfo", "--help"
  end
end