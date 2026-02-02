class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "8917211d9bf4c24e124657e013fd75d298443437dcf983c98180411f1b9457bc"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "62e3571c72caead82d3d005ed04eab6b2d90dd6e9412ce9bc0b8e5c500484673"
  end

  def install
    bin.install "starfetch"
  end
end
