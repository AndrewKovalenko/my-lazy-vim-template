local keymap = require("vim.keymap")
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Personal shortcuts
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })
keymap.set("n", "\\", ":noh <CR>", { silent = true, desc = "Hide search highlights" })
keymap.set("n", "<leader>of", ":Neotree<Space>", { silent = false, desc = "Open folder" })

-- iTerm needs to send ]50 escape sequanse to make this work
keymap.set({ "i", "x", "n", "s" }, "<D-s>", "<ESC> :w <CR>", { desc = "Save file" })

-- Rustaceansvim keymaps
--local bufnr = vim.api.nvim_get_current_buf()

local function show_runnables()
  vim.cmd.RustLsp("runnables")
end

-- Run and debug
keymap.set("n", "<leader>r", show_runnables, { desc = "Show runnables" })

-- nvim config
keymap.set("n", "<leader>cg", LazyVim.pick.config_files(), { desc = "Go to LazyVim config" })
