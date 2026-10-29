class Jockey < Formula
  desc "TUI that orchestrates Codex, Claude Code and Grok coding agents"
  homepage "https://github.com/lorenzopi/jockey"
  url "https://github.com/lorenzopi/jockey/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "4d54584db00238dbc9c322f3f93e758d21522ea0c6b1e4da7e48d8bd1f2593fc"
  license "MIT"
  head "https://github.com/lorenzopi/jockey.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage: jockey", shell_output("#{bin}/jockey --help")
  end
end
