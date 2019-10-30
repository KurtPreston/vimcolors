set bg=light

let g:colors_name="mandevilla"
hi clear

hi Character      ctermfg=5
hi String         ctermfg=5

hi Conditional    ctermfg=26
hi Exception      ctermfg=26
hi Keyword        ctermfg=26
hi Label          ctermfg=26
hi Operator       ctermfg=26
hi Repeat         ctermfg=26
hi Statement      ctermfg=26

hi Type           ctermfg=55

hi StorageClass   ctermfg=61
hi Structure      ctermfg=61
hi Typedef        ctermfg=61

hi Boolean        ctermfg=126
hi Constant       ctermfg=126
hi Define         ctermfg=126
hi Float          ctermfg=126
hi Include        ctermfg=126
hi Macro          ctermfg=126
hi Number         ctermfg=126
hi PreCondit      ctermfg=126
hi PreProc        ctermfg=126

hi Identifier     ctermfg=161
hi Function       ctermfg=161

hi Debug          ctermfg=167
hi Delimiter      ctermfg=167
hi Special        ctermfg=167
hi SpecialChar    ctermfg=167
hi SpecialComment ctermfg=167
hi Tag            ctermfg=167

hi Error          ctermfg=231 ctermbg=160
hi Search         ctermfg=231 ctermbg=136  cterm=underline,bold
hi Visual         ctermfg=231 ctermbg=24

hi TabLineSel     ctermfg=238              cterm=none

hi CursorLineNr   ctermfg=241              cterm=none
hi Normal         ctermfg=241
hi TabLine        ctermfg=241              cterm=none
hi Underlined     ctermfg=241              cterm=underline

hi Comment        ctermfg=244

hi StatusLine     ctermfg=245              cterm=none

hi StatusLineNC   ctermfg=246              cterm=none
hi Todo           ctermfg=246 ctermbg=none cterm=bold

hi LineNr         ctermfg=251

hi VertSplit      ctermfg=254              cterm=none

hi CursorColumn                            cterm=none
hi CursorLine                              cterm=none
hi MatchParen                 ctermbg=none cterm=underline,bold
hi TabLineFill                             cterm=none

" JSX / XML highlighting
hi xmlTag     ctermfg=19
hi xmlTagName ctermfg=19
hi xmlEndTag  ctermfg=19
