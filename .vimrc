set number
set rnu
set colorcolumn=81

" general keymap
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
let mapleader=" "
nnoremap J gt
nnoremap K gT
nnoremap <silent> Q :tabclose<CR>
tnoremap <Esc> <C-\><C-n>

" netrw
nnoremap <silent> <leader>e :Lexplore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
"let g:netrw_altv = 0
let g:netrw_winsize = 20

autocmd FileType netrw nnoremap <buffer> o <Nop>
autocmd FileType netrw nnoremap <buffer> <C-l> <C-w>l

call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" theme
set background=dark
colorscheme PaperColor
set cursorline

