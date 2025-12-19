require('telescope').setup {
	defaults = {
		layout_strategy = 'horizontal',
		layout_config = {
			width = 0.9,
			height = 0.999,
		},
		file_ignore_patterns = {
			"Session.vim",
			"tags"
		},
		mappings = {
			n = {
				["p"] = function()
					local clipboard_content = vim.fn.getreg('+')
					local prompt = vim.fn.getline('.')
					vim.fn.setline('.', prompt .. clipboard_content)
				end,
			},
		},
	},
}
