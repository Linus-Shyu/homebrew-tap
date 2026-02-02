class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "47050ed0095e861ad55b1df9f371cf3af9e681af27a5f5168e741edab55055ea"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "5c8a2cdc3bf8dc928324cb358aa5a694e8f130ff6d08ff8cef661bd6ecd10e54"
  end

  def install
    bin.install "starfetch"
  end
end
