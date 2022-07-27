-- set 'Space' key as leader key
vim.g.mapleader = " "

-- select all
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })

-- Exit Vim
vim.api.nvim_set_keymap("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })

-- save file
vim.api.nvim_set_keymap("n", "<C-s>", ":update<CR>", { noremap = true, silent = true })

--  Increment/decrement
