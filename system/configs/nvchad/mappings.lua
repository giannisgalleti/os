local M = {}

M.abc = {
	v = {
		[">"] = { ">gv", "Indent" },
		["<"] = { "<gv", "Unindent" },
	},
	n = {
		["<leader>G"] = { "<cmd> Neogit <CR>", "Source control" },
		["C-h"] = { "<cmd> TmuxNavigateLeft<CR>", "Move window left" },
		["C-l"] = { "<cmd> TmuxNavigateRight<CR>", "Move window right" },
		["C-j"] = { "<cmd> TmuxNavigateDown<CR>", "Move window down" },
		["C-k"] = { "<cmd> TmuxNavigateUp<CR>", "Move window up" },
	}
}

return M

