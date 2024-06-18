-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Remap Leader
vim.g.mapleader = ","

-- Show winbar
vim.opt.winbar = "%=%m %fjj"

-- Minimize neovide animations
if vim.g.neovide then
  vim.g.neovide_position_animation_length = 0.2
  vim.g.neovide_scroll_animation_length = 0.2
  vim.g.neovide_cursor_animation_length = 0.2
  vim.g.neovide_cursor_trail_size = 0
end
