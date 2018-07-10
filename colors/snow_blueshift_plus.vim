" Name:         snow_blueshift_plus
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[snow_blueshift_plus] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'snow_blueshift_plus'

if &background ==# 'dark'
  " Color similarity table (dark background)
  " yllw: GUI=#e2bd67/rgb(226,189,103)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=3.812495]
  " red_: GUI=#b38d72/rgb(179,141,114)  Term=137 #af875f/rgb(175,135, 95)  [delta=4.713893]
  " gryc: GUI=#d9dfe9/rgb(217,223,233)  Term=253 #dadada/rgb(218,218,218)  [delta=5.059172]
  " blue: GUI=#9d8fba/rgb(157,143,186)  Term=103 #8787af/rgb(135,135,175)  [delta=5.508029]
  " gryy: GUI=#1e2630/rgb( 30, 38, 48)  Term=235 #262626/rgb( 38, 38, 38)  [delta=6.595212]
  " gry0: GUI=#1e2630/rgb( 30, 38, 48)  Term=235 #262626/rgb( 38, 38, 38)  [delta=6.595212]
  " gren: GUI=#62a194/rgb( 98,161,148)  Term= 73 #5fafaf/rgb( 95,175,175)  [delta=6.611816]
  " gry1: GUI=#27313e/rgb( 39, 49, 62)  Term=236 #303030/rgb( 48, 48, 48)  [delta=7.884572]
  " gry3: GUI=#a1abbc/rgb(161,171,188)  Term=248 #a8a8a8/rgb(168,168,168)  [delta=8.111804]
  " gry2: GUI=#818da0/rgb(129,141,160)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=8.549567]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=248 ctermbg=235 guifg=#a1abbc guibg=#1e2630 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=67 ctermbg=NONE guifg=#818da0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#818da0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=67 ctermbg=NONE guifg=#818da0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=253 ctermbg=235 guifg=#d9dfe9 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=253 ctermbg=235 guifg=#d9dfe9 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=253 ctermbg=235 guifg=#d9dfe9 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTermNC ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WildMenu ctermfg=67 ctermbg=235 guifg=#818da0 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=236 guifg=NONE guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=248 ctermbg=236 guifg=#a1abbc guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=248 ctermbg=236 guifg=#a1abbc guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=248 ctermbg=236 guifg=#a1abbc guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=248 ctermbg=236 guifg=#a1abbc guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=248 ctermbg=236 guifg=#a1abbc guibg=#27313e guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VisualNOS ctermfg=NONE ctermbg=236 guifg=NONE guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#818da0 guibg=#818da0 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=248 ctermbg=248 guifg=#a1abbc guibg=#a1abbc guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=67 ctermbg=67 guifg=#818da0 guibg=#818da0 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=236 ctermbg=236 guifg=#27313e guibg=#27313e guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=137 ctermbg=NONE guifg=#b38d72 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=137 ctermbg=NONE guifg=#b38d72 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=137 ctermbg=NONE guifg=#b38d72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=137 ctermbg=NONE guifg=#b38d72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=137 ctermbg=NONE guifg=#b38d72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=137 ctermbg=NONE guifg=#b38d72 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=137 ctermbg=235 guifg=#b38d72 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=137 ctermbg=235 guifg=#b38d72 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=137 ctermbg=235 guifg=#b38d72 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=137 ctermbg=235 guifg=#b38d72 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=137 ctermbg=235 guifg=#b38d72 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=137 ctermbg=235 guifg=#b38d72 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=73 ctermbg=NONE guifg=#62a194 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=73 ctermbg=235 guifg=#62a194 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=73 ctermbg=235 guifg=#62a194 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=103 ctermbg=NONE guifg=#9d8fba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=103 ctermbg=235 guifg=#9d8fba guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=103 ctermbg=235 guifg=#9d8fba guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=103 ctermbg=235 guifg=#9d8fba guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=103 ctermbg=235 guifg=#9d8fba guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=235 guifg=#e2bd67 guibg=#1e2630 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

" Color similarity table (light background)
" gry0: GUI=#ffffff/rgb(255,255,255)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.000000]
" yllw: GUI=#ffd300/rgb(255,211,  0)  Term=220 #ffd700/rgb(255,215,  0)  [delta=1.299534]
" blue: GUI=#7e62cf/rgb(126, 98,207)  Term= 98 #875fd7/rgb(135, 95,215)  [delta=2.141362]
" red_: GUI=#af5c0f/rgb(175, 92, 15)  Term=130 #af5f00/rgb(175, 95,  0)  [delta=2.396834]
" gry1: GUI=#ebeff5/rgb(235,239,245)  Term=255 #eeeeee/rgb(238,238,238)  [delta=3.136342]
" gren: GUI=#00836a/rgb(  0,131,106)  Term= 29 #00875f/rgb(  0,135, 95)  [delta=4.651099]
" gryy: GUI=#2f3947/rgb( 47, 57, 71)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=8.168156]
" gryc: GUI=#2f3947/rgb( 47, 57, 71)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=8.168156]
" gry2: GUI=#697586/rgb(105,117,134)  Term=243 #767676/rgb(118,118,118)  [delta=8.739034]
" gry3: GUI=#4f5b6c/rgb( 79, 91,108)  Term=240 #585858/rgb( 88, 88, 88)  [delta=9.004452]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=240 ctermbg=231 guifg=#4f5b6c guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=243 ctermbg=NONE guifg=#697586 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=243 ctermbg=NONE guifg=#697586 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=243 ctermbg=NONE guifg=#697586 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=237 ctermbg=231 guifg=#2f3947 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=237 ctermbg=231 guifg=#2f3947 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=237 ctermbg=231 guifg=#2f3947 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLine ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTermNC ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WildMenu ctermfg=243 ctermbg=231 guifg=#697586 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=240 ctermbg=255 guifg=#4f5b6c guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=240 ctermbg=255 guifg=#4f5b6c guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=240 ctermbg=255 guifg=#4f5b6c guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=240 ctermbg=255 guifg=#4f5b6c guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=240 ctermbg=255 guifg=#4f5b6c guibg=#ebeff5 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VisualNOS ctermfg=NONE ctermbg=255 guifg=NONE guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=243 ctermbg=243 guifg=#697586 guibg=#697586 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=240 ctermbg=240 guifg=#4f5b6c guibg=#4f5b6c guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=243 ctermbg=243 guifg=#697586 guibg=#697586 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=255 ctermbg=255 guifg=#ebeff5 guibg=#ebeff5 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=130 ctermbg=NONE guifg=#af5c0f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=130 ctermbg=NONE guifg=#af5c0f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=130 ctermbg=NONE guifg=#af5c0f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=130 ctermbg=NONE guifg=#af5c0f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=130 ctermbg=NONE guifg=#af5c0f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=130 ctermbg=NONE guifg=#af5c0f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=130 ctermbg=231 guifg=#af5c0f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=130 ctermbg=231 guifg=#af5c0f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=130 ctermbg=231 guifg=#af5c0f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=130 ctermbg=231 guifg=#af5c0f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=130 ctermbg=231 guifg=#af5c0f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=130 ctermbg=231 guifg=#af5c0f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Include ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Macro ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreCondit ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreProc ctermfg=29 ctermbg=NONE guifg=#00836a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=29 ctermbg=231 guifg=#00836a guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=29 ctermbg=231 guifg=#00836a guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=98 ctermbg=NONE guifg=#7e62cf guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=98 ctermbg=231 guifg=#7e62cf guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=98 ctermbg=231 guifg=#7e62cf guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=98 ctermbg=231 guifg=#7e62cf guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=98 ctermbg=231 guifg=#7e62cf guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#2f3947 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#2f3947 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#2f3947 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#2f3947 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #ffffff ~
" Color:      gry1 #ebeff5 ~
" Color:      gry2 #697586 ~
" Color:      gry3 #4f5b6c ~
" Color:      gryc #2f3947 ~
" Color:      gryy #2f3947 ~
" Color:      yllw #ffd300 ~
" Color:      red_ #af5c0f ~
" Color:      gren #00836a ~
" Color:      blue #7e62cf ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         none   none
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
" LineNr             gry2   none
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" TabLine            gry2   gry0   reverse
" StatusLineNC       gry2   gry0   reverse
" StatusLineTermNC   gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" WildMenu           gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLineSel         gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          none   gry1
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry2   gry2
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
" DiffChanged yllw gryc reverse
" DiffText    yllw gryc reverse
" MatchParen  yllw gryc reverse
" Search      yllw gryc reverse
" Background: dark
" Color:      gry0 #1e2630 ~
" Color:      gry1 #27313e ~
" Color:      gry2 #818da0 ~
" Color:      gry3 #a1abbc ~
" Color:      gryc #d9dfe9 ~
" Color:      gryy #1e2630 ~
" Color:      yllw #e2bd67 ~
" Color:      red_ #b38d72 ~
" Color:      gren #62a194 ~
" Color:      blue #9d8fba ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         none   none
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
" LineNr             gry2   none
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" TabLine            gry2   gry0   reverse
" StatusLineNC       gry2   gry0   reverse
" StatusLineTermNC   gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" WildMenu           gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLineSel         gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          none   gry1
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry2   gry2
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