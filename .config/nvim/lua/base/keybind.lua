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
vkm.set("n", "<Leader>sv", ":source ~/.config/nvim/init.lua<CR>", opt)

-- buffer manager
vkm.set('n', 'J', ':BufferNext<CR>', opt)
vkm.set('n', 'K', ':BufferPrevious<CR>', opt)
vkm.set('n', 'Q', ':bp<bar>sp<bar>bn<bar>bd<CR>', opt)	-- see https://stackoverflow.com/questions/1444322/how-can-i-close-a-buffer-without-closing-the-window

-- move cursor in insert mode
vkm.set("i", "<C-h>", "<Left>", opt)
vkm.set("i", "<C-j>", "<Down>", opt)
vkm.set("i", "<C-k>", "<Up>", opt)
vkm.set("i", "<C-l>", "<Right>", opt)

-- terminal
vkm.set("t", "<Esc>", "<C-\\><C-n>", opt)
vkm.set("n", "<C-t>", ":tab term<CR>", opt)

