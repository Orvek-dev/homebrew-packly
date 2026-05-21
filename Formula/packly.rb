class Packly < Formula
  desc "CLI and Context Router MCP Developer Preview"
  homepage "https://github.com/Orvek-dev/packly-developer-preview"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Orvek-dev/packly-developer-preview/releases/download/v0.59.1/packly-developer-preview-v0.59.1-aarch64-apple-darwin.tar.gz"
      sha256 "9a5aff932f4d30e5f18b7d90266882bb60cc5a4d61604860527eadad52bad11a"
    end

    on_intel do
      odie "Packly Developer Preview currently publishes macOS Apple Silicon binaries only."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Orvek-dev/packly-developer-preview/releases/download/v0.59.1/packly-developer-preview-v0.59.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9370cfdafffa8a4f9479983bb48f2c13f638803b54fea11f557f26ff765e7f68"
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
