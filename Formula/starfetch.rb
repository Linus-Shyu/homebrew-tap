class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "e65ad4b6d3f72407774aa0763d1bed2545d2a4172669008e46b52f1a8368be91"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "3fc5991b5c32059536e9408345de44f7818d0ade527473b2cb43da09d749475f"
  end

  def install
    bin.install "starfetch"
  end
end
