class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.2"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "df7e76f17dac6bd571990f9ec4c5ad3b20bd8be8c380b04d0c51f9a828ae5731"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.2/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "e094be58ce03758d9f0e52ed33683e8f34ede3455534a9fdbd7df2244c98cd90"
  end

  def install
    bin.install "starfetch"
  end
end
