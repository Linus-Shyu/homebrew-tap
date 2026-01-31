class Starfetch < Formula
  desc "A high-performance system information tool written in Rust"
  homepage "https://github.com/Linus-Shyu/StarFetch_Core"
  # 这里的 URL 和 SHA256 会被 GitHub Action 自动更新
  url "https://github.com/Linus-Shyu/StarFetch_Core/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "rust" => :build

  def install
    # 既然 StarFetch 是 Rust 项目，使用这个标准命令即可
    # 它会自动执行 cargo build --release 并把二进制文件移到 Homebrew 的 bin 目录
    system "cargo", "install", *std_cargo_args
  end

  test do
    # 简单的安装后测试
    assert_match "starfetch", shell_output("#{bin}/starfetch --version")
  end
end

