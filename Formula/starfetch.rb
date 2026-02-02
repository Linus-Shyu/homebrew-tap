class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.2"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "dc8fec7a1e1f406328e375923009317cdb6039724a8b9a50bd28e82befb2b594"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "49558dd7aada67b3d404cfb481c23e4146be7951c54e3401f01971ad6b034c9e"
  end

  def install
    bin.install "starfetch"
  end
end
