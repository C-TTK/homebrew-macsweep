class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.1.1.tar.gz"
  version "2.1.1"
  sha256 "d9c4de5dcf19d0766bf5d0d8eb1e81d2a3c37185e6b231a85e499a1b8aeae7ce"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
