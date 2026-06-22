# AI CLI Quick Reference

A quick reference guide for the four major AI coding CLI tools.

## Index

| CLI | Vendor | Version | Install |
|-----|--------|---------|---------|
| [GitHub Copilot CLI](#github-copilot-cli) | GitHub | v1.0.63 | `npm install -g @github/copilot` |
| [OpenAI Codex CLI](#openai-codex-cli) | OpenAI | v0.141.0 | `npm install -g @openai/codex` |
| [Claude Code CLI](#claude-code-cli) | Anthropic | v2.1.185 | `npm install -g @anthropic-ai/claude-code` |
| [Gemini CLI](#gemini-cli) | Google | v0.47.0 | `npm install -g @google/gemini-cli` |

---

## GitHub Copilot CLI

**Version:** v1.0.63
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
| `/after [DELAY PROMPT]`, `/after` | Schedule a non-recurring prompt, skill, or schedulable slash command for the current session; only available in experimental mode |
| `/agent` | Browse and select from available agents |
| `/app` | Launch the GitHub Copilot app, or show the download URL if the app is not installed |
| `/ask QUESTION` | Ask a quick side question without adding to the conversation history; only available in experimental mode |
| `/allow-all [on\|off\|show]`, `/yolo [on\|off\|show]` | Enable all permissions (tools, paths, and URLs) |
| `/changelog [summarize] [VERSION\|last N\|since VERSION]`, `/release-notes [summarize] [VERSION\|last N\|since VERSION]` | Display the CLI changelog |
| `/chronicle <standup\|tips\|improve\|reindex>` | Use session history tools and insights |
| `/clear [PROMPT]`, `/new [PROMPT]`, `/reset [PROMPT]` | Start a new conversation |
| `/clikit [COMPONENT]` | Preview CLI business components |
| `/compact [FOCUS-INSTRUCTIONS]` | Summarize conversation history to reduce context window usage, optionally focused by instructions |
| `/context` | Show context window token usage and visualization |
| `/copy` | Copy the last response to the clipboard |
| `/cwd`, `/cd [PATH]` | Change the working directory or display current directory |
| `/delegate [PROMPT]` | Delegate changes to a remote repository with an AI-generated pull request |
| `/diff` | Review changes in the current directory; auto-switches to branch diff when the working tree is clean (experimental) |
| `/downgrade <VERSION>` | Download and restart into a specific CLI version; available for team accounts |
| `/env` | Show loaded environment details (instructions, MCP servers, skills, agents, plugins, LSPs, hooks, extensions) |
| `/every [INTERVAL PROMPT]`, `/every` | Schedule a recurring prompt, skill, or schedulable slash command for the current session; only available in experimental mode |
| `/exit`, `/quit` | Exit the CLI |
| `/extensions [manage\|mode]`, `/extension` | Manage CLI extensions |
| `/experimental [on\|off\|show]` | Toggle, set, or show experimental features |
| `/feedback`, `/bug` | Provide feedback about the CLI |
| `/fleet [PROMPT]` | Enable parallel subagent execution of parts of a task |
| `/help` | Show help for interactive commands |
| `/ide` | Connect to an IDE workspace |
| `/init` | Initialize Copilot custom instructions and agentic features for a repository |
| `/instructions` | View and toggle custom instruction files |
| `/keep-alive [on\|off\|busy\|DURATION]`, `/caffeinate [on\|off\|busy\|DURATION]` | Prevent the machine from sleeping while the CLI is active, the agent is busy, or for a duration |
| `/list-dirs` | Display all directories with file access permissions |
| `/login` | Log in to Copilot |
| `/logout` | Log out of Copilot |
| `/lsp [show\|test\|reload\|help] [SERVER-NAME]` | Manage language server configuration |
| `/mcp [show\|add\|edit\|delete\|disable\|enable\|auth\|reload\|search] [SERVER-NAME]` | Manage MCP server configuration |
| `/model`, `/models [MODEL]` | Select the AI model to use |
| `/permissions [show\|reset]` | View or clear in-memory tool and path approvals for the current session |
| `/plan [PROMPT]` | Create an implementation plan before coding |
| `/plugin [marketplace\|install\|uninstall\|update\|list] [ARGS...]` | Manage plugins and marketplaces |
| `/pr [view\|create\|fix\|auto]` | Manage pull requests for the current branch |
| `/remote [on\|off]` | Show remote control status, enable remote steering, or end the remote connection |
| `/rename [NAME]` | Rename the current session (auto-generates a name if omitted) |
| `/research TOPIC` | Run deep research with GitHub search and web sources |
| `/reset-allowed-tools` | Reset the list of allowed tools |
| `/restart` | Restart the CLI while preserving the current session |
| `/resume [SESSION-ID]`, `/continue [SESSION-ID]` | Switch to or resume a different session |
| `/review [PROMPT]` | Run the code review agent to analyze changes |
| `/rubber-duck [PROMPT]` | Consult the rubber duck agent for a second opinion on plans, code, and tests |
| `/sandbox [enable\|disable]` | Configure shell command sandboxing |
| `/search [QUERY]`, `/find [QUERY]` | Search the conversation timeline; only available in experimental mode |
| `/security-review [PROMPT]` | Run the security review agent to analyze changes for vulnerabilities |
| `/session [info\|checkpoints [n]\|files\|plan\|rename [NAME]\|cleanup\|prune\|delete [ID]\|delete-all]`, `/sessions [info\|checkpoints [n]\|files\|plan\|rename [NAME]\|cleanup\|prune\|delete [ID]\|delete-all]` | Show session information and manage sessions |
| `/settings [show\|[KEY VALUE]\|reset KEY]` | Open the settings dialog, set a setting inline, or reset a setting to its default |
| `/share [file\|html\|gist] [session\|research] [PATH]`, `/export [file\|html\|gist] [session\|research] [PATH]` | Share the session to a Markdown file, interactive HTML file, or GitHub gist |
| `/skills [list\|info\|add\|remove\|reload] [ARGS...]` | Manage skills for enhanced capabilities |
| `/statusline`, `/footer` | Configure which items appear in the status line |
| `/subagents`, `/agents` | Configure default and per-agent subagent models |
| `/tasks` | View and manage tasks (subagents and shell commands) |
| `/terminal-setup` | Configure the terminal for multiline input support |
| `/theme [default\|dim\|high-contrast\|colorblind]` | View or set the color mode |
| `/tuikit [colors\|icons\|select\|tabbar]` | Preview TUIkit design-system components and color tokens |
| `/undo`, `/rewind` | Rewind the last turn and revert file changes tracked by the tool layer |
| `/update`, `/upgrade` | Update the CLI to the latest version |
| `/usage` | Display session usage metrics and statistics |
| `/user [show\|list\|switch]` | Manage the current GitHub user |
| `/version` | Display version information and check for updates |
| `/worktree [branch]`, `/move [branch]` | Create a new git worktree and switch to it, moving uncommitted changes along and auto-generating a branch name if omitted; only available in experimental mode |

---

## OpenAI Codex CLI

**Version:** v0.141.0
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
| `/approve` | Approve one retry of a recent auto review denial |
| `/archive` | Archive the current session and exit Codex |
| `/clear` | Clear the terminal and start a fresh chat |
| `/compact` | Summarize the visible conversation to free tokens |
| `/copy` | Copy the latest completed Codex output |
| `/debug-config` | Print config layer and requirements diagnostics |
| `/delete` | Permanently delete the current session and exit Codex |
| `/diff` | Show the Git diff, including files Git isn't tracking yet |
| `/exit` | Exit the CLI (same as `/quit`) |
| `/experimental` | Toggle experimental features |
| `/fast` | Toggle a Fast service tier when the model catalog exposes one |
| `/feedback` | Send logs to the Codex maintainers |
| `/fork` | Fork the current conversation into a new thread |
| `/hooks` | View and manage lifecycle hooks |
| `/ide` | Include open files, current selection, and other IDE context |
| `/import` | Import Claude Code setup, project files, and recent chats |
| `/init` | Generate an `AGENTS.md` scaffold in the current directory |
| `/keymap` | Remap TUI keyboard shortcuts |
| `/logout` | Sign out of Codex |
| `/mcp` | List configured Model Context Protocol (MCP) tools |
| `/memories` | Configure memory use and generation |
| `/mention` | Attach a file to the conversation |
| `/model` | Choose the active model (and reasoning effort, when available) |
| `/new` | Start a new conversation inside the same session |
| `/permissions` | Set what Codex can do without asking first |
| `/personality` | Choose a communication style for responses |
| `/plan` | Switch to plan mode and optionally send a prompt |
| `/goal` | Set, pause, resume, view, or clear a task goal |
| `/plugins` | Browse installed and discoverable plugins |
| `/ps` | Show experimental background terminals and their recent output |
| `/quit` | Exit the CLI |
| `/raw` | Toggle raw scrollback mode |
| `/resume` | Resume a saved conversation from your session list |
| `/review` | Ask Codex to review your working tree |
| `/sandbox-add-read-dir` | Grant sandbox read access to an extra directory (Windows only) |
| `/side`, `/btw` | Start an ephemeral side conversation |
| `/skills` | Browse and use skills |
| `/status` | Display session configuration and token usage |
| `/statusline` | Configure TUI status-line fields interactively |
| `/stop` | Stop all background terminals |
| `/title` | Configure terminal window or tab title fields interactively |
| `/theme` | Choose a syntax-highlighting theme |
| `/usage` | View account token usage or use a rate-limit reset |
| `/vim` | Toggle Vim mode for the composer |

---

## Claude Code CLI

**Version:** v2.1.185
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
| `/advisor [model\|off]` | Enable or disable the advisor tool that consults a second model; accepts `opus`, `sonnet`, `fable`, or a full model ID |
| `/agents` | Manage agent/subagent configurations |
| `/autofix-pr [prompt]` | Spawn a web session that auto-fixes CI failures and review feedback on your PR |
| `/background [prompt]`, `/bg [prompt]` | Detach the current session to run as a background agent |
| `/batch <instruction>` | Skill command to orchestrate large-scale, parallel codebase changes |
| `/btw <question>` | Ask a quick side question without adding to the conversation |
| `/branch [name]` | Create a branch of the current conversation |
| `/claude-api [migrate\|managed-agents-onboard]` | Skill command to load Claude API and Managed Agents reference material |
| `/cd <path>` | Move the current session to a new working directory |
| `/chrome` | Configure Claude in Chrome settings |
| `/clear [name]`, `/reset [name]`, `/new [name]` | Start a new conversation with empty context |
| `/color [color\|default]` | Set the prompt bar color for the current session |
| `/compact [instructions]` | Compact conversation with optional focus instructions |
| `/config [key=value ...]`, `/settings` | Open the Settings interface or set one or more settings directly |
| `/context [all]` | Visualize current context usage as a colored grid |
| `/copy [N]` | Copy the last assistant response to clipboard |
| `/cost` | Alias for `/usage` |
| `/code-review [low\|medium\|high\|xhigh\|max\|ultra] [--fix] [--comment] [target]` | Skill command to review the current diff for correctness bugs and cleanup opportunities |
| `/debug [description]` | Skill command to enable debug logging and troubleshoot issues |
| `/deep-research <question>` | Workflow command to fan out web searches, cross-check sources, and synthesize a cited report |
| `/desktop`, `/app` | Continue the current session in the Claude Code Desktop app |
| `/diff` | Open an interactive diff viewer showing uncommitted changes |
| `/doctor` | Diagnose and verify your Claude Code installation |
| `/effort [level\|auto]` | Set model effort (`low`, `medium`, `high`, `xhigh`, `max`, or `ultracode`) |
| `/exit`, `/quit` | Exit the CLI |
| `/export [filename]` | Export the current conversation as plain text |
| `/fast [on\|off]` | Toggle fast mode on or off |
| `/feedback [report]`, `/bug [report]`, `/share` | Submit feedback, report a bug, or share your conversation |
| `/fewer-permission-prompts` | Skill command to add a prioritized allowlist and reduce permission prompts |
| `/focus` | Toggle focus view in fullscreen rendering |
| `/fork <directive>` | Spawn a forked background subagent that inherits the full conversation and works on the directive |
| `/goal [condition\|clear]` | Set, view, or clear a goal that Claude keeps working toward across turns |
| `/heapdump` | Write a JavaScript heap snapshot to help diagnose memory issues |
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
| `/loop [interval] [prompt]`, `/proactive [interval] [prompt]` | Skill command to run a prompt repeatedly while the session stays open |
| `/mcp [reconnect <server>\|enable\|disable [<server>\|all]]` | Manage MCP server connections and OAuth |
| `/memory` | Edit CLAUDE.md memory files |
| `/mobile`, `/ios`, `/android` | Show a QR code to download the Claude mobile app |
| `/model [model]` | Select or change the AI model |
| `/passes` | Share a free week of Claude Code with friends |
| `/permissions`, `/allowed-tools` | View or update permissions |
| `/plan [description]` | Enter plan mode directly from the prompt |
| `/plugin` | Manage Claude Code plugins |
| `/powerup` | Launch quick interactive lessons for Claude Code features |
| `/pr-comments [PR]` | Removed in v2.1.91 (ask Claude directly to view pull request comments) |
| `/privacy-settings` | View and update privacy settings |
| `/radio` | Open Claude FM lo-fi radio in your browser |
| `/recap` | Generate a one-line summary of the current session |
| `/release-notes` | View the full changelog |
| `/reload-plugins [--force]` | Reload all active plugins, optionally forcing MCP tool changes that invalidate the prompt cache |
| `/reload-skills` | Re-scan skill and command directories without restarting |
| `/remote-control`, `/rc` | Make session available for remote control from claude.ai |
| `/remote-env` | Configure the default remote environment |
| `/rename [name]` | Rename the current session |
| `/resume [session]`, `/continue [session]` | Resume a conversation by ID or name, or open the session picker |
| `/review [PR]` | Run code review (or review a specific PR) |
| `/rewind`, `/checkpoint`, `/undo` | Rewind conversation and/or code to a previous point |
| `/run` | Skill command to launch and drive your project app to verify changes in the running app |
| `/run-skill-generator` | Skill command to teach `/run` and `/verify` how to build, launch, and drive your project app |
| `/sandbox` | Toggle sandbox mode |
| `/schedule [description]`, `/routines [description]` | Create, update, list, or run routines |
| `/scroll-speed` | Adjust mouse wheel scroll speed interactively |
| `/security-review` | Analyze pending changes for security vulnerabilities |
| `/setup-bedrock` | Configure Amazon Bedrock authentication and model settings |
| `/setup-vertex` | Configure Google Vertex AI authentication and model settings |
| `/simplify [target]` | Skill command to review changed code for cleanup opportunities and apply fixes |
| `/skills` | List available skills |
| `/stats` | Alias for `/usage`, opening on the Stats tab |
| `/status` | Show version, model, account, and connectivity |
| `/statusline` | Configure Claude Code's status line |
| `/stickers` | Order Claude Code stickers |
| `/stop` | Stop the current background session while preserving its transcript and worktree |
| `/tasks`, `/bashes` | List and manage background tasks |
| `/team-onboarding` | Generate a team onboarding guide from recent Claude Code usage |
| `/teleport`, `/tp` | Pull a Claude Code on the web session into your local terminal |
| `/terminal-setup` | Configure terminal keybindings |
| `/theme` | Change the color theme |
| `/tui [default\|fullscreen]` | Set the terminal UI renderer and relaunch with the current conversation |
| `/ultraplan <prompt>` | Draft a plan in a cloud ultraplan session |
| `/ultrareview [PR]` | Run a deep multi-agent code review in a cloud sandbox; `/code-review ultra` is the preferred invocation |
| `/upgrade` | Open the upgrade page for a higher plan tier |
| `/usage` | Show session cost, plan usage limits, and activity stats |
| `/usage-credits` | Configure usage credits to keep working when you hit a limit; previously `/extra-usage` |
| `/vim` | Removed in v2.1.92 (toggle editor mode through `/config`) |
| `/verify` | Skill command to confirm a code change works by building, running, and observing the app |
| `/voice [hold\|tap\|off]` | Toggle voice dictation or enable a specific mode |
| `/web-setup` | Connect your GitHub account to Claude Code on the web |
| `/workflows` | Open the workflow progress view to watch, pause, resume, or save workflows |

---

## Gemini CLI

**Version:** v0.47.0
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
| `/auth` | Open a dialog that lets you change the authentication method |
| `/bug` | File an issue about Gemini CLI |
| `/chat` | Alias for `/resume` with the same session browser and checkpoint subcommands |
| `/clear` | Clear the terminal screen |
| `/commands` | Manage custom slash commands loaded from `.toml` files |
| `/compress` | Replace the entire chat context with a summary |
| `/copy` | Copy the last output produced by Gemini CLI to your clipboard |
| `/directory` (or `/dir`) | Manage workspace directories for multi-directory support |
| `/docs` | Open Gemini CLI documentation in your browser |
| `/editor` | Open a dialog for selecting supported editors |
| `/extensions` | Manage extensions |
| `/help` (or `/?`) | Display help information about Gemini CLI |
| `/hooks` | Manage hooks to intercept and customize behavior |
| `/ide` | Manage IDE integration |
| `/init` | Generate a tailored `GEMINI.md` context file |
| `/mcp` | Manage configured Model Context Protocol (MCP) servers |
| `/memory` | Manage the AI's instructional context loaded from `GEMINI.md` files |
| `/model` | Manage model configuration |
| `/permissions` | Manage folder trust settings and other permissions |
| `/plan` | Switch to Plan Mode and view the current plan if one has been generated |
| `/policies` | Manage policies |
| `/privacy` | Display the Privacy Notice and consent preferences |
| `/quit` (or `/exit`) | Exit Gemini CLI |
| `/restore` | Restore project files to the state before a tool was executed |
| `/resume` | Browse and resume previous conversation sessions and manage manual chat checkpoints |
| `/rewind` | Navigate backward through conversation history and potentially revert chat state or file changes |
| `/settings` | Open the settings editor to view and modify Gemini CLI settings |
| `/shells` (or `/bashes`) | Toggle the background shells view |
| `/setup-github` | Set up GitHub Actions to triage issues and review PRs with Gemini |
| `/skills` | Manage Agent Skills for specialized workflows |
| `/stats` | Display detailed statistics for the current Gemini CLI session |
| `/terminal-setup` | Configure terminal keybindings for multiline input |
| `/theme` | Open a dialog that lets you change the visual theme |
| `/tools` | Display a list of tools that are currently available |
| `/upgrade` | Open the Gemini Code Assist upgrade page |
| `/vim` | Toggle vim mode on or off |

---

## Documentation Sources

All content sourced exclusively from official vendor documentation:

- **GitHub:** [docs.github.com/copilot](https://docs.github.com/en/copilot/reference/cli-command-reference)
- **OpenAI:** [developers.openai.com/codex](https://developers.openai.com/codex/cli/slash-commands)
- **Anthropic:** [code.claude.com/docs](https://code.claude.com/docs/en/commands)
- **Google:** [geminicli.com/docs](https://geminicli.com/docs/reference/commands)
