-- Yazi
vim.pack.add {
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/mikavilpas/yazi.nvim",
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local yazi = require "yazi"
yazi.setup { open_for_directories = true }

vim.keymap.set("n", "<leader>-", yazi.yazi, { desc = "Open yazi at current file" })
