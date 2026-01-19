# 🎹 Complete Neovim Keybind Reference

**Your Leader Key: `<Space>`** (Press Space to activate leader commands)

---

## 📖 Table of Contents
1. [Basic Vim Movements](#basic-vim-movements)
2. [File Operations](#file-operations)
3. [File Explorer (Neo-tree)](#file-explorer-neo-tree)
4. [File Search (Telescope)](#file-search-telescope)
5. [Buffer Navigation](#buffer-navigation)
6. [Window Management](#window-management)
7. [LSP (Language Server Protocol)](#lsp-language-server-protocol)
8. [Autocompletion](#autocompletion)
9. [Terminal](#terminal)
10. [Formatting](#formatting)
11. [Editing Basics](#editing-basics)
12. [Visual Mode](#visual-mode)

---

## 🎯 Basic Vim Movements

### Horizontal Movement
| Key | Action |
|-----|--------|
| `h` | Move left |
| `l` | Move right |
| `w` | Next word (start) |
| `b` | Previous word (start) |
| `e` | End of word |
| `0` | Start of line |
| `$` | End of line |
| `^` | First non-blank character of line |

### Vertical Movement
| Key | Action |
|-----|--------|
| `j` | Move down |
| `k` | Move up |
| `gg` | Go to top of file |
| `G` | Go to bottom of file |
| `{line}G` | Go to specific line (e.g., `50G` goes to line 50) |
| `Ctrl+d` | Scroll down half page |
| `Ctrl+u` | Scroll up half page |
| `Ctrl+f` | Scroll down full page |
| `Ctrl+b` | Scroll up full page |

### Search Movement
| Key | Action |
|-----|--------|
| `/pattern` | Search forward for pattern |
| `?pattern` | Search backward for pattern |
| `n` | Next search result |
| `N` | Previous search result |
| `*` | Search forward for word under cursor |
| `#` | Search backward for word under cursor |

---

## 💾 File Operations

| Keybinding | Action | Mode |
|------------|--------|------|
| `<C-s>` | **Save file** (works in ALL modes!) | All modes |
| `:w` | Save file | Normal |
| `:q` | Quit | Normal |
| `:wq` or `:x` | Save and quit | Normal |
| `:q!` | Quit without saving | Normal |
| `:e filename` | Open file | Normal |
| `:e!` | Reload file (discard changes) | Normal |

---

## 📁 File Explorer (Neo-tree)

| Keybinding | Action |
|------------|--------|
| `<leader>e` | **Toggle file explorer** (Space + e) |

**Inside Neo-tree:**
- Use arrow keys or `h/j/k/l` to navigate
- `Enter` to open file
- `a` to add file/folder
- `d` to delete
- `r` to rename
- `c` to copy
- `x` to cut
- `p` to paste

---

## 🔍 File Search (Telescope)

| Keybinding | Action |
|------------|--------|
| `<leader><leader>` | **Find files** (Space + Space) |
| `<leader>/` | **Live grep** - Search text in all files (Space + /) |
| `<leader>sb` | **Search in current buffer** (Space + s + b) |

**Inside Telescope:**
- `Enter` - Open selected file
- `Ctrl+t` - Open in new tab
- `Ctrl+v` - Open in vertical split
- `Ctrl+x` - Open in horizontal split
- `Esc` or `q` - Close Telescope
- `Ctrl+n` / `Ctrl+p` - Navigate results
- `Tab` - Toggle selection (multi-select mode)

---

## 📄 Buffer Navigation

| Keybinding | Action |
|------------|--------|
| `<S-l>` | **Next buffer** (Shift + L) |
| `<S-h>` | **Previous buffer** (Shift + H) |
| `<leader>bd` | **Close current buffer** (Space + b + d) |

**Bufferline (Top bar):**
- Click on buffer tabs to switch
- Middle-click to close buffer

---

## 🪟 Window Management

### Window Switching
| Keybinding | Action |
|------------|--------|
| `<C-l>` | **Switch between windows** (Ctrl + L) |
| `<C-w>h` | Move to left window |
| `<C-w>j` | Move to bottom window |
| `<C-w>k` | Move to top window |
| `<C-w>l` | Move to right window |

### Window Resizing
| Keybinding | Action |
|------------|--------|
| `<M-right>` | **Increase vertical split width** (Alt + Right) |
| `<M-left>` | **Decrease vertical split width** (Alt + Left) |
| `<C-Up>` | **Increase horizontal split height** (Ctrl + Up) |
| `<C-Down>` | **Decrease horizontal split height** (Ctrl + Down) |

### Window Splitting
| Command | Action |
|---------|--------|
| `:sp filename` | Horizontal split |
| `:vsp filename` | Vertical split |
| `<C-w>s` | Split horizontally |
| `<C-w>v` | Split vertically |
| `<C-w>q` | Close current window |
| `<C-w>=` | Make all windows equal size |

---

## 🔧 LSP (Language Server Protocol)

**These work when LSP is active (open a code file):**

| Keybinding | Action |
|------------|--------|
| `gD` | Go to declaration |
| `gd` | **Go to definition** |
| `K` | **Show hover documentation** (hover over symbol) |
| `gi` | Go to implementation |
| `<C-k>` | Show signature help (function parameters) |
| `<leader>D` | Go to type definition |
| `<leader>rn` | **Rename symbol** (Space + r + n) |
| `<leader>ca` | **Code actions** (Space + c + a) - Quick fixes, refactors |
| `gr` | **Find references** - Find all usages of symbol |

**LSP Commands:**
- `:LspInfo` - Show active LSP servers
- `:LspRestart` - Restart LSP server
- `:Mason` - Open Mason (LSP installer)

---

## ✨ Autocompletion

**Triggered automatically when typing, or manually:**

| Keybinding | Action |
|------------|--------|
| `<C-Space>` | **Manually trigger completion** |
| `<Tab>` | **Next item** / Expand snippet |
| `<S-Tab>` | **Previous item** / Jump back in snippet |
| `<C-j>` | Next item |
| `<C-k>` | Previous item |
| `<CR>` (Enter) | **Confirm completion** |
| `<C-e>` | Abort completion |
| `<C-b>` | Scroll documentation up |
| `<C-f>` | Scroll documentation down |

**Completion Sources:**
- LSP (Language Server)
- Buffer (words in current file)
- Path (file paths)
- Snippets (LuaSnip)

---

## 💻 Terminal

| Keybinding | Action |
|------------|--------|
| `<C-\>` | **Toggle floating terminal** (Ctrl + Backslash) |
| `<leader>h` | **Open horizontal terminal at Desktop** (Space + h) |
| `<leader>ft` | **Open floating terminal at home** (Space + f + t) |

**Inside Terminal:**
- Press `<Esc>` or `<C-\>` to exit terminal mode
- Terminal auto-closes on exit
- Multiple terminals can be open

---

## 🎨 Formatting

| Keybinding | Action |
|------------|--------|
| `<leader>gf` | **Format current buffer** (Space + g + f) |
| **Auto-format on save** | Enabled by default! |

**Formatters installed:**
- Prettier (JavaScript/TypeScript/JSON/HTML/CSS)
- Stylua (Lua)
- Rubocop (Ruby)

---

## ✏️ Editing Basics

### Entering Insert Mode
| Key | Action |
|-----|--------|
| `i` | Insert before cursor |
| `a` | Insert after cursor |
| `I` | Insert at start of line |
| `A` | Insert at end of line |
| `o` | New line below |
| `O` | New line above |
| `s` | Delete character and insert |
| `S` | Delete line and insert |

### Deleting
| Key | Action |
|-----|--------|
| `x` | Delete character under cursor |
| `X` | Delete character before cursor |
| `dw` | Delete word |
| `dd` | **Delete line** |
| `D` | Delete to end of line |
| `d$` | Delete to end of line |
| `d0` | Delete to start of line |
| `diw` | Delete inner word |
| `daw` | Delete a word (including space) |

### Copying & Pasting
| Key | Action |
|-----|--------|
| `yy` | **Copy line** (yank) |
| `yw` | Copy word |
| `y$` | Copy to end of line |
| `p` | **Paste after cursor** |
| `P` | Paste before cursor |
| `"*p` | Paste from system clipboard (macOS) |

### Undo/Redo
| Key | Action |
|-----|--------|
| `u` | **Undo** |
| `<C-r>` | **Redo** |
| `U` | Undo all changes on line |

### Repeating
| Key | Action |
|-----|--------|
| `.` | **Repeat last command** (very powerful!) |
| `@:` | Repeat last command-line command |

### Changing/Replacing
| Key | Action |
|-----|--------|
| `r` | Replace single character |
| `R` | Replace mode (overwrite) |
| `cw` | Change word |
| `ciw` | Change inner word |
| `c$` | Change to end of line |
| `cc` | Change entire line |

---

## 👁️ Visual Mode

### Entering Visual Mode
| Key | Action |
|-----|--------|
| `v` | **Visual mode** (character-wise) |
| `V` | **Visual line mode** (line-wise) |
| `<C-v>` | **Visual block mode** (column-wise) |

### In Visual Mode
| Key | Action |
|-----|--------|
| `d` | Delete selection |
| `y` | Copy selection |
| `c` | Change selection |
| `>` | Indent right |
| `<` | Indent left |
| `=` | Auto-indent |
| `u` | Make lowercase |
| `U` | Make uppercase |
| `~` | Toggle case |

### Visual Block Mode (Column Editing)
- Select a column with `<C-v>`
- `I` - Insert at start of selection (all lines)
- `A` - Insert at end of selection (all lines)
- `c` - Change selection (all lines)
- `d` - Delete selection (all lines)

---

## 🎓 Learning Tips & Practice

### Start with These (Most Used)
1. **`<leader><leader>`** - Find files (you'll use this constantly!)
2. **`<C-s>`** - Save (works everywhere)
3. **`<leader>e`** - Toggle file explorer
4. **`gd`** - Go to definition
5. **`K`** - Show documentation
6. **`<leader>rn`** - Rename symbol
7. **`<C-\>`** - Toggle terminal

### Practice These Daily
- Use `h/j/k/l` instead of arrow keys
- Use `w/b` for word navigation
- Use `dd` and `yy` for delete/copy lines
- Use `.` to repeat commands
- Use `u` for undo (not Ctrl+Z)

### Muscle Memory Builders
1. **Navigation**: Practice `hjkl`, `w/b`, `gg/G` daily
2. **Editing**: Master `dd`, `yy`, `p`, `u`
3. **Search**: Use `<leader><leader>` and `<leader>/` frequently
4. **LSP**: Use `gd`, `K`, `<leader>rn` when coding

### Common Workflows

**Opening a file:**
1. `<leader><leader>` → Type filename → Enter

**Finding code:**
1. `<leader>/` → Type search term → Enter

**Renaming a variable:**
1. Place cursor on variable
2. `<leader>rn` → Type new name → Enter

**Formatting code:**
- Just save! (`<C-s>`) - Auto-formats on save
- Or manually: `<leader>gf`

**Quick terminal:**
1. `<C-\>` → Run command → `<Esc>` to exit

---

## 🚀 Pro Tips

1. **Stay in Normal Mode**: Return to Normal mode (`Esc`) when not typing
2. **Use Relative Numbers**: Your config has `relativenumber` enabled - use numbers to jump lines!
3. **Combine Commands**: `daw` (delete a word), `ciw` (change inner word), `yiw` (yank inner word)
4. **Visual Selection**: Use `v` to select, then apply command (`d`, `y`, `c`, etc.)
5. **Repeat with `.`**: After `dd`, press `.` to delete another line
6. **Macros**: Record with `q{letter}`, replay with `@{letter}` (advanced)
7. **Marks**: Set mark with `m{letter}`, jump with `'{letter}` (advanced)

---

## 📝 Quick Reference Card

**Print this and keep it nearby!**

```
LEADER = Space

FILE OPERATIONS
  <C-s>        Save (all modes)
  <leader>e    Toggle explorer
  <leader>bd   Close buffer

SEARCH
  <leader><leader>  Find files
  <leader>/        Search in files
  <leader>sb       Search in buffer

NAVIGATION
  <S-l>        Next buffer
  <S-h>        Previous buffer
  <C-l>        Switch windows

LSP
  gd           Go to definition
  K            Hover docs
  <leader>rn   Rename
  <leader>ca   Code actions
  gr           Find references

TERMINAL
  <C-\>        Toggle terminal
  <leader>h    Terminal at Desktop
  <leader>ft   Terminal at home

FORMATTING
  <leader>gf   Format buffer
  (Auto on save)
```

---

## 🎯 Your Configuration Highlights

- ✅ **Leader key**: Space
- ✅ **Auto-format on save**: Enabled
- ✅ **Persistent undo**: Enabled (never lose changes!)
- ✅ **Relative line numbers**: Enabled
- ✅ **macOS clipboard**: Integrated
- ✅ **LSP servers**: Auto-installed via Mason
- ✅ **Theme**: Catppuccin (beautiful colors!)

---

**Happy coding! Practice these daily and they'll become second nature! 🚀**
