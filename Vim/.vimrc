" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Discord Rich Presense
Plug 'anned20/vimsence'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end()

"No vi compatibility
set nocompatible

"set t_kb
fixdel

" show trailing whitespace chars
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" Better buffer management - hide buffers instead of closing them
set hidden

set history=100
" Default history is only 20
set undolevels=100  " Use more levels of undo

" tab -> spaces
set expandtab
set tabstop=4
  " a tab is 4 spaces
set softtabstop=4   " tab size when insterting/pasting
set shiftwidth=4    " number of spaces to use for autoindenting
set shiftround
 " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab
   " insert tabs on the start of a line according to shiftwidth, not tabstop

set autoindent
 " always set autoindenting on
set copyindent
 " copy the previous indentation on autoindenting

" Ruler on
set ruler

" Line numbers on
set nu rnu

" 80 characters reminder
set cc=80
highlight ColorColumn ctermbg=0

autocmd BufNewFile,BufRead *.ihps set syntax=cpp
autocmd BufNewFile,BufRead *.shps set syntax=cpp
autocmd BufNewFile,BufRead *.hps set syntax=cpp

" Set timeoutlen for the 'O' lag.
set timeoutlen=100


