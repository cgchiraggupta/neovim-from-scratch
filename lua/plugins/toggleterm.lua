return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell, -- Use system shell (zsh on macOS)
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })
    end,
    keys = {
      {
        "<leader>h",
        "<cmd>ToggleTerm size=12 dir=~/Desktop direction=horizontal<cr>",
        desc = "Open a horizontal terminal at the Desktop directory",
      },
      {
        "<leader>ft",
        "<cmd>ToggleTerm size=10 dir=~ direction=float<cr>",
        desc = "Open a floating terminal at home directory"
      },
    },
  },
}

