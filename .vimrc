syntax enable
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set softtabstop=2
set shiftwidth=2
set tabstop=4
set expandtab
set nofoldenable

set number
set cc=81
set autoindent
set history=1000

" Always open NERDTree
autocmd vimenter * NERDTree
" Cursor goes to main window if we open a file, NERDTree window otherwise
autocmd vimenter * if argc() | wincmd p | endif
" Close vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" syntax highlighting
au BufNewFile,BufRead Gemfile set filetype=ruby

syntax enable
set background=dark
let g:solarized_visibility = "high"
colorscheme solarized
