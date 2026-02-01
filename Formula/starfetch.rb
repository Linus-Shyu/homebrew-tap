class Starfetch < Formula
  desc "A high-performance system information tool written in Rust"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  # 注意：这里的 URL 和 SHA256 会被机器人自动更新，现在可以先放个占位符
  url "https://github.com/Linus-Shyu/StarFetch_Core/releases/download/v0.2.4/starfetch-macos-x86_64.tar.gz"
  sha256 "79b3fb9beed58fa01e6fa7316fe4286a6141ba342a6305b5556f4a4931a6c67a"
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
