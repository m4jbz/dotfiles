set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4 
set mouse=a
set encoding=UTF-8
set list              " Enable the display of special characters
set listchars=tab:▸\ ,trail:·,nbsp:␣
set expandtab      " Use spaces instead of tabs

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

" set background=dark
set termguicolors
colorscheme tsoding

set shell=/bin/zsh
set clipboard=unnamedplus 
syntax on

source ~/.vim/mappings/mappings.vim

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


set backspace=indent,eol,start " backspace over everything in insert mode