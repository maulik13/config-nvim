# 💤 My LazyVim Configuration

A customized [LazyVim](https://github.com/LazyVim/LazyVim) setup with extensive features for development.

## Features

- **Themes**: [Catppuccin (Macchiato)](https://github.com/catppuccin/nvim) with transparent background and [Rose Pine](https://github.com/rose-pine/neovim)
- **AI Integration**: Claude code integration with convenient keybindings
- **Diagnostics Helper**: WTF.nvim for AI-powered diagnostic debugging and fixing
- **Language Support**:
  - JSON
  - Terraform
  - C# (OmniSharp)
  - Helm
  - Markdown (with enhanced rendering)
  - Nix
  - Go
  - KCL
- **UI Enhancements**:
  - Alpha dashboard
  - Neo-tree file explorer
  - Incline (winbar)
  - Noice UI improvements
  - Lualine status bar
  - Which-key for keybindings discovery

## Prerequisites

```bash
# Install required dependencies
brew install ripgrep fd
brew install lazygit

# For language servers
brew install go
npm install -g prettier eslint
```

## Installation

1. Backup your existing Neovim configuration (if any)
2. Clone this repository to your Neovim config directory:

```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

3. Launch Neovim and let it install all plugins:

```bash
nvim
```

## Key Mappings

### AI Integration

- `<leader>i` - AI/Claude Code menu
- `<leader>ic` - Toggle Claude
- `<leader>if` - Focus Claude
- `<leader>ir` - Resume Claude conversation
- `<leader>iC` - Continue Claude
- `<leader>ib` - Add current buffer to Claude
- `<leader>is` - Send selection to Claude (visual mode)

### WTF.nvim Diagnostics

- `<leader>wd` - Debug diagnostic with AI
- `<leader>wf` - Fix diagnostic with AI
- `<leader>ws` - Search diagnostic with Google
- `<leader>wp` - Pick AI provider

## References

- Based on the article: [Effective Neovim Setup for Web Development](https://www.devas.life/effective-neovim-setup-for-web-development-towards-2024/)
- [LazyVim Documentation](https://lazyvim.github.io/)
