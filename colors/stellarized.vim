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
  " blue: GUI=#85afd9/rgb(133,175,217)  Term=110 #87afd7/rgb(135,175,215)  [delta=0.560421]
  " gren: GUI=#91b487/rgb(145,180,135)  Term=108 #87af87/rgb(135,175,135)  [delta=2.512968]
  " yllw: GUI=#e2bd67/rgb(226,189,103)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=3.812495]
  " gry3: GUI=#c5b39c/rgb(197,179,156)  Term=180 #d7af87/rgb(215,175,135)  [delta=7.683612]
  " gry4: GUI=#feebd3/rgb(254,235,211)  Term=223 #ffd7af/rgb(255,215,175)  [delta=7.950233]
  " red_: GUI=#d69c8e/rgb(214,156,142)  Term=174 #d78787/rgb(215,135,135)  [delta=7.991753]
  " gry2: GUI=#a3937d/rgb(163,147,125)  Term=137 #af875f/rgb(175,135, 95)  [delta=9.161307]
  " gry1: GUI=#35374d/rgb( 53, 55, 77)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=11.585820]
  " gry0: GUI=#2a2c42/rgb( 42, 44, 66)  Term=236 #303030/rgb( 48, 48, 48)  [delta=11.921185]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=180 ctermbg=236 guifg=#c5b39c guibg=#2a2c42 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=137 ctermbg=NONE guifg=#a3937d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=137 ctermbg=NONE guifg=#a3937d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=137 ctermbg=NONE guifg=#a3937d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=180 ctermbg=236 guifg=#c5b39c guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=180 ctermbg=236 guifg=#c5b39c guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=180 ctermbg=236 guifg=#c5b39c guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLine ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=137 ctermbg=236 guifg=#a3937d guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=180 ctermbg=237 guifg=#c5b39c guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=180 ctermbg=237 guifg=#c5b39c guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=180 ctermbg=237 guifg=#c5b39c guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=180 ctermbg=237 guifg=#c5b39c guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=180 ctermbg=237 guifg=#c5b39c guibg=#35374d guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VisualNOS ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=180 ctermbg=237 guifg=#c5b39c guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=137 ctermbg=137 guifg=#a3937d guibg=#a3937d guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=180 ctermbg=180 guifg=#c5b39c guibg=#c5b39c guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=137 ctermbg=137 guifg=#a3937d guibg=#a3937d guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#35374d guibg=#35374d guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=174 ctermbg=NONE guifg=#d69c8e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=174 ctermbg=NONE guifg=#d69c8e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=174 ctermbg=NONE guifg=#d69c8e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=174 ctermbg=NONE guifg=#d69c8e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=174 ctermbg=NONE guifg=#d69c8e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=174 ctermbg=NONE guifg=#d69c8e guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=174 ctermbg=236 guifg=#d69c8e guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=174 ctermbg=236 guifg=#d69c8e guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=174 ctermbg=236 guifg=#d69c8e guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=174 ctermbg=236 guifg=#d69c8e guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=174 ctermbg=236 guifg=#d69c8e guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=174 ctermbg=236 guifg=#d69c8e guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=108 ctermbg=NONE guifg=#91b487 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=108 ctermbg=236 guifg=#91b487 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=108 ctermbg=236 guifg=#91b487 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=110 ctermbg=NONE guifg=#85afd9 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=110 ctermbg=236 guifg=#85afd9 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=110 ctermbg=236 guifg=#85afd9 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=110 ctermbg=236 guifg=#85afd9 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=110 ctermbg=236 guifg=#85afd9 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#2a2c42 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

" Color similarity table (light background)
" gren: GUI=#178614/rgb( 23,134, 20)  Term= 28 #008700/rgb(  0,135,  0)  [delta=1.267366]
" yllw: GUI=#ffd300/rgb(255,211,  0)  Term=220 #ffd700/rgb(255,215,  0)  [delta=1.299534]
" gry0: GUI=#fffce4/rgb(255,252,228)  Term=230 #ffffd7/rgb(255,255,215)  [delta=5.088767]
" red_: GUI=#c84533/rgb(200, 69, 51)  Term=160 #d70000/rgb(215,  0,  0)  [delta=7.140669]
" gry3: GUI=#52536b/rgb( 82, 83,107)  Term= 60 #5f5f87/rgb( 95, 95,135)  [delta=7.218583]
" blue: GUI=#0072d0/rgb(  0,114,208)  Term= 25 #005faf/rgb(  0, 95,175)  [delta=7.440283]
" gry1: GUI=#feebd3/rgb(254,235,211)  Term=223 #ffd7af/rgb(255,215,175)  [delta=7.950233]
" gry2: GUI=#71728b/rgb(113,114,139)  Term= 60 #5f5f87/rgb( 95, 95,135)  [delta=8.560083]
" gry4: GUI=#35374d/rgb( 53, 55, 77)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=11.585820]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=60 ctermbg=230 guifg=#52536b guibg=#fffce4 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=60 ctermbg=NONE guifg=#71728b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=60 ctermbg=NONE guifg=#71728b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=60 ctermbg=NONE guifg=#71728b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=60 ctermbg=230 guifg=#52536b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=60 ctermbg=230 guifg=#52536b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=60 ctermbg=230 guifg=#52536b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=60 ctermbg=230 guifg=#71728b guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=223 guifg=NONE guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=223 guifg=NONE guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=223 guifg=NONE guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=223 guifg=#52536b guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=223 guifg=NONE guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=223 guifg=#52536b guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=223 guifg=#52536b guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=223 guifg=#52536b guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=223 guifg=#52536b guibg=#feebd3 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VisualNOS ctermfg=NONE ctermbg=223 guifg=NONE guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=60 ctermbg=223 guifg=#52536b guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=60 ctermbg=60 guifg=#71728b guibg=#71728b guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#52536b guibg=#52536b guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=60 ctermbg=60 guifg=#71728b guibg=#71728b guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=223 ctermbg=223 guifg=#feebd3 guibg=#feebd3 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=160 ctermbg=NONE guifg=#c84533 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=160 ctermbg=NONE guifg=#c84533 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=160 ctermbg=NONE guifg=#c84533 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=160 ctermbg=NONE guifg=#c84533 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=160 ctermbg=NONE guifg=#c84533 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=160 ctermbg=NONE guifg=#c84533 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=160 ctermbg=230 guifg=#c84533 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=160 ctermbg=230 guifg=#c84533 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=160 ctermbg=230 guifg=#c84533 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=160 ctermbg=230 guifg=#c84533 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=160 ctermbg=230 guifg=#c84533 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=160 ctermbg=230 guifg=#c84533 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Include ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Macro ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreCondit ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreProc ctermfg=28 ctermbg=NONE guifg=#178614 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=28 ctermbg=230 guifg=#178614 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=230 guifg=#178614 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=25 ctermbg=NONE guifg=#0072d0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=25 ctermbg=230 guifg=#0072d0 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=25 ctermbg=230 guifg=#0072d0 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=25 ctermbg=230 guifg=#0072d0 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=25 ctermbg=230 guifg=#0072d0 guibg=#fffce4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#35374d guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#35374d guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#35374d guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=237 guifg=#ffd300 guibg=#35374d guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fffce4 ~
" Color:      gry1 #feebd3 ~
" Color:      gry2 #71728b ~
" Color:      gry3 #52536b ~
" Color:      gry4 #35374d ~
" Color:      yllw #ffd300 ~
" Color:      red_ #c84533 ~
" Color:      gren #178614 ~
" Color:      blue #0072d0 ~
" Bold               none   none   bold
" Conceal            none   none
" DiffChange         none   none
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
" Cursor             gry3   gry0   reverse
" IncSearch          gry3   gry0   reverse
" TermCursor         gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" StatusLine         gry2   gry0   reverse
" StatusLineTerm     gry2   gry0   reverse
" TabLineSel         gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          none   gry1
" WildMenu           gry3   gry1
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
" DiffChanged yllw gry4 reverse
" DiffText    yllw gry4 reverse
" MatchParen  yllw gry4 reverse
" Search      yllw gry4 reverse
" Background: dark
" Color:      gry0 #2a2c42 ~
" Color:      gry1 #35374d ~
" Color:      gry2 #a3937d ~
" Color:      gry3 #c5b39c ~
" Color:      gry4 #feebd3 ~
" Color:      yllw #e2bd67 ~
" Color:      red_ #d69c8e ~
" Color:      gren #91b487 ~
" Color:      blue #85afd9 ~
" Bold               none   none   bold
" Conceal            none   none
" DiffChange         none   none
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
" Cursor             gry3   gry0   reverse
" IncSearch          gry3   gry0   reverse
" TermCursor         gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" StatusLine         gry2   gry0   reverse
" StatusLineTerm     gry2   gry0   reverse
" TabLineSel         gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          none   gry1
" WildMenu           gry3   gry1
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
" DiffChanged yllw gry0 reverse
" DiffText    yllw gry0 reverse
" MatchParen  yllw gry0 reverse
" Search      yllw gry0 reverse
