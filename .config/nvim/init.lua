require("base.keybind")
require("base.options")
require("base.autocmd")

-- plugin manager and setup
require("plugins.lazy")

-- TODO: auto complete with ctags
-- vim.opt.tags = { './tags', 'tags' }
-- vim.opt.pumheight = 5
-- vim.opt.complete:append('t')
-- vim.opt.completeopt = 'menuone,noinsert,noselect'
-- 
-- local complete_timer = nil
-- vim.api.nvim_create_autocmd('TextChangedI', {
--   pattern = '*',
--   callback = function()
--     complete_timer = vim.defer_fn(function()
--       if vim.fn.mode() == 'i' and vim.fn.pumvisible() == 0 then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-x><C-]>', true, true, true), 'n')
--       end
--     end, 1000)
--   end
-- })
-- 
-- vim.keymap.set('i', '<Enter>', function()
--   if vim.fn.pumvisible() == 1 then
--     return vim.api.nvim_replace_termcodes('<C-n><C-y>', true, true, true)
--   else
--     return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)
--   end
-- end, { expr = true })
-- 
-- vim.keymap.set('i', '<Up>', '<C-p>', { noremap = true })
-- vim.keymap.set('i', '<Down>', '<C-n>', { noremap = true })
-- vim.keymap.set('i', '<Tab>', '<C-y>', { noremap = true })
