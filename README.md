# Neovim Configuration

A modern, beginner-friendly Neovim configuration optimized for macOS with a focus on productivity and ease of use. This configuration includes essential plugins for file navigation, code completion, LSP support, and a beautiful UI.

## ✨ Features

- 🚀 **Fast & Lightweight** - Optimized for performance with lazy-loaded plugins
- 🎨 **Beautiful UI** - Catppuccin theme with custom statusline and bufferline
- 🔍 **Powerful Search** - Telescope integration for finding files and searching code
- 💻 **LSP Support** - Full Language Server Protocol support with autocompletion
- 📁 **File Explorer** - Neo-tree for intuitive file navigation
- 🖥️ **Integrated Terminal** - ToggleTerm for quick terminal access
- 📋 **macOS Optimized** - Clipboard integration and macOS-specific fixes
- 🔄 **Auto-formatting** - Format code on save
- 📝 **Persistent Undo** - Never lose your changes

## 📋 Requirements

- **Neovim** (v0.9.0 or higher)
- **Git** (for plugin installation)
- **Node.js** (for TypeScript/JavaScript LSP - optional)
- **Python** (for some LSP servers - optional)

### macOS Requirements

- macOS 10.15 or later
- Homebrew (recommended for installing Neovim)

## 🚀 Installation

### 1. Backup Your Existing Config (if any)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

### 2. Clone This Repository

```bash
git clone <your-repo-url> ~/.config/nvim
```

Or if you're already in the directory:

```bash
# Copy this directory to your Neovim config location
cp -r . ~/.config/nvim
```

### 3. Install Neovim

**macOS (using Homebrew):**
```bash
brew install neovim
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt install neovim

# Fedora
sudo dnf install neovim

# Arch
sudo pacman -S neovim
```

### 4. Launch Neovim

```bash
nvim
```

The first launch will automatically:
- Install [Lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager
- Download and configure all plugins
- Set up LSP servers via Mason

**Note:** First launch may take a few minutes as plugins are downloaded.

## 🎯 Quick Start Guide

### Basic Neovim Concepts

Neovim has different **modes**:

- **Normal Mode** (default) - Navigate and execute commands
- **Insert Mode** - Type and edit text (press `i` to enter, `Esc` to exit)
- **Visual Mode** - Select text (press `v` to enter)
- **Command Mode** - Run commands (press `:` to enter)

### Essential Commands

#### Opening Files

- `nvim filename.txt` - Open from terminal
- `:e filename.txt` - Open file from within Neovim
- `<leader>e` (Space+e) - Toggle file explorer
- `<leader><leader>` (Space+Space) - Find files with Telescope

#### Saving & Quitting

- `<C-s>` (Ctrl+S) - Save file (works in all modes!)
- `:w` - Save
- `:q` - Quit
- `:wq` or `:x` - Save and quit
- `:q!` - Quit without saving

#### Basic Navigation

- `h`, `j`, `k`, `l` - Move left, down, up, right
- `w` - Next word
- `b` - Previous word
- `gg` - Go to top of file
- `G` - Go to bottom of file
- `0` - Start of line
- `$` - End of line

#### Editing

- `i` - Enter insert mode
- `a` - Insert after cursor
- `o` - New line below
- `dd` - Delete line
- `yy` - Copy line
- `p` - Paste
- `u` - Undo
- `<C-r>` - Redo

## ⌨️ Keybindings Reference

### Leader Key

The leader key is set to **Space** (`<leader>` = Space)

### File Operations

| Keybinding | Action |
|------------|--------|
| `<C-s>` | Save file (works in all modes) |
| `<leader>e` | Toggle file explorer (Neo-tree) |
| `<leader>bd` | Close current buffer |

### File Search (Telescope)

| Keybinding | Action |
|------------|--------|
| `<leader><leader>` | Find files |
| `<leader>/` | Live grep (search in files) |
| `<leader>sb` | Search in current buffer |

### Buffer Navigation

| Keybinding | Action |
|------------|--------|
| `<S-l>` (Shift+L) | Next buffer |
| `<S-h>` (Shift+H) | Previous buffer |
| `<C-l>` (Ctrl+L) | Switch between windows |

### Window Resizing

| Keybinding | Action |
|------------|--------|
| `<M-right>` (Alt+Right) | Increase vertical split width |
| `<M-left>` (Alt+Left) | Decrease vertical split width |
| `<C-Up>` (Ctrl+Up) | Increase horizontal split height |
| `<C-Down>` (Ctrl+Down) | Decrease horizontal split height |

### LSP (Language Server Protocol)

| Keybinding | Action |
|------------|--------|
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `K` | Show hover documentation |
| `gi` | Go to implementation |
| `<C-k>` | Show signature help |
| `<leader>D` | Go to type definition |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `gr` | Find references |

### Autocompletion

| Keybinding | Action |
|------------|--------|
| `<C-Space>` | Trigger completion |
| `<Tab>` | Next item / Expand snippet |
| `<S-Tab>` | Previous item / Jump back in snippet |
| `<C-j>` | Next item |
| `<C-k>` | Previous item |
| `<CR>` (Enter) | Confirm completion |
| `<C-e>` | Abort completion |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |

### Terminal

| Keybinding | Action |
|------------|--------|
| `<C-\>` (Ctrl+Backslash) | Toggle floating terminal |
| `<leader>h` | Open horizontal terminal at Desktop |
| `<leader>ft` | Open floating terminal at home |

### Formatting

| Keybinding | Action |
|------------|--------|
| `<leader>gf` | Format current buffer |
| Auto-format on save | Enabled by default |

## 🔌 Plugins Included

### Core Plugins

- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager
- **[Mason](https://github.com/williamboman/mason.nvim)** - LSP installer
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine

### UI & Navigation

- **[Catppuccin](https://github.com/catppuccin/nvim)** - Beautiful color scheme
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** - Statusline
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)** - Tab bar
- **[Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)** - File explorer
- **[Alpha](https://github.com/goolord/alpha-nvim)** - Startup screen

### Productivity

- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting
- **[ToggleTerm](https://github.com/akinsho/toggleterm.nvim)** - Terminal integration
- **[Autopairs](https://github.com/windwp/nvim-autopairs)** - Auto-pair brackets
- **[None-ls](https://github.com/nvimtools/none-ls.nvim)** - Code formatting

### LSP Servers (Auto-installed via Mason)

- **lua_ls** - Lua language server
- **ts_ls** - TypeScript/JavaScript language server
- **clangd** - C/C++/Objective-C language server
- **prismals** - Prisma language server
- **gopls** - Go language server

## 🎨 Customization

### Changing Colorscheme

Edit `lua/plugins/tokyonight.lua` and change the colorscheme:

```lua
vim.cmd("colorscheme your-preferred-theme")
```

### Adding New Plugins

1. Create a new file in `lua/plugins/` (e.g., `myplugin.lua`)
2. Add the plugin configuration following the existing pattern
3. Add the filename to `lua/plugins.lua` in the `plugin_files` table
4. Restart Neovim

### Modifying Keybindings

Keybindings are defined in:
- `init.lua` - General keybindings
- `lua/plugins/telescope.lua` - Telescope keybindings
- `lua/plugins/lsp-config.lua` - LSP keybindings
- `lua/plugins/neo-tree.lua` - File explorer keybindings
- `lua/plugins/toggleterm.lua` - Terminal keybindings

## 🍎 macOS Specific Features

This configuration includes several macOS optimizations:

- **Clipboard Integration** - Copy/paste works with system clipboard (Cmd+C/Cmd+V)
- **Key Repeat Fix** - Better key repeat handling
- **Mouse Support** - Full mouse support enabled
- **File Watchers** - Optimized for macOS file system
- **Terminal Compatibility** - Works with iTerm2, Terminal.app, and other macOS terminals

### macOS Terminal Setup (Optional)

For better Alt/Option key support in Terminal.app:

1. Open Terminal preferences
2. Go to Profiles → Keyboard
3. Check "Use Option as Meta key"

Or use iTerm2 which has better key support out of the box.

## 🐛 Troubleshooting

### Plugins Not Loading

1. Run `:Lazy` to open the plugin manager
2. Check for any errors
3. Press `u` to update plugins
4. Press `r` to reload configuration

### LSP Not Working

1. Run `:Mason` to open Mason
2. Ensure your language server is installed
3. Check `:LspInfo` to see active LSP servers
4. Restart Neovim

### Keybindings Not Working

- Make sure you're in Normal mode (press `Esc`)
- Check if the keybinding conflicts with your terminal
- On macOS, Alt/Option keys may need terminal configuration

### First Launch Issues

If plugins don't install automatically:

```bash
nvim --headless "+Lazy! sync" +qa
```

## 📚 Learning Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Learn Vim in Y Minutes](https://learnxinyminutes.com/docs/vim/)
- [Vim Adventures](https://vim-adventures.com/) - Interactive Vim tutorial
- [The Primeagen's Neovim Videos](https://www.youtube.com/@ThePrimeagen)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This configuration is open source and available under the MIT License.

## 🙏 Acknowledgments

- All the amazing plugin developers
- The Neovim community
- Inspired by various Neovim configurations

## 💡 Tips for Beginners

1. **Don't try to learn everything at once** - Start with basic navigation and gradually learn more
2. **Use the leader key** - Most custom shortcuts start with Space
3. **Stay in Normal mode** - Return to Normal mode when not typing (press `Esc`)
4. **Use Telescope** - `<leader><leader>` is your best friend for finding files
5. **Enable LSP** - Open a code file and watch autocompletion work
6. **Practice daily** - Muscle memory takes time to develop

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Troubleshooting](#-troubleshooting) section
2. Search existing issues
3. Open a new issue with details about your problem

---

**Happy coding! 🚀**
