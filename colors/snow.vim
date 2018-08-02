" Name:         snow
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[snow] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'snow'

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
  hi Normal ctermfg=110 ctermbg=236 guifg=#a0adc0 guibg=#292e35 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=254 ctermbg=236 guifg=#dfe3ea guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=254 ctermbg=236 guifg=#dfe3ea guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=254 ctermbg=236 guifg=#dfe3ea guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi FoldColumn ctermfg=110 ctermbg=NONE guifg=#a0adc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=110 ctermbg=236 guifg=#a0adc0 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=110 ctermbg=NONE guifg=#a0adc0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=110 ctermbg=236 guifg=#a0adc0 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=110 ctermbg=236 guifg=#a0adc0 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=67 ctermbg=236 guifg=#768294 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=67 ctermbg=236 guifg=#768294 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=110 ctermbg=237 guifg=#a0adc0 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=110 ctermbg=237 guifg=#a0adc0 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=110 ctermbg=237 guifg=#a0adc0 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=110 ctermbg=237 guifg=#a0adc0 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=110 ctermbg=237 guifg=#a0adc0 guibg=#303842 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=110 ctermbg=237 guifg=#a0adc0 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#768294 guibg=#768294 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=110 ctermbg=110 guifg=#a0adc0 guibg=#a0adc0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#303842 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#303842 guibg=#303842 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=67 ctermbg=67 guifg=#768294 guibg=#768294 guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff5f5f cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5fafff cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00afaf cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d787d7 cterm=NONE,underline gui=NONE,undercurl
  hi Function ctermfg=139 ctermbg=NONE guifg=#af8aa8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=139 ctermbg=NONE guifg=#af8aa8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=139 ctermbg=236 guifg=#af8aa8 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=139 ctermbg=236 guifg=#af8aa8 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StorageClass ctermfg=138 ctermbg=NONE guifg=#c0877a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=138 ctermbg=NONE guifg=#c0877a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=138 ctermbg=NONE guifg=#c0877a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=138 ctermbg=NONE guifg=#c0877a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=138 ctermbg=236 guifg=#c0877a guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=138 ctermbg=236 guifg=#c0877a guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=138 ctermbg=236 guifg=#c0877a guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=138 ctermbg=236 guifg=#c0877a guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=137 ctermbg=236 guifg=#a6936c guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=137 ctermbg=236 guifg=#a6936c guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=137 ctermbg=236 guifg=#a6936c guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=108 ctermbg=NONE guifg=#879c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=108 ctermbg=236 guifg=#879c77 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=108 ctermbg=236 guifg=#879c77 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=108 ctermbg=236 guifg=#879c77 guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=73 ctermbg=NONE guifg=#6c9f9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=73 ctermbg=NONE guifg=#6c9f9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=73 ctermbg=NONE guifg=#6c9f9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=73 ctermbg=NONE guifg=#6c9f9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=73 ctermbg=NONE guifg=#6c9f9d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=73 ctermbg=236 guifg=#6c9f9d guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#7c98bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#7c98bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#7c98bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#7c98bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#7c98bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#7c98bf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=67 ctermbg=236 guifg=#7c98bf guibg=#292e35 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
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
hi Normal ctermfg=59 ctermbg=255 guifg=#525d6e guibg=#f2f3f5 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=67 ctermbg=NONE guifg=#768294 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=237 ctermbg=255 guifg=#303842 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=237 ctermbg=255 guifg=#303842 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=237 ctermbg=255 guifg=#303842 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=59 ctermbg=NONE guifg=#525d6e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=59 ctermbg=255 guifg=#525d6e guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=59 ctermbg=NONE guifg=#525d6e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=59 ctermbg=255 guifg=#525d6e guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=59 ctermbg=255 guifg=#525d6e guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=67 ctermbg=255 guifg=#768294 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=67 ctermbg=255 guifg=#768294 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=59 ctermbg=254 guifg=#525d6e guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=59 ctermbg=254 guifg=#525d6e guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=59 ctermbg=254 guifg=#525d6e guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=59 ctermbg=254 guifg=#525d6e guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=59 ctermbg=254 guifg=#525d6e guibg=#dfe3ea guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=59 ctermbg=254 guifg=#525d6e guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#768294 guibg=#768294 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=59 ctermbg=59 guifg=#525d6e guibg=#525d6e guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=254 ctermbg=254 guifg=#dfe3ea guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=254 ctermbg=254 guifg=#dfe3ea guibg=#dfe3ea guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=67 ctermbg=67 guifg=#768294 guibg=#768294 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff0000 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0087ff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#008787 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d700d7 cterm=NONE,underline gui=NONE,undercurl
hi Function ctermfg=133 ctermbg=NONE guifg=#a5579b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=133 ctermbg=NONE guifg=#a5579b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=133 ctermbg=255 guifg=#a5579b guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=133 ctermbg=255 guifg=#a5579b guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StorageClass ctermfg=131 ctermbg=NONE guifg=#b85341 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=131 ctermbg=NONE guifg=#b85341 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=131 ctermbg=NONE guifg=#b85341 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=131 ctermbg=NONE guifg=#b85341 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=131 ctermbg=255 guifg=#b85341 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=131 ctermbg=255 guifg=#b85341 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=131 ctermbg=255 guifg=#b85341 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=131 ctermbg=255 guifg=#b85341 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=94 ctermbg=NONE guifg=#8d6e19 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=255 guifg=#8d6e19 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=255 guifg=#8d6e19 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=178 ctermbg=237 guifg=#e8bc4a guibg=#303842 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=64 ctermbg=NONE guifg=#507f31 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=64 ctermbg=255 guifg=#507f31 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=64 ctermbg=255 guifg=#507f31 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=64 ctermbg=255 guifg=#507f31 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=30 ctermbg=NONE guifg=#008787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#008787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=30 ctermbg=NONE guifg=#008787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#008787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#008787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=30 ctermbg=255 guifg=#008787 guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#2d79bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#2d79bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#2d79bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#2d79bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#2d79bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#2d79bc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=32 ctermbg=255 guifg=#2d79bc guibg=#f2f3f5 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #f2f3f5 ~
" Color:      gry1 #dfe3ea ~
" Color:      gry2 #768294 ~
" Color:      gry3 #525d6e ~
" Color:      gryc #303842 ~
" Color:      srch #e8bc4a ~
" Color:      grys #303842 ~
" Color:      sprd #ff0000 196
" Color:      spbl #0087ff 033
" Color:      spcy #008787 030
" Color:      spmg #d700d7 164
" Color:      red_ #b85341 ~
" Color:      gold #8d6e19 ~
" Color:      gren #507f31 ~
" Color:      cyan #008787 ~
" Color:      blue #2d79bc ~
" Color:      mgnt #a5579b ~
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
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
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
" VertSplit          gry2   gry2
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" Function           mgnt   none
" Identifier         mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" StorageClass       red_   none
" Structure          red_   none
" Type               red_   none
" Typedef            red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" Todo               gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" TabLineSel         gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" MatchParen         cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Visual             blue   gry0   reverse
" Background: dark
" Color:      gry0 #292e35 ~
" Color:      gry1 #303842 ~
" Color:      gry2 #768294 ~
" Color:      gry3 #a0adc0 ~
" Color:      gryc #dfe3ea ~
" Color:      srch #a6936c ~
" Color:      grys #292e35 ~
" Color:      sprd #ff5f5f 203
" Color:      spbl #5fafff 075
" Color:      spcy #00afaf 037
" Color:      spmg #d787d7 139
" Color:      red_ #c0877a ~
" Color:      gold #a6936c ~
" Color:      gren #879c77 ~
" Color:      cyan #6c9f9d ~
" Color:      blue #7c98bf ~
" Color:      mgnt #af8aa8 ~
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
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" TermCursor         gryc   gry0   reverse
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
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
" VertSplit          gry2   gry2
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" Function           mgnt   none
" Identifier         mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" StorageClass       red_   none
" Structure          red_   none
" Type               red_   none
" Typedef            red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" Todo               gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" TabLineSel         gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" MatchParen         cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Visual             blue   gry0   reverse
