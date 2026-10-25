class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.1.9.tar.gz"
  version "2.1.9"
  sha256 "6058f9d8e05fb12fa3fd0e0b3178d1af72b93b2146d2085fcad8659445c5651d"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
