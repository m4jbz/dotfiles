"" Plugins 

call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'	
	Plug 'itchyny/lightline.vim'
	Plug 'vimwiki/vimwiki'
	Plug 'rafalbromirski/vim-aurora'
	Plug 'lervag/vimtex'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
