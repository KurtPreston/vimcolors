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
  hi Normal ctermfg=145 ctermbg=236 guifg=#baa999 guibg=#282d3e guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=244 ctermbg=NONE guifg=#8f7f70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=244 ctermbg=NONE guifg=#8f7f70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=244 ctermbg=NONE guifg=#8f7f70 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=145 ctermbg=NONE guifg=#baa999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=145 ctermbg=236 guifg=#baa999 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=145 ctermbg=NONE guifg=#baa999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=145 ctermbg=236 guifg=#baa999 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=145 ctermbg=236 guifg=#baa999 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=145 ctermbg=236 guifg=#baa999 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=244 ctermbg=236 guifg=#8f7f70 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=60 ctermbg=236 guifg=#585c6f guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=223 ctermbg=236 guifg=#f4e1d1 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=223 ctermbg=236 guifg=#f4e1d1 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=223 ctermbg=60 guifg=#f4e1d1 guibg=#585c6f guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=145 ctermbg=237 guifg=#baa999 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=145 ctermbg=237 guifg=#baa999 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=145 ctermbg=237 guifg=#baa999 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=145 ctermbg=237 guifg=#baa999 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=145 ctermbg=237 guifg=#baa999 guibg=#323748 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=145 ctermbg=237 guifg=#baa999 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=60 ctermbg=60 guifg=#585c6f guibg=#585c6f guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=145 ctermbg=145 guifg=#baa999 guibg=#baa999 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#323748 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#323748 guibg=#323748 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=60 ctermbg=60 guifg=#585c6f guibg=#585c6f guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff5f5f cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5fafff cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#00afaf cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d787d7 cterm=NONE,underline gui=NONE,undercurl
  hi Function ctermfg=139 ctermbg=NONE guifg=#b388ac guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=139 ctermbg=NONE guifg=#b388ac guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=139 ctermbg=236 guifg=#b388ac guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=139 ctermbg=236 guifg=#b388ac guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StorageClass ctermfg=174 ctermbg=NONE guifg=#c78474 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=174 ctermbg=NONE guifg=#c78474 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=174 ctermbg=NONE guifg=#c78474 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=174 ctermbg=NONE guifg=#c78474 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=174 ctermbg=236 guifg=#c78474 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=174 ctermbg=236 guifg=#c78474 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=137 ctermbg=NONE guifg=#a89263 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=137 ctermbg=236 guifg=#a89263 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=137 ctermbg=236 guifg=#a89263 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=94 ctermbg=223 guifg=#776333 guibg=#f4e1d1 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=108 ctermbg=NONE guifg=#849d71 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=108 ctermbg=236 guifg=#849d71 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=108 ctermbg=236 guifg=#849d71 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=73 ctermbg=NONE guifg=#5da19f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=73 ctermbg=NONE guifg=#5da19f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=73 ctermbg=NONE guifg=#5da19f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=73 ctermbg=NONE guifg=#5da19f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=73 ctermbg=NONE guifg=#5da19f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=73 ctermbg=236 guifg=#5da19f guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=73 ctermbg=236 guifg=#5da19f guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#7599c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#7599c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#7599c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#7599c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#7599c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#7599c7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=67 ctermbg=236 guifg=#7599c7 guibg=#282d3e guisp=NONE cterm=NONE,reverse gui=NONE,reverse
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
hi Normal ctermfg=60 ctermbg=255 guifg=#585c6f guibg=#fff3e2 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=103 ctermbg=NONE guifg=#7d8195 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=103 ctermbg=NONE guifg=#7d8195 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=103 ctermbg=NONE guifg=#7d8195 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=60 ctermbg=NONE guifg=#585c6f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=60 ctermbg=255 guifg=#585c6f guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=60 ctermbg=NONE guifg=#585c6f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=60 ctermbg=255 guifg=#585c6f guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=255 guifg=#585c6f guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=255 guifg=#585c6f guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=103 ctermbg=255 guifg=#7d8195 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=145 ctermbg=255 guifg=#baa999 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=237 ctermbg=255 guifg=#323748 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=237 ctermbg=255 guifg=#323748 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=237 ctermbg=145 guifg=#323748 guibg=#baa999 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=223 guifg=#585c6f guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=223 guifg=#585c6f guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=223 guifg=#585c6f guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=223 guifg=#585c6f guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=223 guifg=#585c6f guibg=#f4e1d1 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=60 ctermbg=223 guifg=#585c6f guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=145 ctermbg=145 guifg=#baa999 guibg=#baa999 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#585c6f guibg=#585c6f guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=223 ctermbg=223 guifg=#f4e1d1 guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=223 ctermbg=223 guifg=#f4e1d1 guibg=#f4e1d1 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=145 ctermbg=145 guifg=#baa999 guibg=#baa999 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#ff0000 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#0087ff cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#008787 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d700d7 cterm=NONE,underline gui=NONE,undercurl
hi Function ctermfg=133 ctermbg=NONE guifg=#a9549f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=133 ctermbg=NONE guifg=#a9549f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=133 ctermbg=255 guifg=#a9549f guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=133 ctermbg=255 guifg=#a9549f guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StorageClass ctermfg=160 ctermbg=NONE guifg=#be4f3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=160 ctermbg=NONE guifg=#be4f3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=160 ctermbg=NONE guifg=#be4f3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=160 ctermbg=NONE guifg=#be4f3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=160 ctermbg=255 guifg=#be4f3c guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=160 ctermbg=255 guifg=#be4f3c guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#8e6e08 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=255 guifg=#8e6e08 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=255 guifg=#8e6e08 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=178 ctermbg=237 guifg=#e8bc4a guibg=#323748 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=28 ctermbg=NONE guifg=#4b8029 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=28 ctermbg=255 guifg=#4b8029 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=28 ctermbg=255 guifg=#4b8029 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=30 ctermbg=NONE guifg=#008989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#008989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=30 ctermbg=NONE guifg=#008989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#008989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#008989 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=30 ctermbg=255 guifg=#008989 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=30 ctermbg=255 guifg=#008989 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#0779c5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#0779c5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#0779c5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#0779c5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#0779c5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#0779c5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=32 ctermbg=255 guifg=#0779c5 guibg=#fff3e2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fff3e2 ~
" Color:      gry1 #f4e1d1 ~
" Color:      gry2 #7d8195 ~
" Color:      gry3 #585c6f ~
" Color:      gryc #323748 ~
" Color:      srch #e8bc4a ~
" Color:      gryp #baa999 ~
" Color:      sprd #ff0000 196
" Color:      spbl #0087ff 033
" Color:      spcy #008787 030
" Color:      spmg #d700d7 164
" Color:      red_ #be4f3c ~
" Color:      gold #8e6e08 ~
" Color:      gren #4b8029 ~
" Color:      cyan #008989 ~
" Color:      blue #0779c5 ~
" Color:      mgnt #a9549f ~
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
" Color:      gry0 #282d3e ~
" Color:      gry1 #323748 ~
" Color:      gry2 #8f7f70 ~
" Color:      gry3 #baa999 ~
" Color:      gryc #f4e1d1 ~
" Color:      srch #776333 ~
" Color:      gryp #585c6f ~
" Color:      sprd #ff5f5f 203
" Color:      spbl #5fafff 075
" Color:      spcy #00afaf 037
" Color:      spmg #d787d7 139
" Color:      red_ #c78474 ~
" Color:      gold #a89263 ~
" Color:      gren #849d71 ~
" Color:      cyan #5da19f ~
" Color:      blue #7599c7 ~
" Color:      mgnt #b388ac ~
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
