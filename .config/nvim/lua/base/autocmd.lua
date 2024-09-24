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
