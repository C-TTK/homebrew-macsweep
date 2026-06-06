class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.0.1.tar.gz"
  version "2.0.1"
  sha256 "58f8db7d2ce4d8ededdd5abe39130c7d6fa8bdbd6b1a94e40dd0bb65f641f332"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
