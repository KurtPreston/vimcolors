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
  " blue: GUI=#6e93b6/rgb(110,147,182)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=4.574952]
  " red_: GUI=#b58476/rgb(181,132,118)  Term=138 #af8787/rgb(175,135,135)  [delta=6.229881]
  " gren: GUI=#799871/rgb(121,152,113)  Term= 65 #5f875f/rgb( 95,135, 95)  [delta=6.989573]
  " yllw: GUI=#dac264/rgb(218,194,100)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=7.046126]
  " gry3: GUI=#b7ac9e/rgb(183,172,158)  Term=145 #afafaf/rgb(175,175,175)  [delta=7.442040]
  " gry4: GUI=#f1e5d6/rgb(241,229,214)  Term=254 #e4e4e4/rgb(228,228,228)  [delta=7.565231]
  " gry2: GUI=#988e80/rgb(152,142,128)  Term=246 #949494/rgb(148,148,148)  [delta=7.649939]
  " gry1: GUI=#353644/rgb( 53, 54, 68)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=8.211308]
  " gry0: GUI=#282836/rgb( 40, 40, 54)  Term=235 #262626/rgb( 38, 38, 38)  [delta=8.645787]
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
  hi Normal ctermfg=145 ctermbg=235 guifg=#b7ac9e guibg=#282836 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=246 ctermbg=NONE guifg=#988e80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=246 ctermbg=NONE guifg=#988e80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=246 ctermbg=NONE guifg=#988e80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=145 ctermbg=235 guifg=#b7ac9e guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=145 ctermbg=235 guifg=#b7ac9e guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=145 ctermbg=235 guifg=#b7ac9e guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLine ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=246 ctermbg=235 guifg=#988e80 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=145 ctermbg=237 guifg=#b7ac9e guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=145 ctermbg=237 guifg=#b7ac9e guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=145 ctermbg=237 guifg=#b7ac9e guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=145 ctermbg=237 guifg=#b7ac9e guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=145 ctermbg=237 guifg=#b7ac9e guibg=#353644 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VisualNOS ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=145 ctermbg=237 guifg=#b7ac9e guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=246 ctermbg=246 guifg=#988e80 guibg=#988e80 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=145 ctermbg=145 guifg=#b7ac9e guibg=#b7ac9e guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=246 ctermbg=246 guifg=#988e80 guibg=#988e80 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#353644 guibg=#353644 guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=138 ctermbg=NONE guifg=#b58476 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=138 ctermbg=NONE guifg=#b58476 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=138 ctermbg=NONE guifg=#b58476 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=138 ctermbg=NONE guifg=#b58476 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=138 ctermbg=NONE guifg=#b58476 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=138 ctermbg=NONE guifg=#b58476 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=138 ctermbg=235 guifg=#b58476 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=138 ctermbg=235 guifg=#b58476 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=138 ctermbg=235 guifg=#b58476 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=138 ctermbg=235 guifg=#b58476 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=138 ctermbg=235 guifg=#b58476 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=138 ctermbg=235 guifg=#b58476 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=65 ctermbg=NONE guifg=#799871 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=65 ctermbg=235 guifg=#799871 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=65 ctermbg=235 guifg=#799871 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=67 ctermbg=NONE guifg=#6e93b6 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=67 ctermbg=235 guifg=#6e93b6 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=67 ctermbg=235 guifg=#6e93b6 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=67 ctermbg=235 guifg=#6e93b6 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=67 ctermbg=235 guifg=#6e93b6 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=235 guifg=#dac264 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=235 guifg=#dac264 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=235 guifg=#dac264 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=235 guifg=#dac264 guibg=#282836 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

" Color similarity table (light background)
" yllw: GUI=#fcd900/rgb(252,217,  0)  Term=220 #ffd700/rgb(255,215,  0)  [delta=1.257616]
" gren: GUI=#26861f/rgb( 38,134, 31)  Term= 28 #008700/rgb(  0,135,  0)  [delta=2.380294]
" gry0: GUI=#fffdee/rgb(255,253,238)  Term=231 #ffffff/rgb(255,255,255)  [delta=6.750640]
" blue: GUI=#0077d1/rgb(  0,119,209)  Term= 32 #0087d7/rgb(  0,135,215)  [delta=7.073562]
" gry1: GUI=#f1e5d6/rgb(241,229,214)  Term=254 #e4e4e4/rgb(228,228,228)  [delta=7.565231]
" gry2: GUI=#737484/rgb(115,116,132)  Term=243 #767676/rgb(118,118,118)  [delta=8.167472]
" gry3: GUI=#5b5b6a/rgb( 91, 91,106)  Term= 59 #5f5f5f/rgb( 95, 95, 95)  [delta=8.178838]
" gry4: GUI=#353644/rgb( 53, 54, 68)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=8.211308]
" red_: GUI=#c54e36/rgb(197, 78, 54)  Term=160 #d70000/rgb(215,  0,  0)  [delta=8.299394]
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
hi Normal ctermfg=59 ctermbg=231 guifg=#5b5b6a guibg=#fffdee guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=243 ctermbg=NONE guifg=#737484 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=243 ctermbg=NONE guifg=#737484 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=243 ctermbg=NONE guifg=#737484 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=59 ctermbg=231 guifg=#5b5b6a guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=59 ctermbg=231 guifg=#5b5b6a guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=59 ctermbg=231 guifg=#5b5b6a guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=243 ctermbg=231 guifg=#737484 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=59 ctermbg=254 guifg=#5b5b6a guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=59 ctermbg=254 guifg=#5b5b6a guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=59 ctermbg=254 guifg=#5b5b6a guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=59 ctermbg=254 guifg=#5b5b6a guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=59 ctermbg=254 guifg=#5b5b6a guibg=#f1e5d6 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VisualNOS ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=59 ctermbg=254 guifg=#5b5b6a guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=243 ctermbg=243 guifg=#737484 guibg=#737484 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=59 ctermbg=59 guifg=#5b5b6a guibg=#5b5b6a guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=243 ctermbg=243 guifg=#737484 guibg=#737484 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=254 ctermbg=254 guifg=#f1e5d6 guibg=#f1e5d6 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=160 ctermbg=NONE guifg=#c54e36 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=160 ctermbg=NONE guifg=#c54e36 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=160 ctermbg=NONE guifg=#c54e36 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=160 ctermbg=NONE guifg=#c54e36 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=160 ctermbg=NONE guifg=#c54e36 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=160 ctermbg=NONE guifg=#c54e36 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=160 ctermbg=231 guifg=#c54e36 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=160 ctermbg=231 guifg=#c54e36 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=160 ctermbg=231 guifg=#c54e36 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=160 ctermbg=231 guifg=#c54e36 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=160 ctermbg=231 guifg=#c54e36 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=160 ctermbg=231 guifg=#c54e36 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
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
hi DiffAdd ctermfg=28 ctermbg=231 guifg=#26861f guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=231 guifg=#26861f guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=32 ctermbg=NONE guifg=#0077d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=32 ctermbg=231 guifg=#0077d1 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=32 ctermbg=231 guifg=#0077d1 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=32 ctermbg=231 guifg=#0077d1 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=32 ctermbg=231 guifg=#0077d1 guibg=#fffdee guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=220 ctermbg=237 guifg=#fcd900 guibg=#353644 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=220 ctermbg=237 guifg=#fcd900 guibg=#353644 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=220 ctermbg=237 guifg=#fcd900 guibg=#353644 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=237 guifg=#fcd900 guibg=#353644 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fffdee ~
" Color:      gry1 #f1e5d6 ~
" Color:      gry2 #737484 ~
" Color:      gry3 #5b5b6a ~
" Color:      gry4 #353644 ~
" Color:      yllw #fcd900 ~
" Color:      red_ #c54e36 ~
" Color:      gren #26861f ~
" Color:      blue #0077d1 ~
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
" Color:      gry0 #282836 ~
" Color:      gry1 #353644 ~
" Color:      gry2 #988e80 ~
" Color:      gry3 #b7ac9e ~
" Color:      gry4 #f1e5d6 ~
" Color:      yllw #dac264 ~
" Color:      red_ #b58476 ~
" Color:      gren #799871 ~
" Color:      blue #6e93b6 ~
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
