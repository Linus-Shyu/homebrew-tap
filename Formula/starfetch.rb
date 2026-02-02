class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.2"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "8e1beadf9d97777f251de3883ed4f315173560af59d2569974525e99bf4095c2"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "b7586d6aa4c9ec2bb82ba483c29e5b615587502f4736df7c59dd1d2a6db64665"
  end

  def install
    bin.install "starfetch"
  end
end
