class Jockey < Formula
  desc "TUI that orchestrates Codex, Claude Code and Grok coding agents"
  homepage "https://github.com/lorenzopi/jockey"
  url "https://github.com/lorenzopi/jockey/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "b0312c6871e9c1e801aaf2322461425ef29704b7c124c535aaef575ac21ea416"
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
