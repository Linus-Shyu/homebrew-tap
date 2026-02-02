class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "d87e25e9eff67bc6d7f0fa4b9bccb0d38fba1e2fff166f244c0ba75097b31e3d"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "9bb15fd1458c10a934eb790a17487c5a134e3a4d90d72dee050a4ea736735545"
  end

  def install
    bin.install "starfetch"
  end
end
