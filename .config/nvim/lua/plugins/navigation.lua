-- Yazi
vim.pack.add {
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/mikavilpas/yazi.nvim",
}

local yazi = require "yazi"
yazi.setup {}

vim.keymap.set("n", "<leader>-", yazi.yazi, { desc = "Open yazi at current file" })
