# AI CLI Quick Reference

A quick reference guide for the four major AI coding CLI tools.

## Index

| CLI | Vendor | Version | Install |
|-----|--------|---------|---------|
| [GitHub Copilot CLI](#github-copilot-cli) | GitHub | v1.0.32 | `npm install -g @github/copilot` |
| [OpenAI Codex CLI](#openai-codex-cli) | OpenAI | v0.121.0 | `npm install -g @openai/codex` |
| [Claude Code CLI](#claude-code-cli) | Anthropic | v2.1.114 | `npm install -g @anthropic-ai/claude-code` |
| [Gemini CLI](#gemini-cli) | Google | v0.38.2 | `npm install -g @google/gemini-cli` |

---

## GitHub Copilot CLI

**Version:** v1.0.32
**Vendor:** GitHub
**Documentation:** [docs.github.com/copilot](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli)
**Command Reference:** [CLI Command Reference](https://docs.github.com/en/copilot/reference/cli-command-reference)
**Install:** `npm install -g @github/copilot`
**Requires:** GitHub Copilot subscription

GitHub Copilot CLI is a terminal-native AI coding agent that brings Copilot's agentic capabilities to the command line. It provides a chat interface for building, debugging, and understanding code. It can create and modify files, execute shell commands, interact with GitHub PRs/issues, and connect to external tools via MCP servers.

### Slash Commands

| Command | Description |
|---------|-------------|
| `/add-dir PATH` | Add a directory to the allowed list for file access |
| `/agent` | Browse and select from available agents |
| `/allow-all` | Enable all permissions (tools, paths, and URLs) |
| `/changelog [SUMMARIZE] [VERSION]` | Display the CLI changelog with an optional AI-generated summary |
| `/cd [PATH]` | Change the working directory or display current directory |
| `/clear` | Clear the conversation history |
| `/compact` | Summarize conversation history to reduce context window usage |
| `/context` | Show context window token usage and visualization |
| `/copy` | Copy the last response to the clipboard |
| `/cwd` | Display the current working directory |
| `/delegate [PROMPT]` | Delegate changes to a remote repository with an AI-generated PR |
| `/diff` | Review the changes made in the current directory |
| `/exit` | Exit the CLI |
| `/experimental [on\|off\|show]` | Toggle, set, or show experimental features |
| `/feedback` | Provide feedback about the CLI |
| `/fleet [PROMPT]` | Enable parallel subagent execution of parts of a task |
| `/help` | Show help for interactive commands |
| `/ide` | Connect to an IDE workspace |
| `/init` | Initialize Copilot custom instructions for a repository |
| `/instructions` | View and toggle custom instruction files |
| `/keep-alive [on\|busy\|NUMBERm\|NUMBERh]` | Prevent the machine from sleeping while you work |
| `/list-dirs` | Display all directories with file access permissions |
| `/login` | Log in to Copilot |
| `/logout` | Log out of Copilot |
| `/lsp [show\|test\|reload\|help] [SERVER-NAME]` | Manage language server configuration |
| `/mcp [show\|add\|edit\|delete\|disable\|enable\|auth\|reload] [SERVER-NAME]` | Manage MCP server configuration |
| `/model` | Select the AI model to use |
| `/models [MODEL]` | Select the AI model to use |
| `/on-air` | Toggle streamer mode |
| `/new` | Start a new session |
| `/plan [PROMPT]` | Create an implementation plan before coding |
| `/plugin [marketplace\|install\|uninstall\|update\|list] [ARGS...]` | Manage plugins and marketplaces |
| `/pr [view\|create\|fix\|auto]` | Operate on pull requests for the current branch |
| `/quit` | Exit the CLI |
| `/remote` | Enable remote access to this session from GitHub.com and GitHub Mobile |
| `/rename [NAME]` | Rename the current session (auto-generates a name if omitted) |
| `/research TOPIC` | Run deep research with GitHub search and web sources |
| `/reset-allowed-tools` | Reset the list of allowed tools |
| `/restart` | Restart the CLI while preserving the current session |
| `/resume [SESSION-ID]` | Switch to or resume a different session |
| `/review [PROMPT]` | Run the code review agent to analyze changes |
| `/session [checkpoints [n]\|files\|plan\|rename NAME]` | Show session info and workspace summary |
| `/share [file\|gist] [session\|research] [PATH]` | Share the session to a file or GitHub gist |
| `/skills [list\|info\|add\|remove\|reload] [ARGS...]` | Manage skills for enhanced capabilities |
| `/tasks` | View and manage background tasks |
| `/terminal-setup` | Configure terminal for multiline input |
| `/theme [show\|set\|list] [auto\|THEME-ID]` | View or configure the terminal theme |
| `/rewind` | Rewind the last turn and revert file changes |
| `/streamer-mode` | Toggle streamer mode |
| `/undo` | Rewind the last turn and revert file changes |
| `/update` | Update the CLI to the latest version |
| `/usage` | Display session usage metrics and statistics |
| `/user [show\|list\|switch]` | Manage the current GitHub user / switch accounts |
| `/version` | Display version information and check for updates |
| `/yolo` | Alias for `/allow-all` |

---

## OpenAI Codex CLI

**Version:** v0.121.0
**Vendor:** OpenAI
**Documentation:** [developers.openai.com/codex/cli](https://developers.openai.com/codex/cli)
**Slash Commands Docs:** [Slash Commands Reference](https://developers.openai.com/codex/cli/slash-commands)
**Install:** `npm install -g @openai/codex`
**Requires:** ChatGPT Plus/Pro/Team/Edu/Enterprise or OpenAI API key

OpenAI Codex CLI is a lightweight, terminal-based coding agent that connects to OpenAI models (including GPT-5.4 and o-series reasoning models). It can read and understand your codebase, generate and edit code across multiple files, and execute shell commands in a sandboxed environment with configurable approval levels.

### Slash Commands

| Command | Description |
|---------|-------------|
| `/agent` | Switch the active agent thread |
| `/apps` | Browse apps (connectors) and insert them into your prompt |
| `/clear` | Clear the terminal and start a fresh chat |
| `/compact` | Summarize the visible conversation to free tokens |
| `/copy` | Copy the latest Codex output to clipboard |
| `/debug-config` | Print config layer and requirements diagnostics |
| `/diff` | Show the Git diff, including untracked files |
| `/exit` | Exit the CLI |
| `/experimental` | Toggle experimental features |
| `/fast` | Toggle Fast mode for GPT-5.4 |
| `/feedback` | Send logs to the Codex maintainers |
| `/fork` | Fork the current conversation into a new thread |
| `/init` | Generate an `AGENTS.md` scaffold in the current directory |
| `/logout` | Sign out of Codex |
| `/mcp` | List configured MCP tools |
| `/mention` | Attach a file to the conversation |
| `/model` | Choose the active model and reasoning effort |
| `/new` | Start a new conversation inside the same session |
| `/permissions` | Set what Codex can do without asking first |
| `/personality` | Choose a communication style for responses |
| `/plan` | Switch to plan mode and optionally send a prompt |
| `/plugins` | Browse installed and discoverable plugins |
| `/ps` | Show background terminals and their recent output |
| `/quit` | Exit the CLI |
| `/resume` | Resume a saved conversation from your session list |
| `/review` | Ask Codex to review your working tree |
| `/sandbox-add-read-dir` | Grant sandbox read access to an extra directory |
| `/status` | Display session configuration and token usage |
| `/statusline` | Configure TUI status-line fields |
| `/stop` | Stop all background terminals |
| `/title` | Configure terminal window or tab title fields |

---

## Claude Code CLI

**Version:** v2.1.114
**Vendor:** Anthropic
**Documentation:** [code.claude.com/docs](https://code.claude.com/docs/en/overview)
**Commands Docs:** [Built-in Commands](https://code.claude.com/docs/en/commands)
**Install:** `npm install -g @anthropic-ai/claude-code`
**Requires:** Anthropic API key or Claude Pro/Max subscription

Claude Code is an agentic coding tool by Anthropic that lives in your terminal, IDE, desktop app, and browser. It reads your codebase, edits files, runs commands, and integrates with development tools. It supports MCP for external integrations, CLAUDE.md instruction files, custom skills, hooks, plugins, and agent teams for parallel work.

### Slash Commands

| Command | Description |
|---------|-------------|
| `/add-dir <path>` | Add a new working directory to the current session |
| `/agents` | Manage agent/subagent configurations |
| `/autofix-pr [prompt]` | Spawn a web session that auto-fixes CI failures and review feedback on your PR |
| `/batch <instruction>` | Skill command to orchestrate large-scale, parallel codebase changes |
| `/btw <question>` | Ask a quick side question without adding to the conversation |
| `/claude-api` | Skill command to load Claude API references for your project language |
| `/chrome` | Configure Claude in Chrome settings |
| `/clear` | Clear conversation history and free up context |
| `/color [color\|default]` | Set the prompt bar color for the current session |
| `/compact [instructions]` | Compact conversation with optional focus instructions |
| `/config` | Open the Settings interface |
| `/context` | Visualize current context usage as a colored grid |
| `/copy [N]` | Copy the last assistant response to clipboard |
| `/cost` | Show token usage statistics |
| `/debug [description]` | Skill command to enable debug logging and troubleshoot issues |
| `/desktop` | Continue the current session in the Claude Code Desktop app |
| `/diff` | Open an interactive diff viewer showing uncommitted changes |
| `/doctor` | Diagnose and verify your Claude Code installation |
| `/effort [level\|auto]` | Set model effort (`low`, `medium`, `high`, `xhigh`, or `max`) |
| `/exit` | Exit the CLI |
| `/export [filename]` | Export the current conversation as plain text |
| `/extra-usage` | Configure extra usage for rate limit situations |
| `/fast [on\|off]` | Toggle fast mode on or off |
| `/feedback [report]` | Submit feedback about Claude Code |
| `/fewer-permission-prompts` | Skill command to add a prioritized allowlist and reduce permission prompts |
| `/focus` | Toggle focus view in fullscreen rendering |
| `/heapdump` | Write a JavaScript heap snapshot to help diagnose memory issues |
| `/branch [name]` | Create a branch of the current conversation |
| `/help` | Show help and available commands |
| `/hooks` | View hook configurations for tool events |
| `/ide` | Manage IDE integrations and show status |
| `/init` | Initialize project with a CLAUDE.md guide |
| `/insights` | Generate a report analyzing your Claude Code sessions |
| `/install-github-app` | Set up the Claude GitHub Actions app |
| `/install-slack-app` | Install the Claude Slack app |
| `/keybindings` | Open or create your keybindings configuration file |
| `/login` | Sign in to your Anthropic account |
| `/logout` | Sign out from your Anthropic account |
| `/loop [interval] [prompt]` | Skill command to run a prompt repeatedly while the session stays open |
| `/mcp` | Manage MCP server connections and OAuth |
| `/memory` | Edit CLAUDE.md memory files |
| `/mobile` | Show a QR code to download the Claude mobile app |
| `/model [model]` | Select or change the AI model |
| `/passes` | Share a free week of Claude Code with friends |
| `/permissions` | View or update permissions |
| `/plan [description]` | Enter plan mode directly from the prompt |
| `/plugin` | Manage Claude Code plugins |
| `/powerup` | Launch quick interactive lessons for Claude Code features |
| `/pr-comments [PR]` | Removed in v2.1.91 (ask Claude directly to view PR comments) |
| `/privacy-settings` | View and update privacy settings |
| `/recap` | Generate a one-line summary of the current session |
| `/release-notes` | View the full changelog |
| `/reload-plugins` | Reload all active plugins |
| `/remote-control` | Make session available for remote control from claude.ai |
| `/remote-env` | Configure the default remote environment |
| `/rename [name]` | Rename the current session |
| `/resume [session]` | Resume a conversation by ID or name, or open the session picker |
| `/review [PR]` | Run code review (or review a specific PR) |
| `/rewind` | Rewind conversation and/or code to a previous point |
| `/sandbox` | Toggle sandbox mode |
| `/schedule [description]` | Create, update, list, or run scheduled tasks |
| `/security-review` | Analyze pending changes for security vulnerabilities |
| `/setup-bedrock` | Configure Amazon Bedrock authentication and model settings |
| `/setup-vertex` | Configure Google Vertex AI authentication and model settings |
| `/simplify [focus]` | Skill command to review and improve changed files |
| `/skills` | List available skills |
| `/stats` | Visualize daily usage, session history, and streaks |
| `/status` | Show version, model, account, and connectivity |
| `/statusline` | Configure Claude Code's status line |
| `/stickers` | Order Claude Code stickers |
| `/tasks` | List and manage background tasks |
| `/team-onboarding` | Generate a team onboarding guide from recent Claude Code usage |
| `/teleport` | Pull a Claude Code on the web session into your local terminal |
| `/terminal-setup` | Configure terminal keybindings |
| `/theme` | Change the color theme |
| `/tui [default\|fullscreen]` | Set the terminal UI renderer and relaunch with the current conversation |
| `/ultraplan <prompt>` | Draft a plan in a cloud ultraplan session |
| `/ultrareview [PR]` | Run a deep multi-agent code review in a cloud sandbox |
| `/upgrade` | Open the upgrade page for a higher plan tier |
| `/usage` | Show plan usage limits and rate limit status |
| `/vim` | Removed in v2.1.92 (toggle editor mode through `/config`) |
| `/voice` | Toggle push-to-talk voice dictation |
| `/web-setup` | Connect your GitHub account to Claude Code on the web |

---

## Gemini CLI

**Version:** v0.38.2
**Vendor:** Google
**Documentation:** [geminicli.com/docs](https://geminicli.com/docs/)
**Commands Docs:** [Commands Reference](https://geminicli.com/docs/reference/commands)
**Install:** `npm install -g @google/gemini-cli`
**Requires:** Google account (free tier: 60 req/min, 1,000 req/day) or Gemini API key

Gemini CLI is an open-source AI agent by Google that brings the power of Gemini models directly into the terminal. It features a 1M token context window, built-in tools for file operations, shell command execution, Google Search grounding, and web fetching. It supports MCP for custom integrations, hooks, agent skills, and session management with conversation checkpoints.

### Slash Commands

| Command | Description |
|---------|-------------|
| `/about` | Show version info |
| `/agents` | Manage local and remote subagents |
| `/auth` | Change the authentication method |
| `/bug` | File an issue about Gemini CLI |
| `/chat` | Save and resume conversation history |
| `/clear` | Clear the terminal screen |
| `/commands` | Manage custom slash commands loaded from `.toml` files |
| `/compress` | Replace the entire chat context with a summary to save tokens |
| `/copy` | Copy the last output to your clipboard |
| `/directory` | Manage workspace directories for multi-directory support |
| `/docs` | Open the Gemini CLI documentation in your browser |
| `/editor` | Select supported editors |
| `/extensions` | Manage/list active extensions in the current session |
| `/help` | Display help information and available commands |
| `/hooks` | Manage hooks to intercept and customize behavior |
| `/ide` | Manage IDE integration |
| `/init` | Generate a tailored `GEMINI.md` context file |
| `/mcp` | Manage MCP servers, their status, and tools |
| `/memory` | Manage the AI's instructional context from `GEMINI.md` files |
| `/model` | Manage model configuration |
| `/permissions` | Manage folder trust settings and other permissions |
| `/plan` | Switch to Plan Mode (read-only) and view the current plan |
| `/policies` | Manage policies |
| `/privacy` | Display the Privacy Notice and consent preferences |
| `/quit` | Exit Gemini CLI |
| `/restore` | Restore project files to state before a tool was executed |
| `/resume` | Browse and resume previous conversation sessions |
| `/rewind` | Navigate backward through the conversation history |
| `/settings` | Open the settings editor |
| `/shells` | Toggle the background shells view |
| `/setup-github` | Set up GitHub Actions for issue triage and PR reviews |
| `/skills` | Manage Agent Skills for specialized workflows |
| `/stats` | Display detailed session statistics and token usage |
| `/terminal-setup` | Configure terminal keybindings for multiline input |
| `/theme` | Change the visual theme |
| `/tools` | Display a list of tools currently available |
| `/upgrade` | Open the Gemini Code Assist upgrade page |
| `/vim` | Toggle vim mode on or off |

---

## Documentation Sources

All content sourced exclusively from official vendor documentation:

- **GitHub:** [docs.github.com/copilot](https://docs.github.com/en/copilot/reference/cli-command-reference)
- **OpenAI:** [developers.openai.com/codex](https://developers.openai.com/codex/cli/slash-commands)
- **Anthropic:** [code.claude.com/docs](https://code.claude.com/docs/en/commands)
- **Google:** [geminicli.com/docs](https://geminicli.com/docs/reference/commands)
