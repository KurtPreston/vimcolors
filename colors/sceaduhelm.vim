" Vim color scheme
"
" Name:   sceaduhelm.vim
" Author: Takaaki Hirano <hivedark@gmail.com>
" Source: https://github.com/wolf-dog/sceaduhelm.vim

set background=dark
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'sceaduhelm'

if exists('g:sceaduhelm_transparent_bg') && g:sceaduhelm_transparent_bg == 1
    hi Normal   ctermfg=252  ctermbg=none cterm=none      guifg=#d0d0d0 guibg=none    gui=none
else
    hi Normal   ctermfg=252  ctermbg=233  cterm=none      guifg=#d0d0d0 guibg=#121212 gui=none
endif

" General colors
hi Visual       ctermfg=none ctermbg=232  cterm=none      guifg=NONE    guibg=#080808 gui=none
hi Search       ctermfg=232  ctermbg=242  cterm=none      guifg=#080808 guibg=#666666 gui=none
hi IncSearch    ctermfg=233  ctermbg=75   cterm=none      guifg=#121212 guibg=#5fafff gui=none
hi Folded       ctermfg=229  ctermbg=235  cterm=none      guifg=#ffffaf guibg=#262626 gui=none
hi StatusLine   ctermfg=232  ctermbg=101  cterm=none      guifg=#080808 guibg=#87875f gui=none
hi StatusLineNC ctermfg=232  ctermbg=242  cterm=none      guifg=#080808 guibg=#666666 gui=none
hi TabLine      ctermfg=232  ctermbg=242  cterm=none      guifg=#080808 guibg=#666666 gui=none
hi TabLineSel   ctermfg=232  ctermbg=101  cterm=none      guifg=#080808 guibg=#87875f gui=none
hi TabLineFill  ctermfg=252  ctermbg=239  cterm=none      guifg=#d0d0d0 guibg=#4e4e4e gui=none
hi VertSplit    ctermfg=242  ctermbg=235  cterm=none      guifg=#666666 guibg=#262626 gui=none
hi LineNr       ctermfg=242  ctermbg=234  cterm=none      guifg=#666666 guibg=#1c1c1c gui=none
hi NonText      ctermfg=60   ctermbg=none cterm=none      guifg=#5f5f87 guibg=NONE    gui=none
hi ErrorMsg     ctermfg=233  ctermbg=202  cterm=bold      guifg=#121212 guibg=#ff5f00 gui=bold
hi ModeMsg      ctermfg=220  ctermbg=none cterm=bold      guifg=#ffdf00 guibg=NONE    gui=bold
hi WarningMsg   ctermfg=202  ctermbg=none cterm=bold      guifg=#ff5f00 guibg=NONE    gui=bold
hi Title        ctermfg=252  ctermbg=none cterm=bold      guifg=#d0d0d0 guibg=NONE    gui=bold
hi Cursor       ctermfg=none ctermbg=75   cterm=none      guifg=NONE    guibg=#5fafff gui=none
hi CursorIM     ctermfg=none ctermbg=75   cterm=none      guifg=NONE    guibg=#5fafff gui=none

hi CursorLine   ctermfg=none ctermbg=234  cterm=none      guifg=NONE    guibg=#1c1c1c gui=none
hi CursorLineNr ctermfg=255  ctermbg=233  cterm=none      guifg=#eeeeee guibg=#121212 gui=none
hi ColorColumn  ctermfg=none ctermbg=234  cterm=none      guifg=NONE    guibg=#1c1c1c gui=none
hi MatchParen   ctermfg=166  ctermbg=none cterm=bold      guifg=#df5f00 guibg=NONE    gui=bold
hi Pmenu        ctermfg=252  ctermbg=59   cterm=none      guifg=#d0d0d0 guibg=#5f5f5f gui=none
hi PmenuSel     ctermfg=255  ctermbg=67   cterm=none      guifg=#eeeeee guibg=#5f87af gui=none
hi PmenuSbar    ctermfg=none ctermbg=236  cterm=none      guifg=NONE    guibg=#303030 gui=none
hi PmenuThumb   ctermfg=none ctermbg=252  cterm=none      guifg=NONE    guibg=#d0d0d0 gui=none
hi WildMenu     ctermfg=232  ctermbg=221  cterm=none      guifg=#080808 guibg=#ffdf5f gui=none
hi SpellBad     ctermfg=234  ctermbg=202  cterm=undercurl guifg=#1c1c1c guibg=#ff5f00 gui=undercurl guisp=#1c1c1c
hi SpellCap     ctermfg=234  ctermbg=221  cterm=undercurl guifg=#1c1c1c guibg=#ffdf5f gui=undercurl guisp=#1c1c1c
hi SpellRare    ctermfg=234  ctermbg=67   cterm=undercurl guifg=#1c1c1c guibg=#5f87af gui=undercurl guisp=#1c1c1c
hi SpellLocal   ctermfg=234  ctermbg=60   cterm=undercurl guifg=#1c1c1c guibg=#5f5f87 gui=undercurl guisp=#1c1c1c

"  Diff         highlighting
hi DiffAdd      ctermfg=234  ctermbg=67   cterm=none      guifg=#1c1c1c guibg=#5f87af gui=none
hi DiffDelete   ctermfg=234  ctermbg=107  cterm=none      guifg=#1c1c1c guibg=#87af5f gui=none
hi DiffChange   ctermfg=234  ctermbg=60   cterm=none      guifg=#1c1c1c guibg=#5f5f87 gui=none
hi DiffText     ctermfg=255  ctermbg=60   cterm=none      guifg=#eeeeee guibg=#5f5f87 gui=none

"  Syntax       highlighting
hi Comment      ctermfg=67   ctermbg=none cterm=none      guifg=#5f87af guibg=NONE    gui=none
hi Constant     ctermfg=69   ctermbg=none cterm=bold      guifg=#5f87ff guibg=NONE    gui=bold
hi String       ctermfg=101  ctermbg=none cterm=none      guifg=#87875f guibg=NONE    gui=none
hi Number       ctermfg=64   ctermbg=none cterm=none      guifg=#5f8700 guibg=NONE    gui=none
hi Identifier   ctermfg=246  ctermbg=none cterm=bold      guifg=#949494 guibg=NONE    gui=bold
hi Function     ctermfg=69   ctermbg=none cterm=none      guifg=#5f87ff guibg=NONE    gui=none
hi Statement    ctermfg=59   ctermbg=none cterm=bold      guifg=#5f5f5f guibg=NONE    gui=bold
hi Keyword      ctermfg=153  ctermbg=none cterm=none      guifg=#afdfff guibg=NONE    gui=none
hi PreProc      ctermfg=221  ctermbg=none cterm=bold      guifg=#ffdf5f guibg=NONE    gui=bold
hi Type         ctermfg=107  ctermbg=none cterm=none      guifg=#87af5f guibg=NONE    gui=none
hi Special      ctermfg=220  ctermbg=none cterm=none      guifg=#ffdf00 guibg=NONE    gui=none
hi Underlined   ctermfg=101  ctermbg=none cterm=underline guifg=#87875f guibg=NONE    gui=underline
hi Error        ctermfg=233  ctermbg=202  cterm=bold      guifg=#121212 guibg=#ff5f00 gui=bold
hi Todo         ctermfg=233  ctermbg=67   cterm=bold      guifg=#121212 guibg=#5f87af gui=bold

" Links
hi! link Boolean      Constant
hi! link SpecialChar  Constant
hi! link Directory    Identifier
hi! link Conceal      Keyword
hi! link VisualNOS    Visual
hi! link FoldColumn   Folded
hi! link CursorColumn CursorLine
hi! link SpecialKey   NonText
hi! link MoreMsg      ModeMsg
hi! link Question     Todo
hi! link SignColumn   Normal
