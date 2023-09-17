local opt = { noremap = true, silent = true }
local vkm = vim.keymap

-- nvim-tree
vkm.set('n', '<Leader>e', ':NvimTreeToggle<CR>', opt)

-- barbar.vim
vkm.set('n', 'J', ':BufferNext<CR>', opt)
vkm.set('n', 'K', ':BufferPrevious<CR>', opt)
vkm.set('n', 'Q', ':bd<CR>', opt)

