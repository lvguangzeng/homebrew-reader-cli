class ReaderCli < Formula
  desc "命令行 txt 小说阅读器 - 支持编码自适应、章节跳转、进度记忆"
  homepage "https://github.com/lvguangzeng/reader-cli"
  url "file:///Users/lvguangzeng/Workspace/project/reader-cli/reader-cli"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # 简单测试二进制文件是否可以执行
    assert_predicate bin/"reader-cli", :exist?
  end
end
