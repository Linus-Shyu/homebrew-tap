class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "e4815499f560e41c76c4aef11b16115679ab34ed79a89c51ca771881f974429e"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "e480ff94388d8fa8e0834eef7bb7c3741a04aacec4dc2737e60031476c5bdebf"
  end

  def install
    bin.install "starfetch"
  end
end
