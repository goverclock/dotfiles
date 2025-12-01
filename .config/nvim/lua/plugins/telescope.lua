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
		}
	},
}
