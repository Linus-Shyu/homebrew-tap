class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "d7b067495e3d6f723b7f3c09779b57d3c40e0e5152b3d0660433139a9c3d40b2"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "667302417c56cb7fab0b3051bd313311c170afdfa5aed0c11a6e795b094210ee"
  end

  def install
    bin.install "starfetch"
  end
end
