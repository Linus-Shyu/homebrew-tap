class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "d416cc58441df3fd29318c8f780cde1b6bfedf2b834b46a2fd2f494749285c2c"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "136836cd42768f27e0415bef876c339d3d9766da36b63d54b43140ee5f622a9a"
  end

  def install
    bin.install "starfetch"
  end
end
