# 🎯 Neovim Practice Guide - Start Here!

This is your **daily practice routine** to master Neovim. Do these exercises for 10-15 minutes each day.

---

## 📅 Week 1: Foundation

### Day 1-2: Basic Movement
**Goal**: Stop using arrow keys!

**Practice:**
1. Open any file: `nvim filename.txt`
2. Use only `h`, `j`, `k`, `l` to move around
3. Practice: `w` (next word), `b` (previous word)
4. Practice: `0` (start of line), `$` (end of line)
5. Practice: `gg` (top), `G` (bottom)

**Challenge**: Navigate entire file without arrow keys!

---

### Day 3-4: File Operations
**Goal**: Master saving and file navigation

**Practice:**
1. **Save**: Press `<C-s>` (Ctrl+S) - works everywhere!
2. **Open file explorer**: `<leader>e` (Space + e)
3. **Find files**: `<leader><leader>` (Space + Space)
4. **Search in files**: `<leader>/` (Space + /)

**Challenge**: 
- Create a new file using explorer
- Find a file using Telescope
- Search for a word across all files

---

### Day 5-7: Editing Basics
**Goal**: Edit efficiently

**Practice:**
1. **Delete line**: `dd` (press twice to delete 2 lines)
2. **Copy line**: `yy`, then `p` to paste
3. **Undo**: `u` (press multiple times)
4. **Redo**: `<C-r>` (Ctrl+R)
5. **Repeat**: `.` (after `dd`, press `.` to delete another line)

**Challenge**:
- Delete 5 lines using `5dd`
- Copy a line and paste it 3 times
- Make a mistake, undo it, then redo it

---

## 📅 Week 2: Productivity

### Day 8-10: Buffer & Window Management
**Goal**: Work with multiple files

**Practice:**
1. **Switch buffers**: `<S-l>` (next), `<S-h>` (previous)
2. **Close buffer**: `<leader>bd`
3. **Switch windows**: `<C-l>`
4. **Resize windows**: `<M-right>`, `<M-left>`, `<C-Up>`, `<C-Down>`

**Challenge**:
- Open 3 files
- Switch between them
- Split window and resize

---

### Day 11-14: LSP & Code Navigation
**Goal**: Navigate code like a pro

**Practice:**
1. Open a code file (`.js`, `.py`, `.lua`, etc.)
2. **Go to definition**: `gd` (place cursor on function, press `gd`)
3. **Show docs**: `K` (hover over function, press `K`)
4. **Find references**: `gr` (find all usages)
5. **Rename**: `<leader>rn` (rename variable/function)

**Challenge**:
- Find where a function is defined
- Read its documentation
- Find all places it's used
- Rename it everywhere

---

## 📅 Week 3: Advanced

### Day 15-17: Visual Mode
**Goal**: Select and edit efficiently

**Practice:**
1. **Visual mode**: `v` (character), `V` (line), `<C-v>` (block)
2. **Select and delete**: `v` → move → `d`
3. **Select and copy**: `v` → move → `y` → `p`
4. **Indent**: `V` → select lines → `>` or `<`

**Challenge**:
- Select a word and delete it
- Select 5 lines and indent them
- Copy a block of code

---

### Day 18-21: Autocompletion & Formatting
**Goal**: Code faster

**Practice:**
1. **Trigger completion**: Start typing, or `<C-Space>`
2. **Navigate**: `<Tab>` (next), `<S-Tab>` (previous)
3. **Confirm**: `Enter`
4. **Format**: Save file (auto-formats!) or `<leader>gf`

**Challenge**:
- Type a function name, use autocomplete
- Format your code
- Use snippets (type `function` and expand)

---

## 🎮 Daily Practice Routine (After Week 3)

### Morning Warm-up (5 min)
1. Open Neovim
2. Navigate using `hjkl` only
3. Open 3 files using `<leader><leader>`
4. Switch between buffers

### Coding Session (Use while coding)
- **Finding files**: Always use `<leader><leader>` instead of explorer
- **Searching code**: Use `<leader>/` to find text
- **Navigation**: Use `gd` and `K` to understand code
- **Editing**: Use `dd`, `yy`, `p` for line operations

### Evening Practice (10 min)
1. Pick one new keybind from KEYBINDS.md
2. Practice it 10 times
3. Use it in real coding tomorrow

---

## 🏆 Mastery Challenges

### Beginner Challenge
- [ ] Navigate entire file using only `hjkl`, `w`, `b`
- [ ] Open file using Telescope
- [ ] Delete 10 lines using `10dd`
- [ ] Copy and paste 5 times

### Intermediate Challenge
- [ ] Open 5 files, switch between them
- [ ] Split window, resize it
- [ ] Go to definition, read docs, find references
- [ ] Rename a variable everywhere

### Advanced Challenge
- [ ] Use visual mode to select and edit
- [ ] Use visual block mode to edit columns
- [ ] Record and replay a macro
- [ ] Use marks to jump between locations

---

## 💡 Pro Tips for Practice

1. **Disable Arrow Keys** (temporarily):
   Add to `init.lua`:
   ```lua
   vim.keymap.set('n', '<Up>', '<Nop>')
   vim.keymap.set('n', '<Down>', '<Nop>')
   vim.keymap.set('n', '<Left>', '<Nop>')
   vim.keymap.set('n', '<Right>', '<Nop>')
   ```

2. **Use Relative Numbers**: Your config has this! Use numbers to jump:
   - `5j` = move down 5 lines
   - `10dd` = delete 10 lines

3. **Practice with Real Code**: Don't just practice in empty files - use your actual projects!

4. **One Keybind Per Day**: Don't overwhelm yourself. Master one keybind per day.

5. **Print KEYBINDS.md**: Keep it next to your computer for quick reference.

---

## 🎯 Most Important Keybinds (Memorize These!)

**Top 10 You'll Use Daily:**

1. `<leader><leader>` - Find files ⭐⭐⭐
2. `<C-s>` - Save ⭐⭐⭐
3. `gd` - Go to definition ⭐⭐⭐
4. `K` - Show docs ⭐⭐⭐
5. `<leader>rn` - Rename ⭐⭐
6. `<leader>/` - Search in files ⭐⭐
7. `<leader>e` - Toggle explorer ⭐⭐
8. `dd` - Delete line ⭐⭐
9. `yy` + `p` - Copy/paste ⭐⭐
10. `u` - Undo ⭐⭐

---

## 📚 Learning Resources

- **KEYBINDS.md** - Complete reference (this folder)
- **README.md** - Full documentation
- **Vim Adventures** - Interactive game: https://vim-adventures.com/
- **Vim Tutor**: Run `:Tutor` in Neovim!

---

## ✅ Progress Tracker

Mark your progress as you learn:

### Week 1
- [ ] Day 1-2: Basic movement
- [ ] Day 3-4: File operations
- [ ] Day 5-7: Editing basics

### Week 2
- [ ] Day 8-10: Buffer/window management
- [ ] Day 11-14: LSP navigation

### Week 3
- [ ] Day 15-17: Visual mode
- [ ] Day 18-21: Autocompletion

### Mastery
- [ ] Beginner challenge complete
- [ ] Intermediate challenge complete
- [ ] Advanced challenge complete

---

**Remember**: Consistency beats intensity! 10 minutes daily > 2 hours once a week.

**Happy practicing! 🚀**
