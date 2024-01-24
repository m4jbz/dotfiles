set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a
set encoding=UTF-8
set background=dark

let mapleader = "\<Space>"
au VimLeave * set guicursor=a:ver100
highlight Normal ctermbg=none
highlight NonText ctermbg=none

"" Calling config files 
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/vimwiki.vim
source ~/.config/nvim/plugins/vimtex.vim
source ~/.config/nvim/mappings/mappings.vim
"" -----------------------------------------

"" Colorscheme 
set termguicolors
set background=dark
colorscheme vscode
"" -----------------

"" Java highlighting
let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc
"" -------------------------------

"" C highlighting
let c_highlight_functions = 1
let c_highlight_all = 1
highlight link cStatement Statement
highlight link cType Type
highlight link cPreProc PreProc
"" -------------------------------
