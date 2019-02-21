let g:OmniSharp_server_use_mono = 1
let g:goyo_linenr = 1

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Discord Rich Presense
Plug 'anned20/vimsence'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'kien/ctrlp.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'shime/vim-livedown'

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

" Amnesia Modding
autocmd BufNewFile,BufRead *.ihps,*.shps,*.hps set syntax=cpp
autocmd BufWritePost *.ihps,*.shps !./build.sh

" ASP.NET
autocmd BufNewFile,BufRead *.cshtml set syntax=html

" Set timeoutlen for the 'O' lag.
set timeoutlen=100

" Simple mappings
map ,m :CtrlP<cr>

" AirlineTheme
let g:airline_theme='wombat'

" colorscheme
" colorscheme apprentice

" LiveDown config
" automatically open preview when markdown is opened
let g:livedown_autorun = 1

" Should browser pop-up when previewing
let g:livedown_open = 1

" the server port
let g:livedown_port = 1337

" the browser to use
let g:livedown_browser = "surf"

" OTHER MAPPINGS

" create two new lines after, but insert into the first one
nmap SP o<ESC>O

" add a new line after, but don't insert
nmap sp o<ESC>0d$

