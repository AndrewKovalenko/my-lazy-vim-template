-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Personal shortcuts
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })

-- iTerm needs to send ]50 escape sequanse to make this work
vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", "<ESC> :w <CR>", { desc = "Save file" })

-- Rustaceansvim keymaps
--local bufnr = vim.api.nvim_get_current_buf()

local function show_runnables()
  vim.cmd.RustLsp("runnables")
end

vim.keymap.set("n", "<leader>r", show_runnables, { desc = "Show runnables" })
