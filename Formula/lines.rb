class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "f6c27a4bd45d55ee3c0c2460983c9c86316e613ff527207874e220a5f736b819"
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
