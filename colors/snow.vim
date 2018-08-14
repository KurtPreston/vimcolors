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
  hi Normal ctermfg=146 ctermbg=236 guifg=#a2acc3 guibg=#2a2d36 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=67 ctermbg=NONE guifg=#778197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#778197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=67 ctermbg=NONE guifg=#778197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=146 ctermbg=NONE guifg=#a2acc3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=146 ctermbg=236 guifg=#a2acc3 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=146 ctermbg=NONE guifg=#a2acc3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=146 ctermbg=236 guifg=#a2acc3 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=146 ctermbg=236 guifg=#a2acc3 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=146 ctermbg=236 guifg=#a2acc3 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=67 ctermbg=236 guifg=#778197 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=254 ctermbg=236 guifg=#dfe2eb guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=254 ctermbg=236 guifg=#dfe2eb guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=254 ctermbg=60 guifg=#dfe2eb guibg=#535c71 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=146 ctermbg=237 guifg=#a2acc3 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=146 ctermbg=237 guifg=#a2acc3 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=146 ctermbg=237 guifg=#a2acc3 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=146 ctermbg=237 guifg=#a2acc3 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=146 ctermbg=237 guifg=#a2acc3 guibg=#323845 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=146 ctermbg=237 guifg=#a2acc3 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=60 ctermbg=60 guifg=#535c71 guibg=#535c71 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=146 ctermbg=146 guifg=#a2acc3 guibg=#a2acc3 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#323845 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#323845 guibg=#323845 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=60 ctermbg=60 guifg=#535c71 guibg=#535c71 guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f16862 cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#3b99ff cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00aecb cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#db6cce cterm=NONE,underline gui=NONE,undercurl
  hi Function ctermfg=139 ctermbg=NONE guifg=#c27fb8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=139 ctermbg=NONE guifg=#c27fb8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=139 ctermbg=236 guifg=#c27fb8 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=139 ctermbg=236 guifg=#c27fb8 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StorageClass ctermfg=174 ctermbg=NONE guifg=#d27d75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=174 ctermbg=NONE guifg=#d27d75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=174 ctermbg=NONE guifg=#d27d75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=174 ctermbg=NONE guifg=#d27d75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=174 ctermbg=236 guifg=#d27d75 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=174 ctermbg=236 guifg=#d27d75 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=174 ctermbg=236 guifg=#d27d75 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=174 ctermbg=236 guifg=#d27d75 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=143 ctermbg=NONE guifg=#a69450 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=143 ctermbg=236 guifg=#a69450 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=143 ctermbg=236 guifg=#a69450 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=100 ctermbg=254 guifg=#847217 guibg=#dfe2eb guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=72 ctermbg=NONE guifg=#5aa572 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=72 ctermbg=236 guifg=#5aa572 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=72 ctermbg=236 guifg=#5aa572 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=37 ctermbg=NONE guifg=#00a6b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=37 ctermbg=NONE guifg=#00a6b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=37 ctermbg=NONE guifg=#00a6b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=37 ctermbg=NONE guifg=#00a6b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=37 ctermbg=NONE guifg=#00a6b6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=37 ctermbg=236 guifg=#00a6b6 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=68 ctermbg=NONE guifg=#7197d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=68 ctermbg=NONE guifg=#7197d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=68 ctermbg=NONE guifg=#7197d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=68 ctermbg=NONE guifg=#7197d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=68 ctermbg=NONE guifg=#7197d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=68 ctermbg=NONE guifg=#7197d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=68 ctermbg=236 guifg=#7197d9 guibg=#2a2d36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
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
hi Normal ctermfg=60 ctermbg=255 guifg=#535c71 guibg=#f2f3f6 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=67 ctermbg=NONE guifg=#778197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=67 ctermbg=NONE guifg=#778197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=67 ctermbg=NONE guifg=#778197 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=60 ctermbg=NONE guifg=#535c71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=60 ctermbg=255 guifg=#535c71 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=60 ctermbg=NONE guifg=#535c71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=60 ctermbg=255 guifg=#535c71 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=255 guifg=#535c71 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=255 guifg=#535c71 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=67 ctermbg=255 guifg=#778197 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=237 ctermbg=255 guifg=#323845 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=237 ctermbg=255 guifg=#323845 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=237 ctermbg=146 guifg=#323845 guibg=#a2acc3 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=254 guifg=#535c71 guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=254 guifg=#535c71 guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=254 guifg=#535c71 guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=254 guifg=#535c71 guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=254 guifg=#535c71 guibg=#dfe2eb guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=60 ctermbg=254 guifg=#535c71 guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=146 ctermbg=146 guifg=#a2acc3 guibg=#a2acc3 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#535c71 guibg=#535c71 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=254 ctermbg=254 guifg=#dfe2eb guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=254 ctermbg=254 guifg=#dfe2eb guibg=#dfe2eb guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=146 ctermbg=146 guifg=#a2acc3 guibg=#a2acc3 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#f20028 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#007cff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0093c7 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d800cb cterm=NONE,underline gui=NONE,undercurl
hi Function ctermfg=133 ctermbg=NONE guifg=#b043a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=133 ctermbg=NONE guifg=#b043a5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=133 ctermbg=255 guifg=#b043a5 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=133 ctermbg=255 guifg=#b043a5 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StorageClass ctermfg=131 ctermbg=NONE guifg=#c54040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=131 ctermbg=NONE guifg=#c54040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=131 ctermbg=NONE guifg=#c54040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=131 ctermbg=NONE guifg=#c54040 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=131 ctermbg=255 guifg=#c54040 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=131 ctermbg=255 guifg=#c54040 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=131 ctermbg=255 guifg=#c54040 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=131 ctermbg=255 guifg=#c54040 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#816e00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=255 guifg=#816e00 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=255 guifg=#816e00 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=220 ctermbg=237 guifg=#fedc00 guibg=#323845 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#008134 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=28 ctermbg=255 guifg=#008134 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=255 guifg=#008134 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=31 ctermbg=NONE guifg=#007996 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=31 ctermbg=NONE guifg=#007996 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=31 ctermbg=NONE guifg=#007996 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=31 ctermbg=NONE guifg=#007996 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=31 ctermbg=NONE guifg=#007996 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=31 ctermbg=255 guifg=#007996 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=26 ctermbg=NONE guifg=#006ed3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=26 ctermbg=NONE guifg=#006ed3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=26 ctermbg=NONE guifg=#006ed3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=26 ctermbg=NONE guifg=#006ed3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=26 ctermbg=NONE guifg=#006ed3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=26 ctermbg=NONE guifg=#006ed3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=26 ctermbg=255 guifg=#006ed3 guibg=#f2f3f6 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #f2f3f6 ~
" Color:      gry1 #dfe2eb ~
" Color:      gry2 #778197 ~
" Color:      gry3 #535c71 ~
" Color:      gryc #323845 ~
" Color:      srch #fedc00 ~
" Color:      grys #323845 ~
" Color:      gryp #a2acc3 ~
" Color:      sprd #f20028 ~
" Color:      spbl #007cff ~
" Color:      spcy #0093c7 ~
" Color:      spmg #d800cb ~
" Color:      red_ #c54040 ~
" Color:      gold #816e00 ~
" Color:      gren #008134 ~
" Color:      cyan #007996 ~
" Color:      blue #006ed3 ~
" Color:      mgnt #b043a5 ~
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
" Color:      gry0 #2a2d36 ~
" Color:      gry1 #323845 ~
" Color:      gry2 #778197 ~
" Color:      gry3 #a2acc3 ~
" Color:      gryc #dfe2eb ~
" Color:      srch #847217 ~
" Color:      grys #dfe2eb ~
" Color:      gryp #535c71 ~
" Color:      sprd #f16862 ~
" Color:      spbl #3b99ff ~
" Color:      spcy #00aecb ~
" Color:      spmg #db6cce ~
" Color:      red_ #d27d75 ~
" Color:      gold #a69450 ~
" Color:      gren #5aa572 ~
" Color:      cyan #00a6b6 ~
" Color:      blue #7197d9 ~
" Color:      mgnt #c27fb8 ~
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
