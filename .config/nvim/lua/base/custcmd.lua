-- :Blame for git blame current line
vim.api.nvim_command('command! Blame execute "!git blame " . expand("%:p") . " -L " . line(".") . "," . line(".")')

