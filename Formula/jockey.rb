class Jockey < Formula
  desc "TUI that orchestrates Codex, Claude Code and Grok coding agents"
  homepage "https://github.com/lorenzopi/jockey"
  url "https://github.com/lorenzopi/jockey/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "caa00e57c3feea9734554c6f5710ad7310406ec2018162a7a52e02c07261908d"
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
