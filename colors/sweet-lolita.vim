" Vim color file
"
" Authour: Akihito KIRISAKI<kirisaki@klaraworks.net>
" License: BSD 3-Clause
" https://klaraworks.net

hi clear
if exists("syntax_on")
    syntax reset
endif

set background=light
let g:colors_name="sweet-lolita"

hi Normal ctermfg=231 ctermbg=218 cterm=none guifg=#ffffff  guibg=#ffafd7 gui=none

hi Constant ctermfg=204 ctermbg=218 cterm=none guifg=#ff5f87 guibg=#ffafd7 gui=none

hi Comment ctermfg=204 ctermbg=218 cterm=none guifg=#ff5f87 guibg=#ffafd7 gui=none
hi TODO ctermfg=231 ctermbg=218 cterm=underline guifg=#ffffff  guibg=#ffafd7 gui=underline

hi Identifier ctermfg=205 ctermbg=218 cterm=bold guifg=#ff5faf guibg=#ffafd7 gui=bold
hi Function ctermfg=205 ctermbg=218 cterm=none guifg=#ff5faf guibg=#ffafd7 gui=none

hi Statement ctermfg=231 ctermbg=218 cterm=italic guifg=#ffffff  guibg=#ffafd7 gui=italic
hi Operator ctermfg=125 ctermbg=218 cterm=none guifg=#af005f guibg=#ffafd7 gui=none

hi PreProc ctermfg=205 ctermbg=218 cterm=none guifg=#ff5faf guibg=#ffafd7 gui=none
hi Macro ctermfg=205 ctermbg=218 cterm=bold guifg=#ff5faf guibg=#ffafd7 gui=bold

hi Type ctermfg=198 ctermbg=218 cterm=none guifg=#ff0087 guibg=#ffafd7 gui=none

hi Special ctermfg=125 ctermbg=218 cterm=none guifg=#af005f guibg=#ffafd7 gui=none

hi Underlined ctermfg=125 ctermbg=218 cterm=underline guifg=#af005f guibg=#ffafd7 gui=underline

hi ColorColumn ctermbg=230 guibg=#ffffd7 

hi ErrorMsg ctermfg=231 ctermbg=205 cterm=bold guifg=#ffffff  guibg=#ff5faf gui=bold
hi WarningMsg ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none

hi LineNr ctermfg=218 ctermbg=205 cterm=none guifg=#ffafd7 guibg=#ff5faf gui=none
hi CursorLineNr ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none

hi MatchParen ctermfg=231 ctermbg=205 cterm=bold guifg=#ffffff  guibg=#ff5faf gui=bold

hi Search ctermbg=230 guibg=#ffffd7

hi VertSplit ctermfg=205 ctermbg=205 cterm=none guifg=#ff5faf guibg=#ff5faf gui=none
hi StatusLine ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none
hi StatusLineNC ctermfg=218 ctermbg=205 cterm=none guifg=#ffafd7 guibg=#ff5faf gui=none
hi ModeMsg ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none
hi MoreMsg ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none

hi TabLine ctermfg=218 ctermbg=205 cterm=none guifg=#ffafd7 guibg=#ff5faf gui=none
hi TabLineFill ctermfg=218 ctermbg=205 cterm=none guifg=#ffafd7 guibg=#ff5faf gui=none
hi TabLineSel ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none

hi Visual ctermfg=231 ctermbg=205 cterm=none guifg=#ffffff  guibg=#ff5faf gui=none

hi Wildmenu ctermfg=205 ctermbg=230 cterm=none guifg=#ff5faf guibg=#ffafd7 gui=none
