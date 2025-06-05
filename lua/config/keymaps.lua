-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local map = LazyVim.safe_keymap_set

keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Quit", silent = true })
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save File", silent = true })
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit", silent = true })
keymap.set("i", "jk", "<Esc>", { noremap = true })

-- Buffers
keymap.set("n", "<Tab>", vim.cmd.bp, { desc = "Next Buffer", silent = true })
keymap.set("n", "<C-w>", ":bd<CR>", { desc = "Close Buffer", noremap = true, silent = true })

-- Searching
-- map()
