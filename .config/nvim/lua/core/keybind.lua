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

-- vkm.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
-- vkm.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

vkm.set("i", "<C-h>", "<Left>", opt)
vkm.set("i", "<C-j>", "<Down>", opt)
vkm.set("i", "<C-k>", "<Up>", opt)
vkm.set("i", "<C-l>", "<Right>", opt)

-- terminal
vkm.set("t", "<Esc>", "<C-\\><C-n>", opt)
vkm.set("n", "<C-t>", ":tab term<CR>", opt)
