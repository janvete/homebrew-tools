class Caddyview < Formula
  desc "TUI SSH monitor for Caddy web server logs"
  homepage "https://github.com/janvete/caddyview"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/janvete/caddyview/releases/download/v0.1.0/caddyview-v0.1.0-darwin-arm64.tar.gz"
      sha256 "a175c6a76f5738ce9f8a6acc5ae1da0bdaa1e2891a0686204ed873cf9cf3ad3a"
    else
      url "https://github.com/janvete/caddyview/releases/download/v0.1.0/caddyview-v0.1.0-darwin-amd64.tar.gz"
      sha256 "0c8bc15a135118f05ab31f83567b61fb06c699ac899a034d881fa247b2b116a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/janvete/caddyview/releases/download/v0.1.0/caddyview-v0.1.0-linux-amd64.tar.gz"
      sha256 "52b2a8c45be24b5c749940c1a05c4e0cf33bd5c01e823e357d0009e6cba47f60"
    end
  end

  def install
    bin.install "caddyview"
  end

  test do
    assert_match "TUI monitor", shell_output("#{bin}/caddyview --help")
  end
end
