class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.16.tar.gz"
  sha256 "f58d9efce155cc896951ea4abf9801cca7298d5e4b40a437da10c271bef29fc9"
  license "MIT"
  head "https://github.com/janvete/lines.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TUI for running frequently used commands", shell_output("#{bin}/lines --help")
  end
end
