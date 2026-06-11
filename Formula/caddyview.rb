class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.4.0/caddyview-v0.4.0-darwin-arm64.tar.gz"
      sha256 "92b7bb31c4389291a28768d1815b0c6153df1769b50d31979fcf5e7078baed20"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.4.0/caddyview-v0.4.0-darwin-amd64.tar.gz"
      sha256 "cf5dfa3bfb05f9e9742ae1bb56b69b8ea929782d6c82659228ed51b6f0096ba2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.4.0/caddyview-v0.4.0-linux-amd64.tar.gz"
      sha256 "deeacf83446f069b782fa141beb153bc68ee76c39c9c638a7ff1f51d55c2982d"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
