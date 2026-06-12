class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.0.4.tar.gz"
  version "2.0.4"
  sha256 "2da514fded2e74cd40308f7e762c997620851f2ff39ee930c502f7988e6a1968"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
