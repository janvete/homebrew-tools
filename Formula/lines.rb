class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5314c14515f0ef8834bc0dbd72a2ec1f5d5f5e14c9c7de6d4d5e69981b896b12"
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
