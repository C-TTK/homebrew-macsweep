class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.1.8.tar.gz"
  version "2.1.8"
  sha256 "d4d49cc061e0952ec5bf7fdf6f474e32417492e6da6179d311db9b45e2216498"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
