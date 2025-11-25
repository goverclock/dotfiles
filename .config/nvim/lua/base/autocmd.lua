-- smart relative number
vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	command = ":set norelativenumber",
})
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = ":set relativenumber",
})

-- turn off relative number in log file
-- TODO: turn on relative number when switch from log file to regular file
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*.log",
	command = ":set norelativenumber",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.log",
	command = ":set norelativenumber",
})

-- auto session resore
vim.api.nvim_create_autocmd('VimEnter', {
	pattern = '*',
	callback =
		function()
			local session_file = vim.fn.getcwd() .. '/Session.vim'
			if vim.fn.filereadable(session_file) == 1 then
				vim.cmd('source ' .. session_file)
				print('Session restored from: ' .. session_file)
			end
		end,
	nested = true,
})

