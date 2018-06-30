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
  " yllw: GUI=#cfaa54/rgb(207,170, 84)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=2.210854]
  " blue: GUI=#5f87b7/rgb( 95,135,183)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=2.901298]
  " pink: GUI=#b77c82/rgb(183,124,130)  Term=138 #af8787/rgb(175,135,135)  [delta=5.488103]
  " orng: GUI=#b87c4e/rgb(184,124, 78)  Term=137 #af875f/rgb(175,135, 95)  [delta=5.676846]
  " prpl: GUI=#9776a4/rgb(151,118,164)  Term=139 #af87af/rgb(175,135,175)  [delta=6.908951]
  " gry2: GUI=#8a8074/rgb(138,128,116)  Term=244 #808080/rgb(128,128,128)  [delta=6.985285]
  " gry1: GUI=#3a3b47/rgb( 58, 59, 71)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=7.086572]
  " gry3: GUI=#aba194/rgb(171,161,148)  Term=247 #9e9e9e/rgb(158,158,158)  [delta=7.134566]
  " gren: GUI=#6d9353/rgb(109,147, 83)  Term= 65 #5f875f/rgb( 95,135, 95)  [delta=7.240521]
  " red_: GUI=#c87361/rgb(200,115, 97)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=7.415556]
  " aqua: GUI=#2b9685/rgb( 43,150,133)  Term= 30 #008787/rgb(  0,135,135)  [delta=7.984518]
  " gry0: GUI=#282835/rgb( 40, 40, 53)  Term=235 #262626/rgb( 38, 38, 38)  [delta=8.139087]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=247 ctermbg=NONE guifg=#aba194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=247 ctermbg=NONE guifg=#aba194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=247 ctermbg=NONE guifg=#aba194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=247 ctermbg=NONE guifg=#aba194 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi NonText ctermfg=247 ctermbg=NONE guifg=#aba194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=247 ctermbg=235 guifg=#aba194 guibg=#282835 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=247 ctermbg=NONE guifg=#aba194 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=244 ctermbg=NONE guifg=#8a8074 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=244 ctermbg=NONE guifg=#8a8074 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=244 ctermbg=NONE guifg=#8a8074 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi IncSearch ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=235 ctermbg=247 guifg=#282835 guibg=#aba194 guisp=NONE cterm=NONE gui=NONE
  hi TermCursor ctermfg=235 ctermbg=244 guifg=#282835 guibg=#8a8074 guisp=NONE cterm=NONE gui=NONE
  hi TermCursorNC ctermfg=235 ctermbg=244 guifg=#282835 guibg=#8a8074 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=235 ctermbg=244 guifg=#282835 guibg=#8a8074 guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=235 ctermbg=244 guifg=#282835 guibg=#8a8074 guisp=NONE cterm=NONE gui=NONE
  hi ColorColumn ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi VisualNOS ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=247 ctermbg=237 guifg=#aba194 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=237 ctermbg=237 guifg=#3a3b47 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=244 ctermbg=244 guifg=#8a8074 guibg=#8a8074 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#3a3b47 guibg=#3a3b47 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=244 ctermbg=244 guifg=#8a8074 guibg=#8a8074 guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=235 ctermbg=167 guifg=#282835 guibg=#c87361 guisp=NONE cterm=NONE gui=NONE
  hi DiffRemoved ctermfg=167 ctermbg=NONE guifg=#c87361 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=167 ctermbg=NONE guifg=#c87361 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=167 ctermbg=NONE guifg=#c87361 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#c87361 cterm=NONE,undercurl gui=NONE,undercurl
  hi TooLong ctermfg=167 ctermbg=NONE guifg=#c87361 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#c87361 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffText ctermfg=235 ctermbg=137 guifg=#282835 guibg=#b87c4e guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=137 ctermbg=NONE guifg=#b87c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#b87c4e cterm=NONE,undercurl gui=NONE,undercurl
  hi Conditional ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=235 ctermbg=65 guifg=#282835 guibg=#6d9353 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdded ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=65 ctermbg=NONE guifg=#6d9353 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#2b9685 cterm=NONE,undercurl gui=NONE,undercurl
  hi StorageClass ctermfg=30 ctermbg=NONE guifg=#2b9685 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=30 ctermbg=NONE guifg=#2b9685 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=30 ctermbg=NONE guifg=#2b9685 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=30 ctermbg=NONE guifg=#2b9685 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#5f87b7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#5f87b7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#5f87b7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#5f87b7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#5f87b7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#5f87b7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#9776a4 cterm=NONE,undercurl gui=NONE,undercurl
  hi Tag ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=139 ctermbg=NONE guifg=#9776a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=138 ctermbg=NONE guifg=#b77c82 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=138 ctermbg=NONE guifg=#b77c82 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=235 ctermbg=179 guifg=#282835 guibg=#cfaa54 guisp=NONE cterm=NONE gui=NONE
  hi Search ctermfg=235 ctermbg=179 guifg=#282835 guibg=#cfaa54 guisp=NONE cterm=NONE gui=NONE
  finish
endif

" Color similarity table (light background)
" prpl: GUI=#aa67c8/rgb(170,103,200)  Term=134 #af5fd7/rgb(175, 95,215)  [delta=3.167056]
" blue: GUI=#008beb/rgb(  0,139,235)  Term= 32 #0087d7/rgb(  0,135,215)  [delta=4.596685]
" aqua: GUI=#00a084/rgb(  0,160,132)  Term= 36 #00af87/rgb(  0,175,135)  [delta=5.307530]
" orng: GUI=#d07018/rgb(208,112, 24)  Term=166 #d75f00/rgb(215, 95,  0)  [delta=5.359841]
" pink: GUI=#e16177/rgb(225, 97,119)  Term=204 #ff5f87/rgb(255, 95,135)  [delta=5.627434]
" yllw: GUI=#fcbf00/rgb(252,191,  0)  Term=214 #ffaf00/rgb(255,175,  0)  [delta=6.216543]
" gry0: GUI=#fcf1e4/rgb(252,241,228)  Term=255 #eeeeee/rgb(238,238,238)  [delta=6.797055]
" gry1: GUI=#e4dacc/rgb(228,218,204)  Term=253 #dadada/rgb(218,218,218)  [delta=6.975598]
" red_: GUI=#ea5a44/rgb(234, 90, 68)  Term=203 #ff5f5f/rgb(255, 95, 95)  [delta=7.193480]
" gry2: GUI=#80818f/rgb(128,129,143)  Term=244 #808080/rgb(128,128,128)  [delta=7.205780]
" gren: GUI=#4d991b/rgb( 77,153, 27)  Term= 70 #5faf00/rgb( 95,175,  0)  [delta=7.450412]
" gry3: GUI=#616170/rgb( 97, 97,112)  Term=241 #626262/rgb( 98, 98, 98)  [delta=8.038850]
" gry4: GUI=#282835/rgb( 40, 40, 53)  Term=235 #262626/rgb( 38, 38, 38)  [delta=8.139087]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=241 ctermbg=NONE guifg=#616170 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=241 ctermbg=NONE guifg=#616170 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=241 ctermbg=NONE guifg=#616170 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=241 ctermbg=NONE guifg=#616170 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi NonText ctermfg=241 ctermbg=NONE guifg=#616170 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=241 ctermbg=255 guifg=#616170 guibg=#fcf1e4 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=241 ctermbg=NONE guifg=#616170 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=244 ctermbg=NONE guifg=#80818f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=244 ctermbg=NONE guifg=#80818f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=244 ctermbg=NONE guifg=#80818f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=255 ctermbg=241 guifg=#fcf1e4 guibg=#616170 guisp=NONE cterm=NONE gui=NONE
hi TermCursor ctermfg=255 ctermbg=244 guifg=#fcf1e4 guibg=#80818f guisp=NONE cterm=NONE gui=NONE
hi TermCursorNC ctermfg=255 ctermbg=244 guifg=#fcf1e4 guibg=#80818f guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=255 ctermbg=244 guifg=#fcf1e4 guibg=#80818f guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=255 ctermbg=244 guifg=#fcf1e4 guibg=#80818f guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=241 ctermbg=253 guifg=#616170 guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=253 ctermbg=253 guifg=#e4dacc guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=244 ctermbg=244 guifg=#80818f guibg=#80818f guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=253 ctermbg=253 guifg=#e4dacc guibg=#e4dacc guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=244 ctermbg=244 guifg=#80818f guibg=#80818f guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=255 ctermbg=203 guifg=#fcf1e4 guibg=#ea5a44 guisp=NONE cterm=NONE gui=NONE
hi DiffRemoved ctermfg=203 ctermbg=NONE guifg=#ea5a44 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=203 ctermbg=NONE guifg=#ea5a44 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=203 ctermbg=NONE guifg=#ea5a44 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ea5a44 cterm=NONE,undercurl gui=NONE,undercurl
hi TooLong ctermfg=203 ctermbg=NONE guifg=#ea5a44 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#ea5a44 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=255 ctermbg=166 guifg=#fcf1e4 guibg=#d07018 guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=166 ctermbg=NONE guifg=#d07018 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d07018 cterm=NONE,undercurl gui=NONE,undercurl
hi Conditional ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=255 ctermbg=70 guifg=#fcf1e4 guibg=#4d991b guisp=NONE cterm=NONE gui=NONE
hi DiffAdded ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=70 ctermbg=NONE guifg=#4d991b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00a084 cterm=NONE,undercurl gui=NONE,undercurl
hi StorageClass ctermfg=36 ctermbg=NONE guifg=#00a084 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=36 ctermbg=NONE guifg=#00a084 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=36 ctermbg=NONE guifg=#00a084 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=36 ctermbg=NONE guifg=#00a084 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Boolean ctermfg=32 ctermbg=NONE guifg=#008beb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#008beb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#008beb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#008beb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#008beb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#008beb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#aa67c8 cterm=NONE,undercurl gui=NONE,undercurl
hi Tag ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=134 ctermbg=NONE guifg=#aa67c8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=204 ctermbg=NONE guifg=#e16177 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=204 ctermbg=NONE guifg=#e16177 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=235 ctermbg=214 guifg=#282835 guibg=#fcbf00 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=235 ctermbg=214 guifg=#282835 guibg=#fcbf00 guisp=NONE cterm=NONE gui=NONE
finish

" Background: light
" Color:      gry0 #fcf1e4 ~
" Color:      gry1 #e4dacc ~
" Color:      gry2 #80818f ~
" Color:      gry3 #616170 ~
" Color:      gry4 #282835 ~
" Color:      red_ #ea5a44 ~
" Color:      orng #d07018 ~
" Color:      yllw #fcbf00 ~
" Color:      gren #4d991b ~
" Color:      aqua #00a084 ~
" Color:      blue #008beb ~
" Color:      prpl #aa67c8 ~
" Color:      pink #e16177 ~
" Bold               none   none   bold
" Conceal            none   none
" DiffChange         none   none
" Directory          none   none   bold
" EndOfBuffer        gry3   none
" FoldColumn         gry3   none
" Ignore             gry3   none
" Italic             gry3   none   italic
" NonText            gry3   none
" Normal             gry3   gry0
" Terminal           gry3   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" Cursor             gry0   gry3
" IncSearch          gry0   gry3
" PmenuSel           gry0   gry3
" StatusLine         gry0   gry3
" StatusLineTerm     gry0   gry3
" TabLineSel         gry0   gry3
" ToolbarButton      gry0   gry3
" TermCursor         gry0   gry2
" TermCursorNC       gry0   gry2
" VertSplit          gry0   gry2
" Visual             gry0   gry2
" ColorColumn        gry3   gry1
" CursorColumn       gry3   gry1
" CursorLine         gry3   gry1
" Folded             gry3   gry1
" Pmenu              gry3   gry1
" QuickFixLine       gry3   gry1
" SignColumn         gry3   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" VisualNOS          gry3   gry1
" WildMenu           gry3   gry1
" PmenuSbar          gry1   gry1
" PmenuThumb         gry2   gry2
" TabLineFill        gry1   gry1
" ToolbarLine        gry2   gry2
" DiffDelete         gry0   red_
" DiffRemoved        red_   none
" Error              red_   none
" ErrorMsg           red_   none
" SpellBad           none   none   undercurl s=red_
" TooLong            red_   none
" WarningMsg         red_   none
" Define             orng   none
" DiffChanged        orng   none
" DiffText           gry0   orng
" Include            orng   none
" Macro              orng   none
" PreCondit          orng   none
" PreProc            orng   none
" Question           orng   none
" SpellCap           none   none   undercurl s=orng
" Conditional        gren   none
" DiffAdd            gry0   gren
" DiffAdded          gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" ModeMsg            gren   none
" MoreMsg            gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" SpellLocal         none   none   undercurl s=aqua
" StorageClass       aqua   none
" Structure          aqua   none
" Type               aqua   none
" Typedef            aqua   none
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              prpl   none
" Delimiter          prpl   none
" Special            prpl   none
" SpecialChar        prpl   none
" SpecialComment     prpl   none
" SpecialKey         prpl   none
" SpellRare          none   none   undercurl s=prpl
" Tag                prpl   none
" Todo               prpl   none
" Function           pink   none
" Identifier         pink   none
" MatchParen  gry4 yllw
" Search      gry4 yllw
" Background: dark
" Color:      gry0 #282835 ~
" Color:      gry1 #3a3b47 ~
" Color:      gry2 #8a8074 ~
" Color:      gry3 #aba194 ~
" Color:      red_ #c87361 ~
" Color:      orng #b87c4e ~
" Color:      yllw #cfaa54 ~
" Color:      gren #6d9353 ~
" Color:      aqua #2b9685 ~
" Color:      blue #5f87b7 ~
" Color:      prpl #9776a4 ~
" Color:      pink #b77c82 ~
" Bold               none   none   bold
" Conceal            none   none
" DiffChange         none   none
" Directory          none   none   bold
" EndOfBuffer        gry3   none
" FoldColumn         gry3   none
" Ignore             gry3   none
" Italic             gry3   none   italic
" NonText            gry3   none
" Normal             gry3   gry0
" Terminal           gry3   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" Cursor             gry0   gry3
" IncSearch          gry0   gry3
" PmenuSel           gry0   gry3
" StatusLine         gry0   gry3
" StatusLineTerm     gry0   gry3
" TabLineSel         gry0   gry3
" ToolbarButton      gry0   gry3
" TermCursor         gry0   gry2
" TermCursorNC       gry0   gry2
" VertSplit          gry0   gry2
" Visual             gry0   gry2
" ColorColumn        gry3   gry1
" CursorColumn       gry3   gry1
" CursorLine         gry3   gry1
" Folded             gry3   gry1
" Pmenu              gry3   gry1
" QuickFixLine       gry3   gry1
" SignColumn         gry3   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" VisualNOS          gry3   gry1
" WildMenu           gry3   gry1
" PmenuSbar          gry1   gry1
" PmenuThumb         gry2   gry2
" TabLineFill        gry1   gry1
" ToolbarLine        gry2   gry2
" DiffDelete         gry0   red_
" DiffRemoved        red_   none
" Error              red_   none
" ErrorMsg           red_   none
" SpellBad           none   none   undercurl s=red_
" TooLong            red_   none
" WarningMsg         red_   none
" Define             orng   none
" DiffChanged        orng   none
" DiffText           gry0   orng
" Include            orng   none
" Macro              orng   none
" PreCondit          orng   none
" PreProc            orng   none
" Question           orng   none
" SpellCap           none   none   undercurl s=orng
" Conditional        gren   none
" DiffAdd            gry0   gren
" DiffAdded          gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" ModeMsg            gren   none
" MoreMsg            gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" SpellLocal         none   none   undercurl s=aqua
" StorageClass       aqua   none
" Structure          aqua   none
" Type               aqua   none
" Typedef            aqua   none
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              prpl   none
" Delimiter          prpl   none
" Special            prpl   none
" SpecialChar        prpl   none
" SpecialComment     prpl   none
" SpecialKey         prpl   none
" SpellRare          none   none   undercurl s=prpl
" Tag                prpl   none
" Todo               prpl   none
" Function           pink   none
" Identifier         pink   none
" MatchParen  gry0 yllw
" Search      gry0 yllw
