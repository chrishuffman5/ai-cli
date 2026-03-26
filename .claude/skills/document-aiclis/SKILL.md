---
name: document-aiclis
description: >
  Update the AI CLI Quick Reference README.md with the latest versions and slash commands
  for GitHub Copilot CLI, OpenAI Codex CLI, Claude Code CLI, and Gemini CLI.
  Use this skill whenever the user asks to update, refresh, or check the AI CLI documentation,
  or mentions checking for new versions or commands of any of these 4 CLIs.
  Also trigger when the user mentions "document-aiclis", "update readme", "check CLI versions",
  or "refresh slash commands".
---

# Document AI CLIs Skill

This skill keeps the AI CLI Quick Reference (`README.md`) up to date by checking official vendor
documentation and the npm registry for the latest versions and slash commands of all 4 supported
AI coding CLIs.

## When to Run

- On a scheduled basis (weekly via GitHub Actions)
- When the user asks to update or refresh the CLI documentation
- When checking if any CLI has released new versions or commands

## The 4 CLIs and Their Vendor Sources

Each CLI has two types of information to check: **version** (from npm) and **slash commands** (from vendor docs).

### 1. GitHub Copilot CLI (`@github/copilot`)

| What | Where to Check |
|------|---------------|
| Latest version | `https://registry.npmjs.org/@github/copilot/latest` (read the `version` field) |
| Slash commands | `https://docs.github.com/en/copilot/reference/cli-command-reference` |
| General docs | `https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli` |

### 2. OpenAI Codex CLI (`@openai/codex`)

| What | Where to Check |
|------|---------------|
| Latest version | `https://registry.npmjs.org/@openai/codex/latest` (read the `version` field) |
| Slash commands | `https://developers.openai.com/codex/cli/slash-commands` |
| General docs | `https://developers.openai.com/codex/cli` |

### 3. Claude Code CLI (`@anthropic-ai/claude-code`)

| What | Where to Check |
|------|---------------|
| Latest version | `https://registry.npmjs.org/@anthropic-ai/claude-code/latest` (read the `version` field) |
| Slash commands | `https://code.claude.com/docs/en/commands` |
| General docs | `https://code.claude.com/docs/en/overview` |

### 4. Gemini CLI (`@google/gemini-cli`)

| What | Where to Check |
|------|---------------|
| Latest version | `https://registry.npmjs.org/@google/gemini-cli/latest` (read the `version` field) |
| Slash commands | `https://geminicli.com/docs/reference/commands` |
| General docs | `https://geminicli.com/docs/` |

## Update Procedure

Follow these steps in order:

### Step 1: Check current README state

Read `README.md` in the project root to see what versions and commands are currently documented.

### Step 2: Fetch latest versions from npm

For each CLI, fetch the latest version from the npm registry. Use the JSON endpoint:
```
https://registry.npmjs.org/<package>/latest
```
The `version` field in the response has the current stable version.

### Step 3: Fetch latest slash commands from vendor docs

For each CLI, fetch the official vendor documentation page listed above. Extract the complete
list of slash commands. Only use the vendor documentation URLs listed in this skill — do not
use third-party sources, blogs, community wikis, or AI-generated summaries.

### Step 4: Compare and update README.md

For each CLI, compare what's in the README against what you found:
- If the version has changed, update it in both the index table and the CLI section header
- If slash commands have been added or removed, update the commands table
- If a command description has changed, update it
- Preserve the existing README structure and formatting

### Step 5: Report changes

After updating, provide a summary of what changed:
- Which CLIs had version bumps (old version -> new version)
- How many slash commands were added/removed per CLI
- Any notable changes

If nothing changed, report that all documentation is current.

## Important Guidelines

- **Vendor docs only**: Never use third-party sources. The npm registry and the vendor documentation
  URLs listed above are the only authoritative sources.
- **Preserve structure**: The README has a specific format with an index table, 4 sections with
  anchor links, and a documentation sources footer. Keep this structure intact.
- **Be conservative**: If a vendor doc page is unreachable or returns unexpected content, do not
  remove existing data. Report the issue and skip that CLI's update.
- **Version format**: Use `v` prefix for display (e.g., `v1.0.11`) even if npm returns without it.

## Automation

This skill is designed to be run by the `update-cli-docs.yml` GitHub Actions workflow every
Sunday at 8pm EST (01:00 UTC Monday). The workflow runs `claude` in non-interactive mode with
a prompt that invokes this skill, commits any changes, and pushes to the repository.
