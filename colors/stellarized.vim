" Name:         stellarized
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[stellarized] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'stellarized'

if &background ==# 'dark'
  " Color similarity table (dark background)
  " blue: GUI=#698db0/rgb(105,141,176)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=2.728129]
  " yllw: GUI=#e2bd67/rgb(226,189,103)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=3.812495]
  " gren: GUI=#74926c/rgb(116,146,108)  Term= 65 #5f875f/rgb( 95,135, 95)  [delta=5.234229]
  " red_: GUI=#af7e72/rgb(175,126,114)  Term=138 #af8787/rgb(175,135,135)  [delta=6.071782]
  " gry3: GUI=#a08f7a/rgb(160,143,122)  Term=137 #af875f/rgb(175,135, 95)  [delta=8.657068]
  " gryc: GUI=#b6a58e/rgb(182,165,142)  Term=180 #d7af87/rgb(215,175,135)  [delta=8.905079]
  " gryy: GUI=#212231/rgb( 33, 34, 49)  Term=235 #262626/rgb( 38, 38, 38)  [delta=9.202536]
  " gry0: GUI=#212231/rgb( 33, 34, 49)  Term=235 #262626/rgb( 38, 38, 38)  [delta=9.202536]
  " gry1: GUI=#292b3c/rgb( 41, 43, 60)  Term=236 #303030/rgb( 48, 48, 48)  [delta=9.838095]
  " gry2: GUI=#7a6b56/rgb(122,107, 86)  Term=242 #6c6c6c/rgb(108,108,108)  [delta=10.897069]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=137 ctermbg=235 guifg=#a08f7a guibg=#212231 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=242 ctermbg=NONE guifg=#7a6b56 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=242 ctermbg=NONE guifg=#7a6b56 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=242 ctermbg=NONE guifg=#7a6b56 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=242 ctermbg=NONE guifg=#7a6b56 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=242 ctermbg=NONE guifg=#7a6b56 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=180 ctermbg=235 guifg=#b6a58e guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=180 ctermbg=235 guifg=#b6a58e guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=180 ctermbg=235 guifg=#b6a58e guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=137 ctermbg=235 guifg=#a08f7a guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLine ctermfg=137 ctermbg=235 guifg=#a08f7a guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=137 ctermbg=235 guifg=#a08f7a guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=137 ctermbg=235 guifg=#a08f7a guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=242 ctermbg=235 guifg=#7a6b56 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=242 ctermbg=235 guifg=#7a6b56 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=242 ctermbg=235 guifg=#7a6b56 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=242 ctermbg=235 guifg=#7a6b56 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=242 ctermbg=235 guifg=#7a6b56 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=236 guifg=NONE guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=137 ctermbg=236 guifg=#a08f7a guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=137 ctermbg=236 guifg=#a08f7a guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=137 ctermbg=236 guifg=#a08f7a guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=137 ctermbg=236 guifg=#a08f7a guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=137 ctermbg=236 guifg=#a08f7a guibg=#292b3c guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=137 ctermbg=236 guifg=#a08f7a guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=242 ctermbg=242 guifg=#7a6b56 guibg=#7a6b56 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=137 ctermbg=137 guifg=#a08f7a guibg=#a08f7a guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=236 ctermbg=236 guifg=#292b3c guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=236 ctermbg=236 guifg=#292b3c guibg=#292b3c guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=138 ctermbg=NONE guifg=#af7e72 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=138 ctermbg=NONE guifg=#af7e72 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=138 ctermbg=NONE guifg=#af7e72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=138 ctermbg=NONE guifg=#af7e72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=138 ctermbg=NONE guifg=#af7e72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=138 ctermbg=NONE guifg=#af7e72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=138 ctermbg=235 guifg=#af7e72 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=138 ctermbg=235 guifg=#af7e72 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=138 ctermbg=235 guifg=#af7e72 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=138 ctermbg=235 guifg=#af7e72 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=138 ctermbg=235 guifg=#af7e72 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=138 ctermbg=235 guifg=#af7e72 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=65 ctermbg=NONE guifg=#74926c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=65 ctermbg=235 guifg=#74926c guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=65 ctermbg=235 guifg=#74926c guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=67 ctermbg=NONE guifg=#698db0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=67 ctermbg=235 guifg=#698db0 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=67 ctermbg=235 guifg=#698db0 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=67 ctermbg=235 guifg=#698db0 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=67 ctermbg=235 guifg=#698db0 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

" Color similarity table (light background)
" yllw: GUI=#ffd300/rgb(255,211,  0)  Term=220 #ffd700/rgb(255,215,  0)  [delta=1.299534]
" gren: GUI=#26861f/rgb( 38,134, 31)  Term= 28 #008700/rgb(  0,135,  0)  [delta=2.380294]
" gry2: GUI=#9091ab/rgb(144,145,171)  Term=103 #8787af/rgb(135,135,175)  [delta=5.520647]
" gryc: GUI=#595a73/rgb( 89, 90,115)  Term= 60 #5f5f87/rgb( 95, 95,135)  [delta=5.562796]
" gry0: GUI=#fffdea/rgb(255,253,234)  Term=230 #ffffd7/rgb(255,255,215)  [delta=6.680007]
" gry3: GUI=#6a6c85/rgb(106,108,133)  Term= 60 #5f5f87/rgb( 95, 95,135)  [delta=6.875830]
" blue: GUI=#0077d0/rgb(  0,119,208)  Term= 32 #0087d7/rgb(  0,135,215)  [delta=6.935772]
" red_: GUI=#c74c3a/rgb(199, 76, 58)  Term=160 #d70000/rgb(215,  0,  0)  [delta=8.563312]
" gry1: GUI=#fbecda/rgb(251,236,218)  Term=255 #eeeeee/rgb(238,238,238)  [delta=8.836253]
" gryy: GUI=#212231/rgb( 33, 34, 49)  Term=235 #262626/rgb( 38, 38, 38)  [delta=9.202536]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=60 ctermbg=230 guifg=#6a6c85 guibg=#fffdea guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=103 ctermbg=NONE guifg=#9091ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=103 ctermbg=NONE guifg=#9091ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=103 ctermbg=NONE guifg=#9091ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=103 ctermbg=NONE guifg=#9091ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=103 ctermbg=NONE guifg=#9091ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=60 ctermbg=230 guifg=#595a73 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=60 ctermbg=230 guifg=#595a73 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=60 ctermbg=230 guifg=#595a73 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=60 ctermbg=230 guifg=#6a6c85 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=60 ctermbg=230 guifg=#6a6c85 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=230 guifg=#6a6c85 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=230 guifg=#6a6c85 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=103 ctermbg=230 guifg=#9091ab guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=103 ctermbg=230 guifg=#9091ab guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=103 ctermbg=230 guifg=#9091ab guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=103 ctermbg=230 guifg=#9091ab guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=103 ctermbg=230 guifg=#9091ab guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=255 guifg=NONE guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=255 guifg=#6a6c85 guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=255 guifg=#6a6c85 guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=255 guifg=#6a6c85 guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=255 guifg=#6a6c85 guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=255 guifg=#6a6c85 guibg=#fbecda guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=60 ctermbg=255 guifg=#6a6c85 guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=103 ctermbg=103 guifg=#9091ab guibg=#9091ab guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#6a6c85 guibg=#6a6c85 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=255 guifg=#fbecda guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=255 ctermbg=255 guifg=#fbecda guibg=#fbecda guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=160 ctermbg=NONE guifg=#c74c3a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=160 ctermbg=NONE guifg=#c74c3a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=160 ctermbg=NONE guifg=#c74c3a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=160 ctermbg=NONE guifg=#c74c3a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=160 ctermbg=NONE guifg=#c74c3a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=160 ctermbg=NONE guifg=#c74c3a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=160 ctermbg=230 guifg=#c74c3a guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=160 ctermbg=230 guifg=#c74c3a guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=160 ctermbg=230 guifg=#c74c3a guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=160 ctermbg=230 guifg=#c74c3a guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=160 ctermbg=230 guifg=#c74c3a guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=160 ctermbg=230 guifg=#c74c3a guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Include ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Macro ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreCondit ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreProc ctermfg=28 ctermbg=NONE guifg=#26861f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=28 ctermbg=230 guifg=#26861f guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=230 guifg=#26861f guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=32 ctermbg=NONE guifg=#0077d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=32 ctermbg=230 guifg=#0077d0 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=32 ctermbg=230 guifg=#0077d0 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=32 ctermbg=230 guifg=#0077d0 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=32 ctermbg=230 guifg=#0077d0 guibg=#fffdea guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=220 ctermbg=235 guifg=#ffd300 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=220 ctermbg=235 guifg=#ffd300 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=220 ctermbg=235 guifg=#ffd300 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=235 guifg=#ffd300 guibg=#212231 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fffdea ~
" Color:      gry1 #fbecda ~
" Color:      gry2 #9091ab ~
" Color:      gry3 #6a6c85 ~
" Color:      gryc #595a73 ~
" Color:      gryy #212231 ~
" Color:      yllw #ffd300 ~
" Color:      red_ #c74c3a ~
" Color:      gren #26861f ~
" Color:      blue #0077d0 ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" FoldColumn         gry2   none
" LineNr             gry2   none
" SignColumn         gry2   none
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" PmenuSel           gry3   gry0   reverse
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" Function           red_   none
" Identifier         red_   none
" StorageClass       red_   none   bold
" Structure          red_   none   bold
" Type               red_   none   bold
" Typedef            red_   none   bold
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" TooLong            red_   gry0   reverse
" WarningMsg         red_   gry0   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" Define             gren   none   bold
" Include            gren   none   bold
" Macro              gren   none   bold
" PreCondit          gren   none   bold
" PreProc            gren   none   bold
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              blue   none   bold
" Delimiter          blue   none   bold
" Special            blue   none   bold
" SpecialChar        blue   none   bold
" SpecialComment     blue   none   bold
" SpecialKey         blue   none   bold
" Tag                blue   none   bold
" Todo               blue   none   bold
" SpellBad           blue   gry0   reverse
" SpellLocal         blue   gry0   reverse
" SpellCap           blue   gry0   reverse
" SpellRare          blue   gry0   reverse
" DiffChanged yllw gryy reverse
" DiffText    yllw gryy reverse
" MatchParen  yllw gryy reverse
" Search      yllw gryy reverse
" Background: dark
" Color:      gry0 #212231 ~
" Color:      gry1 #292b3c ~
" Color:      gry2 #7a6b56 ~
" Color:      gry3 #a08f7a ~
" Color:      gryc #b6a58e ~
" Color:      gryy #212231 ~
" Color:      yllw #e2bd67 ~
" Color:      red_ #af7e72 ~
" Color:      gren #74926c ~
" Color:      blue #698db0 ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" FoldColumn         gry2   none
" LineNr             gry2   none
" SignColumn         gry2   none
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" PmenuSel           gry3   gry0   reverse
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" Function           red_   none
" Identifier         red_   none
" StorageClass       red_   none   bold
" Structure          red_   none   bold
" Type               red_   none   bold
" Typedef            red_   none   bold
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" TooLong            red_   gry0   reverse
" WarningMsg         red_   gry0   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" Define             gren   none   bold
" Include            gren   none   bold
" Macro              gren   none   bold
" PreCondit          gren   none   bold
" PreProc            gren   none   bold
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              blue   none   bold
" Delimiter          blue   none   bold
" Special            blue   none   bold
" SpecialChar        blue   none   bold
" SpecialComment     blue   none   bold
" SpecialKey         blue   none   bold
" Tag                blue   none   bold
" Todo               blue   none   bold
" SpellBad           blue   gry0   reverse
" SpellLocal         blue   gry0   reverse
" SpellCap           blue   gry0   reverse
" SpellRare          blue   gry0   reverse
" DiffChanged yllw gry0 reverse
" DiffText    yllw gry0 reverse
" MatchParen  yllw gry0 reverse
" Search      yllw gry0 reverse
