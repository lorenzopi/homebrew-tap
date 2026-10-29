class Jockey < Formula
  desc "TUI that orchestrates Codex, Claude Code and Grok coding agents"
  homepage "https://github.com/lorenzopi/jockey"
  url "https://github.com/lorenzopi/jockey/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "da714551a7d54fd7b16819799a66225086771f604dcb9c3f498d0d8191ccef1b"
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
