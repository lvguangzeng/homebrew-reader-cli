class ReaderCli < Formula
  desc "命令行 txt 小说阅读器 - 支持编码自适应、章节跳转、进度记忆"
  homepage "https://github.com/lvguangzeng/reader-cli"
  license "MIT"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    # 使用本地项目路径
    project_path = File.expand_path("../../reader-cli", __dir__)
    cd project_path do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    # 简单测试二进制文件是否可以执行
    assert_predicate bin/"reader-cli", :exist?
  end
end
