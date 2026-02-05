class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.4"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.4/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "9fb962c07473fc275d6cb2955dc8b65855173173af6bfcfd75484e265036ced1"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.4/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "7191854e398b1440f258864707b76fa6d5ae6274b484e12c446e81a882768326"
  end

  def install
    bin.install "starfetch"
  end
end
