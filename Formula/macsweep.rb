class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.1.6.tar.gz"
  version "2.1.6"
  sha256 "a99fbb8d9d9bd950069fc06e8533c61dcf9af9de5b06fc720c7737f97b866e57"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
