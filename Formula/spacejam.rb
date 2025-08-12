class Spacejam < Formula
  desc "Universal implementation of the JAM protocol"
  homepage "https://spacejam.app"
  license "MIT"
  version "0.0.1"

  # Version 0.0.1 - Graypaper 0.6.7
  if Hardware::CPU.arm?
    url "https://github.com/spacejamapp/specjam/releases/download/0.6.7/spacejam-0.6.7-macos-arm64.tar.gz"
    sha256 "c4a5d30b49b3d8457b43668a6a3b3104f43a8bdcb81dfb1e56af9b21f810cecf"
  else
    url "https://github.com/spacejamapp/specjam/releases/download/0.6.7/spacejam-0.6.7-macos-amd64.tar.gz"
    sha256 "dfd865d097d16909486d411a84f4389a03bc6115d0275833efd3361e9337582e"
  end
  
  # install the binary
  def install
    bin.install "spacejam"
  end

  # add a caveats section to the formula
  def caveats
    <<~EOS
      Spacejam was successfully installed!

      To see a list of available commands, run:
        spacejam --help

      For more information and documentation, visit:
        https://spacejam.app
    EOS
  end

  # test that the binary works
  test do
    system "#{bin}/spacejam", "--version"
  end
end
