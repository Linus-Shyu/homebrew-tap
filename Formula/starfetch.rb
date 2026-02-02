class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "dcedca605d759acafb22709d7ae42da985fcbe57e8b752fa2edb757cb308dc30"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "603c6a5fcd4597bae6a80798d7157ef370025ff69bc2544b3fd4f900ec38d763"
  end

  def install
    bin.install "starfetch"
  end
end
