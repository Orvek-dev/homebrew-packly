# Homebrew Tap for Packly

Official Homebrew tap for Packly Developer Preview.

Packly is a local CLI + stdio MCP context router for Claude Code, Codex, and Cursor. It helps AI coding agents use the right Pack context without turning every workspace into a giant `CLAUDE.md` or `AGENTS.md`.

## Install

```sh
brew tap Orvek-dev/packly
brew install packly
```

Or install directly:

```sh
brew install Orvek-dev/packly/packly
```

## Verify

```sh
packly --version
packly mcp status --mcp-bin packly-mcp
packly mcp readiness --no-workspace --mcp-bin packly-mcp
```

## What This Installs

- `packly`: Packly CLI
- `packly-mcp`: local stdio MCP server for Claude Code, Codex, and Cursor

## Supported Platforms

Current Developer Preview release: `v0.59.1`

- macOS Apple Silicon
- Linux x64

Windows users should download the zip from the Packly Developer Preview release page.

## More

- Website: https://usepackly.com
- Developer Preview: https://github.com/Orvek-dev/packly-developer-preview
- Releases: https://github.com/Orvek-dev/packly-developer-preview/releases
