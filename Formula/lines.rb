class Lines < Formula
  desc "TUI for running frequently used commands from markdown files"
  homepage "https://github.com/janvete/lines"
  url "https://github.com/janvete/lines/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "8e260d43baeafc3909b3748beac4093bb50d44cd7c629d9806c2e6daaee1d650"
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
