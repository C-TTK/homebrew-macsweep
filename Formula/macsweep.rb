class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.0.2.tar.gz"
  version "2.0.2"
  sha256 "1094f988ad7e4a635be3dea1a735d468153b28f32d0c2b594d1513a391e18da1"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
