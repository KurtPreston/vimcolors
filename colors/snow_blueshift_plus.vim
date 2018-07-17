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
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=67 ctermbg=236 guifg=#8397ad guibg=#242e3a guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=67 ctermbg=NONE guifg=#64788d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#64788d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=67 ctermbg=NONE guifg=#64788d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=67 ctermbg=NONE guifg=#64788d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=67 ctermbg=NONE guifg=#64788d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=110 ctermbg=236 guifg=#99aec5 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=110 ctermbg=236 guifg=#99aec5 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=110 ctermbg=236 guifg=#99aec5 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=67 ctermbg=236 guifg=#8397ad guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=67 ctermbg=236 guifg=#8397ad guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WildMenu ctermfg=67 ctermbg=236 guifg=#8397ad guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTermNC ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=67 ctermbg=236 guifg=#64788d guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=67 ctermbg=237 guifg=#8397ad guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=67 ctermbg=237 guifg=#8397ad guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=67 ctermbg=237 guifg=#8397ad guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=67 ctermbg=237 guifg=#8397ad guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=67 ctermbg=237 guifg=#8397ad guibg=#283745 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#64788d guibg=#64788d guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=67 ctermbg=67 guifg=#8397ad guibg=#8397ad guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#283745 guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#283745 guibg=#283745 guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=137 ctermbg=NONE guifg=#b98a67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=137 ctermbg=NONE guifg=#b98a67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=137 ctermbg=NONE guifg=#b98a67 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=137 ctermbg=NONE guifg=#b98a67 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=137 ctermbg=NONE guifg=#b98a67 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=137 ctermbg=NONE guifg=#b98a67 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=137 ctermbg=236 guifg=#b98a67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=137 ctermbg=236 guifg=#b98a67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=137 ctermbg=236 guifg=#b98a67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=137 ctermbg=236 guifg=#b98a67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=137 ctermbg=236 guifg=#b98a67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=137 ctermbg=236 guifg=#b98a67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=37 ctermbg=NONE guifg=#4ca292 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=37 ctermbg=236 guifg=#4ca292 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=37 ctermbg=236 guifg=#4ca292 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=103 ctermbg=NONE guifg=#9c8bc1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=103 ctermbg=236 guifg=#9c8bc1 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=103 ctermbg=236 guifg=#9c8bc1 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=103 ctermbg=236 guifg=#9c8bc1 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=103 ctermbg=236 guifg=#9c8bc1 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=236 guifg=#e2bd67 guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
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
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=67 ctermbg=231 guifg=#64788d guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=67 ctermbg=NONE guifg=#8397ad guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#8397ad guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=67 ctermbg=NONE guifg=#8397ad guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=67 ctermbg=NONE guifg=#8397ad guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=67 ctermbg=NONE guifg=#8397ad guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=24 ctermbg=231 guifg=#51657a guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=24 ctermbg=231 guifg=#51657a guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=24 ctermbg=231 guifg=#51657a guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=67 ctermbg=231 guifg=#64788d guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=67 ctermbg=231 guifg=#64788d guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WildMenu ctermfg=67 ctermbg=231 guifg=#64788d guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTermNC ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=67 ctermbg=231 guifg=#8397ad guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=255 guifg=NONE guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=67 ctermbg=255 guifg=#64788d guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=67 ctermbg=255 guifg=#64788d guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=67 ctermbg=255 guifg=#64788d guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=67 ctermbg=255 guifg=#64788d guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=67 ctermbg=255 guifg=#64788d guibg=#edf1f5 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuSbar ctermfg=67 ctermbg=67 guifg=#8397ad guibg=#8397ad guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=67 ctermbg=67 guifg=#64788d guibg=#64788d guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=255 guifg=#edf1f5 guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=255 ctermbg=255 guifg=#edf1f5 guibg=#edf1f5 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=130 ctermbg=NONE guifg=#b46115 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=130 ctermbg=NONE guifg=#b46115 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=130 ctermbg=NONE guifg=#b46115 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=130 ctermbg=NONE guifg=#b46115 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=130 ctermbg=NONE guifg=#b46115 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=130 ctermbg=NONE guifg=#b46115 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=130 ctermbg=231 guifg=#b46115 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=130 ctermbg=231 guifg=#b46115 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=130 ctermbg=231 guifg=#b46115 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=130 ctermbg=231 guifg=#b46115 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=130 ctermbg=231 guifg=#b46115 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=130 ctermbg=231 guifg=#b46115 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Include ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Macro ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreCondit ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreProc ctermfg=29 ctermbg=NONE guifg=#00866d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=29 ctermbg=231 guifg=#00866d guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=29 ctermbg=231 guifg=#00866d guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=98 ctermbg=NONE guifg=#8064d1 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=98 ctermbg=231 guifg=#8064d1 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=98 ctermbg=231 guifg=#8064d1 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=98 ctermbg=231 guifg=#8064d1 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=98 ctermbg=231 guifg=#8064d1 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=220 ctermbg=236 guifg=#ffd63a guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=220 ctermbg=236 guifg=#ffd63a guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=220 ctermbg=236 guifg=#ffd63a guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=236 guifg=#ffd63a guibg=#242e3a guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #ffffff ~
" Color:      gry1 #edf1f5 ~
" Color:      gry2 #8397ad ~
" Color:      gry3 #64788d ~
" Color:      gryc #51657a ~
" Color:      gryy #242e3a ~
" Color:      yllw #ffd63a ~
" Color:      red_ #b46115 ~
" Color:      gren #00866d ~
" Color:      blue #8064d1 ~
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
" TabLineSel         gry3   gry0   reverse
" WildMenu           gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" StatusLineNC       gry2   gry0   reverse
" StatusLineTermNC   gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
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
" Color:      gry0 #242e3a ~
" Color:      gry1 #283745 ~
" Color:      gry2 #64788d ~
" Color:      gry3 #8397ad ~
" Color:      gryc #99aec5 ~
" Color:      gryy #242e3a ~
" Color:      yllw #e2bd67 ~
" Color:      red_ #b98a67 ~
" Color:      gren #4ca292 ~
" Color:      blue #9c8bc1 ~
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
" TabLineSel         gry3   gry0   reverse
" WildMenu           gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" StatusLineNC       gry2   gry0   reverse
" StatusLineTermNC   gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLine         gry3   gry1
" StatusLineTerm     gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
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
