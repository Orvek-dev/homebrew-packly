class Packly < Formula
  desc "CLI and Context Router MCP Developer Preview"
  homepage "https://github.com/Orvek-dev/packly-developer-preview"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Orvek-dev/packly-developer-preview/releases/download/v0.59.1/packly-developer-preview-v0.59.1-aarch64-apple-darwin.tar.gz"
      sha256 "53452c4bac6e934e952cf619bcc33928ee9eee65cf8d9bf0271a657314d834fc"
    end

    on_intel do
      odie "Packly Developer Preview currently publishes macOS Apple Silicon binaries only."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Orvek-dev/packly-developer-preview/releases/download/v0.59.1/packly-developer-preview-v0.59.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4830f89e6eaf8985616bcd9cec9a0c5e8a869ab0b8090e3b7da8b0be22cfd50"
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
    assert_match "packly 0.59.1", shell_output("#{bin}/packly --version")
    assert_match "packly-mcp 0.59.1", shell_output("#{bin}/packly-mcp --version")
    assert_match "mcp ok: true", shell_output("#{bin}/packly mcp status --mcp-bin #{bin}/packly-mcp")
  end
end
