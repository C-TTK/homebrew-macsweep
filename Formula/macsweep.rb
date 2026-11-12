class Macsweep < Formula
  desc "Safe macOS disk cleanup CLI companion for MacSweep"
  homepage "https://macsweep.app"
  url "https://releases.macsweep.app/macsweep-2.1.12.tar.gz"
  version "2.1.12"
  sha256 "aa1b63af21ca7c760cad37f743f6bccbe7b7dd5792a10d9e3f2734a59c66cf8f"
  license "Proprietary"

  depends_on macos: :ventura

  def install
    bin.install "bin/macsweep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macsweep --version")
  end
end
