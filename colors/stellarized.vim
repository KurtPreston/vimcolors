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
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=180 ctermbg=236 guifg=#bca997 guibg=#2b2d36 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=137 ctermbg=NONE guifg=#907e6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=137 ctermbg=NONE guifg=#907e6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=137 ctermbg=NONE guifg=#907e6d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=180 ctermbg=NONE guifg=#bca997 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=180 ctermbg=236 guifg=#bca997 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=180 ctermbg=NONE guifg=#bca997 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=180 ctermbg=236 guifg=#bca997 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=180 ctermbg=236 guifg=#bca997 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=180 ctermbg=236 guifg=#bca997 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=137 ctermbg=236 guifg=#907e6d guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=60 ctermbg=236 guifg=#575c71 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=254 ctermbg=236 guifg=#efe1d4 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=254 ctermbg=236 guifg=#efe1d4 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=254 ctermbg=60 guifg=#efe1d4 guibg=#575c71 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=180 ctermbg=237 guifg=#bca997 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=180 ctermbg=237 guifg=#bca997 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=180 ctermbg=237 guifg=#bca997 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=180 ctermbg=237 guifg=#bca997 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=180 ctermbg=237 guifg=#bca997 guibg=#343745 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=180 ctermbg=237 guifg=#bca997 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=60 ctermbg=60 guifg=#575c71 guibg=#575c71 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=180 ctermbg=180 guifg=#bca997 guibg=#bca997 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#343745 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#343745 guibg=#343745 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=60 ctermbg=60 guifg=#575c71 guibg=#575c71 guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff5f5f cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5fafff cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00afaf cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d787d7 cterm=NONE,underline gui=NONE,undercurl
  hi Function ctermfg=139 ctermbg=NONE guifg=#b980be guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=139 ctermbg=NONE guifg=#b980be guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=139 ctermbg=236 guifg=#b980be guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=139 ctermbg=236 guifg=#b980be guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StorageClass ctermfg=174 ctermbg=NONE guifg=#d37b7d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=174 ctermbg=NONE guifg=#d37b7d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=174 ctermbg=NONE guifg=#d37b7d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=174 ctermbg=NONE guifg=#d37b7d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=174 ctermbg=236 guifg=#d37b7d guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=174 ctermbg=236 guifg=#d37b7d guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=136 ctermbg=NONE guifg=#ad9151 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=136 ctermbg=236 guifg=#ad9151 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=136 ctermbg=236 guifg=#ad9151 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=94 ctermbg=254 guifg=#867040 guibg=#efe1d4 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=71 ctermbg=NONE guifg=#63a269 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=71 ctermbg=236 guifg=#63a269 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=71 ctermbg=236 guifg=#63a269 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=37 ctermbg=NONE guifg=#00a4ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=37 ctermbg=NONE guifg=#00a4ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=37 ctermbg=NONE guifg=#00a4ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=37 ctermbg=NONE guifg=#00a4ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=37 ctermbg=NONE guifg=#00a4ab guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=37 ctermbg=236 guifg=#00a4ab guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=37 ctermbg=236 guifg=#00a4ab guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=75 ctermbg=NONE guifg=#6198d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=75 ctermbg=NONE guifg=#6198d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=75 ctermbg=NONE guifg=#6198d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=75 ctermbg=NONE guifg=#6198d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=75 ctermbg=NONE guifg=#6198d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=75 ctermbg=NONE guifg=#6198d6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=75 ctermbg=236 guifg=#6198d6 guibg=#2b2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=60 ctermbg=255 guifg=#575c71 guibg=#fdf2e9 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=103 ctermbg=NONE guifg=#7b8197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=103 ctermbg=NONE guifg=#7b8197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=103 ctermbg=NONE guifg=#7b8197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=60 ctermbg=NONE guifg=#575c71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=60 ctermbg=255 guifg=#575c71 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=60 ctermbg=NONE guifg=#575c71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=60 ctermbg=255 guifg=#575c71 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=255 guifg=#575c71 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=255 guifg=#575c71 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=103 ctermbg=255 guifg=#7b8197 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=180 ctermbg=255 guifg=#bca997 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=237 ctermbg=255 guifg=#343745 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=237 ctermbg=255 guifg=#343745 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=237 ctermbg=180 guifg=#343745 guibg=#bca997 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=254 guifg=#575c71 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=254 guifg=#575c71 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=254 guifg=#575c71 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=254 guifg=#575c71 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=254 guifg=#575c71 guibg=#efe1d4 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=60 ctermbg=254 guifg=#575c71 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=180 ctermbg=180 guifg=#bca997 guibg=#bca997 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#575c71 guibg=#575c71 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=254 ctermbg=254 guifg=#efe1d4 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=254 ctermbg=254 guifg=#efe1d4 guibg=#efe1d4 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=180 ctermbg=180 guifg=#bca997 guibg=#bca997 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff0000 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0087ff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#008787 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d700d7 cterm=NONE,underline gui=NONE,undercurl
hi Function ctermfg=133 ctermbg=NONE guifg=#a64ab0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=133 ctermbg=NONE guifg=#a64ab0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=133 ctermbg=255 guifg=#a64ab0 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=133 ctermbg=255 guifg=#a64ab0 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StorageClass ctermfg=161 ctermbg=NONE guifg=#c93c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=161 ctermbg=NONE guifg=#c93c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=161 ctermbg=NONE guifg=#c93c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=161 ctermbg=NONE guifg=#c93c4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=161 ctermbg=255 guifg=#c93c4e guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=161 ctermbg=255 guifg=#c93c4e guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#8e6a00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=255 guifg=#8e6a00 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=255 guifg=#8e6a00 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=178 ctermbg=237 guifg=#e8bc4a guibg=#343745 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#008228 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=28 ctermbg=255 guifg=#008228 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=255 guifg=#008228 guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=30 ctermbg=NONE guifg=#007b8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#007b8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=30 ctermbg=NONE guifg=#007b8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#007b8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#007b8b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=30 ctermbg=255 guifg=#007b8b guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=30 ctermbg=255 guifg=#007b8b guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=25 ctermbg=NONE guifg=#0070cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=25 ctermbg=NONE guifg=#0070cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=25 ctermbg=NONE guifg=#0070cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=25 ctermbg=NONE guifg=#0070cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=25 ctermbg=NONE guifg=#0070cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=25 ctermbg=NONE guifg=#0070cf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=25 ctermbg=255 guifg=#0070cf guibg=#fdf2e9 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fdf2e9 ~
" Color:      gry1 #efe1d4 ~
" Color:      gry2 #7b8197 ~
" Color:      gry3 #575c71 ~
" Color:      gryc #343745 ~
" Color:      srch #e8bc4a ~
" Color:      grys #343745 ~
" Color:      gryp #bca997 ~
" Color:      sprd #ff0000 ~
" Color:      spbl #0087ff ~
" Color:      spcy #008787 ~
" Color:      spmg #d700d7 ~
" Color:      red_ #c93c4e ~
" Color:      gold #8e6a00 ~
" Color:      gren #008228 ~
" Color:      cyan #007b8b ~
" Color:      blue #0070cf ~
" Color:      mgnt #a64ab0 ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" Question           none   none
" NonText            none   none
" Normal             gry3   gry0
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gryp   gry0   reverse
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" MatchParen         gryc   gryp
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" Function           mgnt   none
" Identifier         mgnt   none
" Error              mgnt   gry0   reverse
" ErrorMsg           mgnt   gry0   reverse
" StorageClass       red_   none
" Structure          red_   none
" Type               red_   none
" Typedef            red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   gryc   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" TooLong            cyan   gry0   reverse
" WarningMsg         cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Todo               blue   gry0   reverse
" Background: dark
" Color:      gry0 #2b2d36 ~
" Color:      gry1 #343745 ~
" Color:      gry2 #907e6d ~
" Color:      gry3 #bca997 ~
" Color:      gryc #efe1d4 ~
" Color:      srch #867040 ~
" Color:      grys #efe1d4 ~
" Color:      gryp #575c71 ~
" Color:      sprd #ff5f5f ~
" Color:      spbl #5fafff ~
" Color:      spcy #00afaf ~
" Color:      spmg #d787d7 ~
" Color:      red_ #d37b7d ~
" Color:      gold #ad9151 ~
" Color:      gren #63a269 ~
" Color:      cyan #00a4ab ~
" Color:      blue #6198d6 ~
" Color:      mgnt #b980be ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" Question           none   none
" NonText            none   none
" Normal             gry3   gry0
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gryp   gry0   reverse
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" MatchParen         gryc   gryp
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" Function           mgnt   none
" Identifier         mgnt   none
" Error              mgnt   gry0   reverse
" ErrorMsg           mgnt   gry0   reverse
" StorageClass       red_   none
" Structure          red_   none
" Type               red_   none
" Typedef            red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   gryc   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" TooLong            cyan   gry0   reverse
" WarningMsg         cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Todo               blue   gry0   reverse
