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

call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'	
	Plug 'itchyny/lightline.vim'
	Plug 'rafalbromirski/vim-aurora'
	Plug 'lervag/vimtex'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set termguicolors
set background=dark
colorscheme aurora

highlight Normal ctermbg=none
highlight NonText ctermbg=none

"" Plugins configuration

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

let java_highlight_functions = 1
let java_highlight_all = 1
" If you are trying this at runtime, you need to reload the syntax file
set filetype=java

" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc


vnoremap <C-c> "+y
map <C-p> "+p
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-q> :q<CR>
nnoremap ty :VimtexCompile <CR>
nnoremap zz :update<cr>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
nnoremap <C-w> :vsplit <CR>
nnoremap <C-e> :split <CR>
nnoremap <C-M-l> :vertical resize +5 <CR>
nnoremap <C-M-h> :vertical resize -5 <CR>
nnoremap <C-M-k> :resize +1 <CR>
nnoremap <C-M-j> :resize -1 <CR>
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

autocmd FileType java inoremap ,sout System.out.println();
autocmd FileType java inoremap ,for for(int i = 0; i < range; i++) {<Enter><Enter>}
autocmd FileType java inoremap ,java public class name {<Enter><Enter>public static void main(String[] args) {<Enter><Enter><Enter><Enter>}<Enter>}

autocmd FileType tex inoremap ,sec \section{}
autocmd FileType tex inoremap ,tbf \textbf{}
autocmd FileType tex inoremap ,tsc \textsc{}
autocmd FileType tex inoremap ,tit \textit{}
autocmd FileType tex inoremap ,toc \tableofcontents
autocmd FileType tex inoremap ,btp \begin{titlepage}<Enter><Enter>\end{titlepage}<Enter><Enter><Esc>3kA<Space>
autocmd FileType tex inoremap ,box \begin{tcolorbox}<Enter><Enter>\end{tcolorbox}<Enter><Enter><Esc>3kA<Space>
autocmd FileType tex inoremap ,at \documentclass[a4paper, 12pt]{article}<Enter><Enter>
autocmd FileType tex inoremap ,be \documentclass[aspectratio=169, 10pt]{beamer}<Enter><Enter>
autocmd FileType tex inoremap ,bmm \usetheme{Madrid}<Enter>\usecolortheme{dove}<Enter>
autocmd FileType tex inoremap ,ssec \subsection{}
autocmd FileType tex inoremap ,img \includegraphics[width=0.5\textwidth]{}
autocmd FileType tex inoremap ,pk \usepackage{}

autocmd FileType tex inoremap ,fal \usepackage[utf8]{inputenc}<Enter>\usepackage[T1]{fontenc}<Enter>\usepackage[spanish]{babel}<Enter>\usepackage[margin=1in, top=1in, bottom=1in, includefoot]{geometry}<Enter>\usepackage{graphicx}<Enter>\usepackage{fancyhdr}<Enter>\usepackage{xcolor}<Enter>\usepackage{amsmath}<Enter>\usepackage{amssymb}<Enter>\usepackage{pdflscape}<Enter>\usepackage{hyperref}<Enter>\usepackage{lipsum}<Enter>\usepackage{parskip}<Enter><Enter>

autocmd FileType tex inoremap ,fbm \usepackage[utf8]{inputenc}<Enter>\usepackage[spanish]{babel}<Enter>\usepackage{graphicx}<Enter>\usepackage{fancyhdr}<Enter>\usepackage{xcolor}<Enter>\usepackage{amsmath}<Enter>\usepackage{amssymb}<Enter>\usepackage{pdflscape}<Enter>\usepackage{hyperref}<Enter>\usepackage[figurename=Ejemplo]{caption}<Enter>\usepackage{lipsum}<Enter>\usepackage{parskip}<Enter><Enter>

autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,il \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,bd \begin{document}<Enter><Enter>\end{document}<Esc>3kA<Tab>
autocmd FileType tex inoremap ,bf \begin{frame}<Enter><Enter>\end{frame}<Enter><Enter><Esc>3kA<Tab>
autocmd FileType tex inoremap ,bc \begin{center}<Enter><Enter>\end{center}<Enter><Enter><Esc>3kA<Tab>

au VimLeave * set guicursor=a:ver100

"--------------------------------------------------------------------------------------------"



" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let maplocalleader = ","



let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]















" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
