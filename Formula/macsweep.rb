class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.0.6.tar.gz"
  version "2.0.6"
  sha256 "9ceb6a08b1d33f3f92c71775ad08f7626abcdd6f9f258bfed310e213a23f3194"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
