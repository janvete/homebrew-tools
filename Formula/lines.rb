class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "182a9ef9e301c1d2169bb6634816cc542d12b8de92ca52fe3fb063cf215e9dc3"
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
