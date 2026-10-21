# notPlancha's Neovim Configuration

Personal Neovim configuration based on [AstroNvim](https://github.com/AstroNvim/AstroNvim) (v4+/v6+).

## 🚀 Overview

- **Base Framework**: [AstroNvim](https://github.com/AstroNvim/AstroNvim) ([Template](https://github.com/AstroNvim/template))
- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Package Manager**: [mason.nvim](https://github.com/williamboman/mason.nvim)

> [!NOTE]
> The previous custom configurations are preserved on the [`legacy`](https://github.com/notPlancha/nvim/tree/legacy) branch.

## 📦 Installation

To clone and use this configuration:

### Windows (PowerShell)
```powershell
# Clone to Neovim config directory
git clone https://github.com/notPlancha/nvim.git "$env:LOCALAPPDATA\nvim"

# Launch Neovim
nvim
```

### Linux / macOS
```bash
# Clone to Neovim config directory
git clone https://github.com/notPlancha/nvim.git ~/.config/nvim

# Launch Neovim
nvim
```

## 🛠️ Structure

- `lua/lazy_setup.lua`: Core plugin manager initialization.
- `lua/community.lua`: AstroCommunity plugin packs importer.
- `lua/polish.lua`: Final user customizations (autocmds, mappings, etc.).
- `lua/plugins/`: Custom plugin specs and overrides:
  - `astrocore.lua`: Core options, diagnostics, and keymaps.
  - `astrolsp.lua`: Language server configurations and on-attach handlers.
  - `astroui.lua`: UI colorscheme and visual preferences.
  - `mason.lua`: Tool and server installation lists.
  - `treesitter.lua`: Syntax highlighting parsers.
  - `user.lua`: Additional personal plugins.

## 🙏 Credits

- [AstroNvim](https://github.com/AstroNvim/AstroNvim) & [AstroNvim/template](https://github.com/AstroNvim/template)
