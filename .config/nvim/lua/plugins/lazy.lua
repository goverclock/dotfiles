-- lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"goverclock/papercolor-theme",
		lazy = true,
		priority = 1000,
	},
	{
		"wakatime/vim-wakatime",
		lazy = false,
	},
	{
		'nvim-telescope/telescope.nvim',
		cmd = "Telescope",
		keys = {
			{ "<C-p>", ":Telescope find_files<CR>" },
			{ "<C-f>", ":Telescope live_grep<CR>" },
		},
		config = function()
			require("plugins/telescope")
		end,
		tag = '0.1.2',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<Leader>e", ":NvimTreeToggle<CR>", mode = "n" }
		}
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			-- 'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			animation = false,
			auto_hide = true,
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
})

