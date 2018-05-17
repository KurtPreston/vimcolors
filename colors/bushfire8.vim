" bushfire8.vim, a 8 colors Vim color scheme.
" https://github.com/Rsidhoum/bushfire
set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "bushfire8"

" Palette
" #000000 00
" #800000 01
" #008000 02
" #000080 04
" #800080 05
" #008080 06
" #c0c0c0 07

"               ctermfg=      ctermbg=       cterm=
hi Normal       ctermfg=07    ctermbg=00
hi Statement    ctermfg=07
hi Identifier   ctermfg=07                   cterm=none
hi Constant     ctermfg=07
hi Special      ctermfg=07
hi Preproc      ctermfg=07
hi Type         ctermfg=07
hi Title                                     cterm=bold

hi Visual                                    cterm=reverse
hi NonText      ctermfg=01
hi Comment      ctermfg=01
hi String       ctermfg=02
hi SpecialKey   ctermfg=01

hi LineNr       ctermfg=01    ctermbg=00
hi CursorLineNr ctermfg=00    ctermbg=01

hi! link CursorColumn Normal
hi! link CursorLine CursorColumn

hi StatusLine   ctermbg=00    ctermfg=01     cterm=reverse
hi StatusLineNC ctermbg=07    ctermfg=00

hi VertSplit    ctermfg=07    ctermbg=00

hi Search       ctermfg=00    ctermbg=01

hi Folded       ctermfg=01    ctermbg=00

hi MatchParen   ctermfg=bg    ctermbg=04

hi Todo         ctermfg=06    ctermbg=00     cterm=reverse gui=reverse
