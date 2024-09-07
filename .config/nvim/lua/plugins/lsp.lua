require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" }
})

local lsp_keymap = function(_, _)
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gh', vim.lsp.buf.hover, {})
	vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})
end

require("lspconfig").lua_ls.setup({
	on_attach = lsp_keymap,
})

require("lspconfig").gopls.setup({
	on_attach = lsp_keymap,
})

require("lspconfig").clangd.setup({
	on_attach = lsp_keymap,
})

-- a user command to hide all errors&warnings
vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	}
end, { desc = "toggle diagnostic" })
