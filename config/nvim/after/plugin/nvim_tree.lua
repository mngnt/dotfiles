-- examples for your init.lua

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

-- Set key
-- select all
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
