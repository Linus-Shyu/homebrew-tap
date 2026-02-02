class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "97747686696a4d8ba7b0fe9a5904d08b2940e81d9e0abbeb807923b9d4d6a321"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "9d44ca768d081bb753314132ce2dc277eed24dcc59f900cd2c9b58f9039d4924"
  end

  def install
    bin.install "starfetch"
  end
end
