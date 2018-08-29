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
  hi Normal ctermfg=250 ctermbg=236 guifg=#b0bbcc guibg=#272e37 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=246 ctermbg=NONE guifg=#8995a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=246 ctermbg=NONE guifg=#8995a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=246 ctermbg=NONE guifg=#8995a8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=250 ctermbg=NONE guifg=#b0bbcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=250 ctermbg=236 guifg=#b0bbcc guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=250 ctermbg=NONE guifg=#b0bbcc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=250 ctermbg=236 guifg=#b0bbcc guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=250 ctermbg=236 guifg=#b0bbcc guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=250 ctermbg=236 guifg=#b0bbcc guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=246 ctermbg=236 guifg=#8995a8 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=255 ctermbg=236 guifg=#e9edf3 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=255 ctermbg=236 guifg=#e9edf3 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=255 ctermbg=240 guifg=#e9edf3 guibg=#4e5a6b guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=250 ctermbg=237 guifg=#b0bbcc guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=250 ctermbg=237 guifg=#b0bbcc guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=250 ctermbg=237 guifg=#b0bbcc guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=250 ctermbg=237 guifg=#b0bbcc guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=250 ctermbg=237 guifg=#b0bbcc guibg=#303945 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=250 ctermbg=237 guifg=#b0bbcc guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=240 ctermbg=240 guifg=#4e5a6b guibg=#4e5a6b guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=250 ctermbg=250 guifg=#b0bbcc guibg=#b0bbcc guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#303945 guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#303945 guibg=#303945 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=240 ctermbg=240 guifg=#4e5a6b guibg=#4e5a6b guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff707e cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00b4ff cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00c8d9 cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ee81f9 cterm=NONE,underline gui=NONE,undercurl
  hi StorageClass ctermfg=176 ctermbg=NONE guifg=#be85c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=176 ctermbg=NONE guifg=#be85c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=176 ctermbg=NONE guifg=#be85c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=176 ctermbg=NONE guifg=#be85c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=176 ctermbg=236 guifg=#be85c3 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=176 ctermbg=236 guifg=#be85c3 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Function ctermfg=174 ctermbg=NONE guifg=#d37b7d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=174 ctermbg=NONE guifg=#d37b7d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=174 ctermbg=236 guifg=#d37b7d guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=174 ctermbg=236 guifg=#d37b7d guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=174 ctermbg=236 guifg=#d37b7d guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=174 ctermbg=236 guifg=#d37b7d guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=179 ctermbg=NONE guifg=#bc9f5e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=179 ctermbg=236 guifg=#bc9f5e guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=236 guifg=#bc9f5e guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=94 ctermbg=255 guifg=#867040 guibg=#e9edf3 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=71 ctermbg=NONE guifg=#6baa70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=71 ctermbg=236 guifg=#6baa70 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=71 ctermbg=236 guifg=#6baa70 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=37 ctermbg=NONE guifg=#03a8b0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=37 ctermbg=NONE guifg=#03a8b0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=37 ctermbg=NONE guifg=#03a8b0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=37 ctermbg=NONE guifg=#03a8b0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=37 ctermbg=NONE guifg=#03a8b0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=37 ctermbg=236 guifg=#03a8b0 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=75 ctermbg=NONE guifg=#649ad8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=75 ctermbg=NONE guifg=#649ad8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=75 ctermbg=NONE guifg=#649ad8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=75 ctermbg=NONE guifg=#649ad8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=75 ctermbg=NONE guifg=#649ad8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=75 ctermbg=NONE guifg=#649ad8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=75 ctermbg=236 guifg=#649ad8 guibg=#272e37 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
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
hi Normal ctermfg=240 ctermbg=231 guifg=#4e5a6b guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=67 ctermbg=NONE guifg=#6a778b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#6a778b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=67 ctermbg=NONE guifg=#6a778b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=240 ctermbg=NONE guifg=#4e5a6b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=240 ctermbg=231 guifg=#4e5a6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=240 ctermbg=NONE guifg=#4e5a6b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=240 ctermbg=231 guifg=#4e5a6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=240 ctermbg=231 guifg=#4e5a6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=240 ctermbg=231 guifg=#4e5a6b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=67 ctermbg=231 guifg=#6a778b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=237 ctermbg=231 guifg=#303945 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=237 ctermbg=231 guifg=#303945 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=237 ctermbg=250 guifg=#303945 guibg=#b0bbcc guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=240 ctermbg=255 guifg=#4e5a6b guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=240 ctermbg=255 guifg=#4e5a6b guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=240 ctermbg=255 guifg=#4e5a6b guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=240 ctermbg=255 guifg=#4e5a6b guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=240 ctermbg=255 guifg=#4e5a6b guibg=#e9edf3 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=240 ctermbg=255 guifg=#4e5a6b guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=250 ctermbg=250 guifg=#b0bbcc guibg=#b0bbcc guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=240 ctermbg=240 guifg=#4e5a6b guibg=#4e5a6b guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=255 guifg=#e9edf3 guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=255 ctermbg=255 guifg=#e9edf3 guibg=#e9edf3 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=250 ctermbg=250 guifg=#b0bbcc guibg=#b0bbcc guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f7003c cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0082ff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0093b3 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#c709dd cterm=NONE,underline gui=NONE,undercurl
hi StorageClass ctermfg=133 ctermbg=NONE guifg=#a54aaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=133 ctermbg=NONE guifg=#a54aaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=133 ctermbg=NONE guifg=#a54aaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=133 ctermbg=NONE guifg=#a54aaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=133 ctermbg=231 guifg=#a54aaf guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=133 ctermbg=231 guifg=#a54aaf guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Function ctermfg=167 ctermbg=NONE guifg=#d14354 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=167 ctermbg=NONE guifg=#d14354 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=167 ctermbg=231 guifg=#d14354 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=167 ctermbg=231 guifg=#d14354 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=167 ctermbg=231 guifg=#d14354 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=167 ctermbg=231 guifg=#d14354 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#967100 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=231 guifg=#967100 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=231 guifg=#967100 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=237 guifg=#ffd506 guibg=#303945 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#00872c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=28 ctermbg=231 guifg=#00872c guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=231 guifg=#00872c guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=30 ctermbg=NONE guifg=#008190 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#008190 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=30 ctermbg=NONE guifg=#008190 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#008190 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#008190 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=30 ctermbg=231 guifg=#008190 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=25 ctermbg=NONE guifg=#006ecd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=25 ctermbg=NONE guifg=#006ecd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=25 ctermbg=NONE guifg=#006ecd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=25 ctermbg=NONE guifg=#006ecd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=25 ctermbg=NONE guifg=#006ecd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=25 ctermbg=NONE guifg=#006ecd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=25 ctermbg=231 guifg=#006ecd guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #ffffff ~
" Color:      gry1 #e9edf3 ~
" Color:      gry2 #6a778b ~
" Color:      gry3 #4e5a6b ~
" Color:      gryc #303945 ~
" Color:      srch #ffd506 ~
" Color:      grys #303945 ~
" Color:      gryp #b0bbcc ~
" Color:      sprd #f7003c ~
" Color:      spbl #0082ff ~
" Color:      spcy #0093b3 ~
" Color:      spmg #c709dd ~
" Color:      red_ #d14354 ~
" Color:      gold #967100 ~
" Color:      gren #00872c ~
" Color:      cyan #008190 ~
" Color:      blue #006ecd ~
" Color:      mgnt #a54aaf ~
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
" VisualNOS          gry2   gry0   reverse
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
" StorageClass       mgnt   none
" Structure          mgnt   none
" Type               mgnt   none
" Typedef            mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           red_   none
" Identifier         red_   none
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
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" Todo               cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Visual             blue   gry0   reverse
" Background: dark
" Color:      gry0 #272e37 ~
" Color:      gry1 #303945 ~
" Color:      gry2 #8995a8 ~
" Color:      gry3 #b0bbcc ~
" Color:      gryc #e9edf3 ~
" Color:      srch #867040 ~
" Color:      grys #e9edf3 ~
" Color:      gryp #4e5a6b ~
" Color:      sprd #ff707e ~
" Color:      spbl #00b4ff ~
" Color:      spcy #00c8d9 ~
" Color:      spmg #ee81f9 ~
" Color:      red_ #d37b7d ~
" Color:      gold #bc9f5e ~
" Color:      gren #6baa70 ~
" Color:      cyan #03a8b0 ~
" Color:      blue #649ad8 ~
" Color:      mgnt #be85c3 ~
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
" VisualNOS          gry2   gry0   reverse
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
" StorageClass       mgnt   none
" Structure          mgnt   none
" Type               mgnt   none
" Typedef            mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           red_   none
" Identifier         red_   none
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
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" Todo               cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Visual             blue   gry0   reverse
