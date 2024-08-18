vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	-- see https://github.com/nvim-tree/nvim-tree.lua/blob/94c7c810af205c0f00c8f105dcf490c8eb17658a/doc/nvim-tree-lua.txt#L2033
	-- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
	-- vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
	-- vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
	local vkm = vim.keymap
	vkm.set('n', 'h', api.node.navigate.parent, opts('Parent Directory'))
	vkm.set('n', 'l', function()
		local node = api.tree.get_node_under_cursor()
		api.node.open.edit()
		if node.type ~= "directory" then
			vim.cmd('wincmd p')		-- back to nvim-tree focus, rather than the opened file
		end
	end, opts('Open and Stay in Tree'))
	vkm.del('n', '<C-e>', { buffer = bufnr })	-- prevent nvim-tree from opening in place, so that to move view up and down
end

require("nvim-tree").setup {
	on_attach = my_on_attach,
	view = {
		width = 30,
	},
}

-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	nested = true,
-- 	callback = function()
-- 		if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
-- 			vim.cmd "quit"
-- 		end
-- 	end
-- })

