class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "5abbe1e246a1710d57ce4d3f14c55155889c8305ca25e331ff83023b14e868d9"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "29e45ca616581abfe399076b4bf47a1a9e18096e901ed4085e68042a758c41bf"
  end

  def install
    bin.install "starfetch"
  end
end
