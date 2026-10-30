-- Tokyonight
vim.pack.add { "https://github.com/folke/tokyonight.nvim" }
---@diagnostic disable-next-line: missing-fields
require("tokyonight").setup {
  style = "night",
  transparent = true,
  styles = {
    comments = { italic = false },
    sidebars = "transparent",
    floats = "transparent",
  },
}

-- Catppuccin
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }
require("catppuccin").setup {
  transparent_background = true,
  styles = {
    comments = {},
  },
}

-- vim.cmd.colorscheme "tokyonight"
vim.cmd.colorscheme "catppuccin"

-- Statusline
vim.pack.add {
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-lualine/lualine.nvim",
}
require("lualine").setup {}
