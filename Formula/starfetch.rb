class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.2"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "33cc7f0459b00dc2a4d09aac2b70552a786d394a23af9d002209b17873a38297"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "83cfa1bfc8ea3850eca5d3b2490670bc5732a4dbd63b3f421f748a80bac74892"
  end

  def install
    bin.install "starfetch"
  end
end
