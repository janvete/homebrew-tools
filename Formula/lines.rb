class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "05e66ba4f64ffe9186aa7d407398c1c12201bc2e04a4b270f8a0845aeec1f06d"
  license "MIT"
  head "https://github.com/janvete/lines.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TUI pro rychlé spouštění", shell_output("#{bin}/lines --help")
  end
end
