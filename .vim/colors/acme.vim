highlight clear 

" for cterm, 'black' might get overwritten by the terminal emulator, so we use
" 232 (#080808), which is close enough.

highlight! Normal guibg=#ffffea guifg=#000000 ctermbg=230 ctermfg=232 
highlight! NonText guibg=bg guifg=#ffffea ctermbg=bg ctermfg=230
highlight! StatusLine guibg=#aeeeee guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE ctermbg=194 ctermfg=232 cterm=NONE
highlight! WildMenu guibg=#000000 guifg=#eaffff gui=NONE ctermbg=black ctermfg=159 cterm=NONE
highlight! VertSplit guibg=#ffffea guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! Folded guibg=#cccc7c guifg=fg gui=NONE ctermbg=187 ctermfg=fg cterm=NONE
highlight! FoldColumn guibg=#fcfcce guifg=fg ctermbg=229 ctermfg=fg
highlight! Conceal guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE
highlight! LineNr guibg=bg guifg=#505050 gui=NONE ctermbg=bg ctermfg=239 cterm=NONE
highlight! Visual guibg=fg guifg=bg ctermbg=fg ctermfg=bg
highlight! CursorLine guibg=#ffffca guifg=fg ctermbg=230 ctermfg=fg
highlight! Pmenu guibg=bg guifg=fg ctermbg=bg ctermfg=fg
highlight! PmenuSel guibg=fg guifg=bg ctermbg=fg ctermfg=bg

highlight! Statement guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE
highlight! Identifier guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Type guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! PreProc guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Constant guibg=bg guifg=#101010 gui=bold ctermbg=bg ctermfg=233 cterm=NONE
highlight! Comment guibg=bg guifg=#303030 gui=NONE ctermbg=bg ctermfg=236 cterm=NONE
highlight! Special guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! SpecialKey guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! NonText guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Directory guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! link Title Directory
highlight! link MoreMsg Comment
highlight! link Question Comment

" vim
hi link vimFunction Identifier

let g:colors_name = "acme"
