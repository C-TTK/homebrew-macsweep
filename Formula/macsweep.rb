class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.0.5.tar.gz"
  version "2.0.5"
  sha256 "6b4a9c43ae50780b16b78365ba6dd6ee996d290a4c1eda2ac21c4d96ed0eaf96"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
