#!/bin/bash
# Quick check script to see current npm versions for all 4 AI CLIs
# This can be run standalone to see if updates are available

echo "=== AI CLI Version Check ==="
echo ""

for pkg in "@github/copilot" "@openai/codex" "@anthropic-ai/claude-code" "@google/gemini-cli"; do
  version=$(curl -s "https://registry.npmjs.org/${pkg}/latest" | grep -o '"version":"[^"]*"' | head -1 | cut -d'"' -f4)
  echo "${pkg}: v${version}"
done

echo ""
echo "=== Vendor Documentation Links ==="
echo "Copilot CLI commands:  https://docs.github.com/en/copilot/reference/cli-command-reference"
echo "Codex CLI commands:    https://developers.openai.com/codex/cli/slash-commands"
echo "Claude Code commands:  https://code.claude.com/docs/en/commands"
echo "Gemini CLI commands:   https://geminicli.com/docs/reference/commands"
