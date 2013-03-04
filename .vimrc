call pathogen#infect()

syntax on
filetype on

set softtabstop=2
set shiftwidth=2
set tabstop=4
set expandtab

set nofoldenable

autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

" custom syntax highlighting
au BufNewFile,BufRead *.jsm set filetype=javascript
au BufNewFile,BufRead *.js.jst set filetype=javascript
au BufNewFile,BufRead *.js.mustache set filetype=javascript
au BufNewFile,BufRead *.css.jst set filetype=css
au BufNewFile,BufRead *.coffee.jst set filetype=coffee
au BufNewFile,BufRead Capfile set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead config.ru set filetype=ruby
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.less.jst set filetype=less
au BufNewFile,BufRead *.snippets set filetype=snippets

" highlight trailing whitespace, except while typing
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

set number
set cc=81
set autoindent
set history=1000

" toggle F2 to paste without nasty autoindent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/vendor/*,*/node_modules/*,*/.git/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.

syntax enable
set background=dark
let g:solarized_visibility = "high"
colorscheme solarized

" toggle hidden characters with \l
nmap <leader>l :set list!<CR>
" use textmate hidden character symbols
set listchars=tab:▸\ ,eol:¬

let g:UltiSnipsSnippetDirectories=[ 'UltiSnips', 'my-snippets' ]

" Always open NERDTree
autocmd vimenter * NERDTree
" Cursor goes to main window if we open a file, NERDTree window otherwise
autocmd vimenter * if argc() | wincmd p | endif
" Close vim if NERDTree is th eonly window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
hi Comment ctermfg=gray
hi Comment cterm=none
