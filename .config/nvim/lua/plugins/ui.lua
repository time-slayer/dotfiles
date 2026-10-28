-- Theme
vim.pack.add { "https://github.com/folke/tokyonight.nvim" }
---@diagnostic disable-next-line: missing-fields
require("tokyonight").setup {
  transparent = true,
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  },
}

vim.cmd.colorscheme "tokyonight-night"

-- Status line
vim.pack.add { "https://github.com/nvim-lualine/lualine.nvim" }
require("lualine").setup {}
