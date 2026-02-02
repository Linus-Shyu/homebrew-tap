class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "41d8b6e0242d7478db843bf43c34829deadb64864f7ff598212a7374e2c934a2"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "0059f0275752d5ef180192519cca81723404f4b4f41d9354c82bd37cfd9f3994"
  end

  def install
    bin.install "starfetch"
  end
end
