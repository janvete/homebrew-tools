class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "6432451f997fcd9413bc1e6d10eb545aa2752b51cc57fb2890f10ac6b6886939"
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
