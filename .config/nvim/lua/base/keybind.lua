-- leader
vim.g.mapleader = " "

-- key bindings
local opt = { noremap = true, silent = true }
local vkm = vim.keymap

vkm.set("n", "<C-h>", "<C-w>h", opt)
vkm.set("n", "<C-j>", "<C-w>j", opt)
vkm.set("n", "<C-k>", "<C-w>k", opt)
vkm.set("n", "<C-l>", "<C-w>l", opt)
vkm.set("n", "<C-n>", ":noh<CR>", opt)
vkm.set("n", "<Leader>v", "<C-w>v", opt)
vkm.set("n", "<Leader>s", "<C-w>s", opt)
vkm.set('n', 'gd', '<C-]>', opt)

-- buffer manager
vkm.set('n', 'J', ':BufferNext<CR>', opt)
vkm.set('n', 'K', ':BufferPrevious<CR>', opt)
vkm.set('n', 'Q', ':bp<bar>sp<bar>bn<bar>bd<CR>', opt)	-- see https://stackoverflow.com/questions/1444322/how-can-i-close-a-buffer-without-closing-the-window

-- save session
vkm.set('n', '<C-s>', ':NvimTreeClose<CR>:mksession!<CR>', { noremap = true })

-- search vim clipboard
vkm.set('n', '/<C-r>', '/<C-r>"<CR>', opt)

-- terminal
vkm.set("t", "<Esc>", "<C-\\><C-n>", opt)
vkm.set("n", "<C-t>", ":tab term<CR>", opt)

-- format
vkm.set('n', '<leader>f', function()
  local save_cursor = vim.fn.getpos('.')
  vim.cmd('%!clang-format')
  vim.fn.setpos('.', save_cursor)
end, opt)

