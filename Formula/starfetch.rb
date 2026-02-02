class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "5bd2a015afb2ffe443d2433a83a0cbb7f7f06e097e8afde0099bc7aa02b67df2"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "527e00729f31ef43998c3128f488a955177cf1a8b860f61460e8dd5c7742df88"
  end

  def install
    bin.install "starfetch"
  end
end
