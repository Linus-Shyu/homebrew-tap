class Starfetch < Formula
  desc "A high-performance system information tool written in Rust"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  # 注意：这里的 URL 和 SHA256 会被机器人自动更新，现在可以先放个占位符
  url "https://github.com/Linus-Shyu/StarFetch_Core/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "rust" => :build

  def install
    # 关键修正：进入代码所在的子目录
    Dir.chdir "StarFetch" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    # 简单的版本测试
    assert_match "starfetch", shell_output("#{bin}/starfetch --version")
  end
end
