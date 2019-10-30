" Vim color file

set bg=light
hi clear

if exists("syntax_on")
  syntax reset
endif

hi Statement gui=bold guifg=fg
"hi clear Number
"hi clear String
hi Error gui=bold guibg=bg guifg=#aa0000
hi Constant gui=italic guifg=fg
hi Comment gui=italic guifg=#006600
hi PreProc NONE
hi Type guifg=#375eab
hi Special NONE
hi Directory gui=bold guifg=fg
hi NonText NONE
hi LineNr gui=italic guifg=#999999
hi Pmenu guibg=#e0ebf5
"hi PmenuSel gui=standout
hi Todo gui=standout guifg=#006600 guibg=bg
hi Visual guibg=#ff9632
"hi clear Cursor
hi Identifier NONE
hi Title NONE
hi MatchParen guibg=#e0ebf5
hi VertSplit NONE
hi Normal guifg=#222222 guibg=#f5f5f5
"hi Normal NONE
hi StatusLine guifg=#375eab
hi StatusLineNC guifg=#e0ebf5 guibg=#375eab
hi Search guibg=#ff9632
hi Directory guifg=#375eab

let colors_name = "gocode"
