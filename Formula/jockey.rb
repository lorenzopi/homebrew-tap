class Jockey < Formula
  desc "TUI that orchestrates Codex, Claude Code and Grok coding agents"
  homepage "https://github.com/lorenzopi/jockey"
  url "https://github.com/lorenzopi/jockey/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "1bc56c1a2932f2a1d30f2a8333eb58af4006ad99f5f1c4dbd13f1608c94615bd"
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
