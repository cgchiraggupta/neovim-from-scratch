vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable", -- latest stable release
    lazyrepo,
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure Neovim
vim.opt.termguicolors = true

-- Setup plugins with better error handling
local ok, err = pcall(require, "lazy")
if not ok then
  vim.notify("Failed to load lazy.nvim: " .. err, vim.log.levels.ERROR)
  return
end

require("lazy").setup("plugins", {
  -- Configure lazy.nvim for better macOS compatibility
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
vim.opt.swapfile = false
vim.wo.relativenumber = true

-- Save file with Ctrl + S in all modes
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-s>', ':w<CR>', { noremap = true, silent = true })
-- to switch from neotree to my files
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>w', { noremap = true, silent = true })
-- to switch between different file buffers
vim.api.nvim_set_keymap('n','<S-l>',':bnext<CR>' ,{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<S-h>',':bprevious<CR>' ,{noremap=true,silent=true})
-- to close a file buffer
  -- not ideal want to fix in the future
vim.api.nvim_set_keymap('n', '<leader>bd', ':b# | bd #<CR>', { noremap = true, silent = true })
--command to resize buffers
vim.api.nvim_set_keymap('n','<M-right>',':vertical resize +2<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<M-left>',':vertical resize -2<CR>',{ noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
-- Set clipboard for macOS compatibility
if vim.fn.has('macunix') == 1 then
  vim.opt.clipboard = "unnamed"
else
  vim.opt.clipboard = "unnamedplus"
end
-- to have persistent undo
vim.opt.undofile = true       -- Turn on persistent undo
local undo_dir = vim.fn.stdpath('config') .. '/undo'
-- Create undo directory if it doesn't exist
if vim.fn.isdirectory(undo_dir) == 0 then
  vim.fn.mkdir(undo_dir, 'p')
end
vim.opt.undodir = undo_dir  -- Set the undo directory
--fold settings
vim.opt.foldmethod = "indent"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99 -- Open all folds by default
vim.opt.foldminlines = 1    -- Ensures even small indents fold

-- macOS specific settings
if vim.fn.has('macunix') == 1 then
  -- Fix for macOS key repeat
  vim.opt.ttimeoutlen = 50
  
  -- Better mouse support on macOS
  vim.opt.mouse = "a"
  
  -- Prevent issues with file watchers on macOS
  vim.opt.fsync = true
  
  -- Fix potential issues with file permissions
  vim.opt.backup = false
  vim.opt.writebackup = false
end

-- Error handling for plugin loading
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyLoad",
  callback = function(event)
    vim.schedule(function()
      -- Add any post-load configuration here if needed
    end)
  end,
})

