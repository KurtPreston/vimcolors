" Vim color file

hi clear

let g:colors_name = "modernized-vim"

set background=dark

" Normal should come first
"hi Normal
"hi Cursor
"hi lCursor

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermbg=LightBlue
hi DiffChange ctermbg=LightMagenta
hi DiffDelete ctermfg=027         ctermbg=LightCyan
hi DiffText   ctermbg=Red          cterm=bold
hi Directory  ctermfg=DarkBlue
hi ErrorMsg   ctermfg=White        ctermbg=DarkRed
hi FoldColumn ctermfg=DarkBlue     ctermbg=DarkGrey
hi Folded     ctermbg=233 ctermfg=DarkRed
"hi IncSearch  cterm=reverse
hi IncSearch  ctermfg=White
hi LineNr     ctermfg=LightRed
hi LineNr     ctermfg=244          ctermbg=233         cterm=None
hi ModeMsg    cterm=bold
hi MoreMsg    ctermfg=DarkGreen
hi NonText    ctermfg=027
hi PmenuSel   ctermfg=White        ctermbg=DarkBlue
hi TabLine ctermfg=Gray        ctermbg=008
hi TabLineFill ctermfg=Black        ctermbg=008
hi TabLineSel  ctermfg=White        ctermbg=241

hi Question   ctermfg=DarkGreen

hi Search     ctermfg=Black    ctermbg=Yellow

hi SpecialKey ctermfg=DarkBlue
hi StatusLine cterm=bold           ctermbg=Black ctermfg=Gray
hi StatusLineNC    cterm=bold      ctermbg=Gray ctermfg=Black
hi Title      ctermfg=DarkMagenta
hi VertSplit  cterm=reverse
hi Visual     ctermbg=NONE         cterm=reverse
hi WarningMsg ctermfg=DarkRed
hi WildMenu   ctermfg=Black        ctermbg=DarkRed

" syntax highlighting
hi ColorColumn cterm=NONE ctermbg=234

" syntax highlighting
hi Comment    cterm=NONE ctermfg=241
hi Constant   cterm=NONE ctermfg=112
hi Identifier cterm=NONE ctermfg=027
hi PreProc    cterm=NONE ctermfg=DarkRed
hi Special    cterm=NONE ctermfg=LightRed
hi Statement  cterm=bold ctermfg=027
hi Type       cterm=NONE ctermfg=027
" vim: sw=2
