local map = vim.api.nvim_set_keymap
local after = { noremap = true, silent = true }
-- set 'Space' key as leader key
vim.g.mapleader = " "

-- select all
map("n", "<C-a>", "ggVG", after)

-- Exit
map("n", "<C-q>", ":q!<CR>", after)

-- save file
map("n", "<C-s>", ":update<CR>", after)

--- Next/Prev Buffer
map("n", "bn", ":bnext<CR>", after)
map("n", "bp", ":bprevious<CR>", after)
-- Create Buffer
map("n", "bN", ":enew<CR>", after)
-- Delete Buffer
map("n", "bd", ":bd<CR>", after)

-- Run Js
map("n", "<F5>", ":w !node %<cr>", after)

-- Increment/decrement
map("n", "+", "<C-a>", after)
map("n", "-", "<C-x>", after)
