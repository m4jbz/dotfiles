"" Mappings

"" Normal keymaps 
vnoremap <C-c> "+y
nnoremap <C-p> "+p
nnoremap <C-n> :Ex <CR>
nnoremap <C-q> :q<CR>
nnoremap ty :VimtexCompile <CR>
nnoremap zz :update<cr>
nnoremap <C-b> :!touch build.sh && chmod +x build.sh && echo "\#\!/bin/sh\n\nset -xe\n\n" > build.sh<CR>
nnoremap <C-f> :Files <CR>
nnoremap ff :!./build.sh<CR>
"" inoremap " ""<left>
"" inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
nnoremap <C-t> :vsplit <CR>
"" nnoremap <C-e> :split <CR>
nnoremap to :!touch 
nnoremap cd :cd ~/
nnoremap mk :!mkdir 
nnoremap <s-M-l> :vertical resize +5 <CR>
nnoremap <s-M-h> :vertical resize -5 <CR>
nnoremap <s-M-k> :resize +1 <CR>
nnoremap <s-M-j> :resize -1 <CR>
nmap <s-k>  <c-w>k
nmap <s-h>  <c-w>h
nmap <s-l> <c-w>l
nnoremap <S-t> :terminal <CR> 
nnoremap <C-a> :tabnew <CR> 
nnoremap <S-p> :tabprevious <CR> 
tnoremap <C-k><C-k> <C-\><C-n>
nnoremap <leader>c :s/^/\/\/ /<CR>:noh<CR>
vnoremap <leader>c :s/^/\/\/ /<CR>:noh<CR>
nnoremap <leader>u :s/\/\/ //<CR>:noh<CR>
vnoremap <leader>u :s/\/\/ //<CR>:noh<CR>
""-------------------------------------------

nnoremap <leader>t :edit 

"" C/C++ keymaps 
autocmd FileType c inoremap ,c #include <stdio.h><Enter>#include <stdlib.h><Enter>#include <stdbool.h><Enter>#include <math.h><Enter><Enter>int main()<Enter>{<Enter><Enter>return 0;<Enter>}
autocmd FileType c inoremap ,for for (int i = 0; i < 1; ++i) {<Enter>}
autocmd FileType cpp inoremap ,c #include <iostream><Enter>#include <cstdio><Enter><Enter>int main()<Enter>{<Enter><Enter>return 0;<Enter>}
autocmd FileType cpp inoremap ,for for (int i = 0; i < 1; ++i)<Enter>{<Enter>}
""-------------------------------------------

"" Java keymaps
autocmd FileType java inoremap ,sout System.out.println();
autocmd FileType java inoremap ,for for (int i = 0; i < 1; ++i) {<Enter><Enter>}
autocmd FileType java inoremap ,java import java.util.Scanner;<Enter><Enter>class <C-R>=expand('%:t:r')<CR> {<Enter>public static void main(String[] args) {<Enter>Scanner sc = new Scanner(System.in);<Enter><Enter>sc.close();<Enter>}<Enter>}
""-------------------------------------------

"" LaTeX keymaps
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

autocmd FileType tex inoremap ,fal \usepackage[utf8]{inputenc}<Enter>\usepackage[T1]{fontenc}<Enter>\usepackage[spanish]{babel}<Enter>\usepackage[margin=1in, top=1in, bottom=1in, includefoot]{geometry}<Enter>\usepackage{graphicx}<Enter>\usepackage{fancyhdr}<Enter>\usepackage{xcolor}<Enter>\usepackage{amsmath}<Enter>\usepackage{amssymb}<Enter>\usepackage{pdflscape}<Enter>\usepackage{hyperref}<Enter>\usepackage{lipsum}<Enter>\usepackage{parskip}<Enter>\pagestyle{empty}<Enter><Enter>

autocmd FileType tex inoremap ,fbm \usepackage[utf8]{inputenc}<Enter>\usepackage[spanish]{babel}<Enter>\usepackage{graphicx}<Enter>\usepackage{fancyhdr}<Enter>\usepackage{xcolor}<Enter>\usepackage{amsmath}<Enter>\usepackage{amssymb}<Enter>\usepackage{pdflscape}<Enter>\usepackage{hyperref}<Enter>\usepackage[figurename=Ejemplo]{caption}<Enter>\usepackage{lipsum}<Enter>\usepackage{parskip}<Enter><Enter>

autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><Esc>3kA\item<Space>
autocmd FileType tex inoremap ,bd \begin{document}<Enter><Enter>\end{document}<Esc>3kA<Tab>
autocmd FileType tex inoremap ,bf \begin{frame}<Enter><Enter>\end{frame}<Esc>3kA<Tab>
autocmd FileType tex inoremap ,bc \begin{center}<Enter><Enter>\end{center}<Esc>3kA<Tab>
""-------------------------------------------
