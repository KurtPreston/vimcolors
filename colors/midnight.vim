" Vim color file

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="midnight"


" VIM

hi CursorLine cterm=none ctermbg=8
hi LineNr ctermfg=8 ctermbg=0
hi CursorLineNr ctermfg=15 ctermbg=0
hi MatchParen ctermfg=0 ctermbg=11
hi NonText ctermfg=8
hi PMenu ctermfg=0 ctermbg=15
hi PMenuSel ctermfg=15 ctermbg=4


" Syntax

hi Comment ctermfg=2

hi Constant ctermfg=3
hi String ctermfg=9
hi Character ctermfg=6
hi Number ctermfg=6
hi Boolean ctermfg=13
hi Float ctermfg=6

hi Identifier ctermfg=14
hi Function ctermfg=14
"hi Function ctermfg=14 blue
"hi Function ctermfg=10 light green

hi Statement ctermfg=13
hi Operator ctermfg=15

hi PreProc ctermfg=3

hi Type ctermfg=14
hi StorageClass ctermfg=13
hi Structure ctermfg=13
hi Typedef ctermfg=13

hi Special ctermfg=3

hi Underlined ctermfg=12

"hi Ignore ctermfg=0
"hi Error ctermfg=15 ctermbg=9
"hi Todo ctermfg=0 ctermbg=11


" JavaScript
hi def link javaScriptIdentifier Keyword
hi def link javaScriptValue Identifier
hi def link javaScriptNumber Number
hi def link javaScriptBraces Normal
hi def link jsGlobalObjects Identifier
hi def link jsObjectProp Identifier
hi def link jsUndefined Keyword
hi def link jsOperatorKeyword Keyword


" Coc
hi CocInfoFloat ctermfg=0
