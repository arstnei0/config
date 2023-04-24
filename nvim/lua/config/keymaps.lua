-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
require("mini.bufremove")
vim.keymap.del("n", "<leader>e")
vim.keymap.set("n", "<leader>e", "<C-w>w")
vim.keymap.set("n", "<C-e>", function()
  vim.cmd("Neotree toggle right")
  vim.keymap.set("n", "<leader>e", "<C-w>w")
end)
vim.keymap.set("n", "<C-x>", function()
  require("mini.bufremove").delete(0, false)
end, { silent = true, nowait = true })
