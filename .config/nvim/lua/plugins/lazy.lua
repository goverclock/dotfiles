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
			{ "<C-p>", ":Telescope find_files<CR>", silent = true },
			{ "<C-f>", ":Telescope live_grep<CR>",  silent = true },
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
		lazy = true,
		keys = {
			{ "<Leader>e", ":NvimTreeToggle<CR>", mode = "n", silent = true }
		}
	},
	{
		'romgrk/barbar.nvim',
		init = function() vim.g.barbar_auto_setup = false end,
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
})

require("plugins.theme")
require("plugins.nvim-tree")
require("plugins.barbar")

