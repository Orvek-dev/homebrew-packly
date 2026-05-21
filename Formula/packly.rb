class Packly < Formula
  desc "CLI and Context Router MCP Developer Preview"
  homepage "https://github.com/Orvek-dev/packly-developer-preview"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Orvek-dev/packly-developer-preview/releases/download/v0.59.0/packly-developer-preview-v0.59.0-aarch64-apple-darwin.tar.gz"
      sha256 "bf0a6bb2dcc424a779ba51010b85f43cc8694f538f5514859a907aced8834bea"
    end

    on_intel do
      odie "Packly Developer Preview currently publishes macOS Apple Silicon binaries only."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Orvek-dev/packly-developer-preview/releases/download/v0.59.0/packly-developer-preview-v0.59.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0f7f84523c7e78a484e9380a027492a0ab988e7e76265843c6641c9b3421efc"
    end

    on_arm do
      odie "Packly Developer Preview does not publish Linux ARM64 binaries yet."
    end
  end

  def install
    bin.install "packly"
    bin.install "packly-mcp"
  end

  test do
    assert_match "packly 0.59.0", shell_output("#{bin}/packly --version")
    assert_match "packly-mcp 0.59.0", shell_output("#{bin}/packly-mcp --version")
    assert_match "mcp ok: true", shell_output("#{bin}/packly mcp status --mcp-bin #{bin}/packly-mcp")
  end
end
