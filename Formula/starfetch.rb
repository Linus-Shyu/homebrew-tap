class Starfetch < Formula
  desc "A fast and stylish system information fetch tool"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  version "0.2.3"
  license "MIT"
  
  if Hardware::CPU.arm?
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-aarch64-apple-darwin.tar.gz"
    sha256 "d9b7812037a5e501fa62dd56dc0e1fd0a6e23e97b7666f36721137ffea0bb8c3"
  else
    url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.3/starfetch-x86_64-apple-darwin.tar.gz"
    sha256 "0e939076d48dffa001b8b62bae4293c4afc053ec737abb22996f3640dc99fea4"
  end

  def install
    bin.install "starfetch"
  end
end
