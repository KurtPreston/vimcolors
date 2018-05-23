" bushfire.vim, a Vim color scheme.
" https://github.com/Rsidhoum/bushfire
set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "bushfire"

" Palette
" #1c1c1c 234
" #303030 236
" #878787 102
" #ff5f00 202 base
" #ffaf5f 215
" #ffd7af 223


"               guifg=        guibg=        ctermfg=      ctermbg=      cterm=        gui=
hi Normal       guifg=white   guibg=black   ctermfg=white ctermbg=black
hi Statement    guifg=fg                    ctermfg=fg                  cterm=none    gui=none
hi Identifier   guifg=fg                    ctermfg=fg                  cterm=none    gui=none
hi Constant     guifg=fg                    ctermfg=fg                  cterm=none    gui=none
hi Special      guifg=fg                    ctermfg=fg                  cterm=none    gui=none
hi Preproc      guifg=fg                    ctermfg=fg                  cterm=none    gui=none
hi Type         guifg=fg                    ctermfg=fg                  cterm=none    gui=none
hi Title        guifg=fg                    ctermfg=fg                  cterm=bold    gui=bold

hi Visual       guifg=black   guibg=#ffd7af ctermfg=black ctermfg=223
hi NonText      guifg=#ffaf5f guibg=bg      ctermfg=215
hi Comment      guifg=#878787               ctermfg=102
hi String       guifg=#ffaf5f               ctermfg=215
hi SpecialKey   guifg=#878787               ctermfg=102

hi LineNr       guifg=#ff5f00 guibg=bg      ctermfg=202   ctermbg=black
hi CursorLineNr guifg=black   guibg=#ff5f00 ctermfg=black ctermbg=202

hi Cursor       guifg=black   guibg=#ffd7af
hi CursorColumn               guibg=#303030               ctermbg=236
hi! link CursorLine CursorColumn

hi StatusLine   guibg=black   guifg=#ff5f00 ctermbg=black ctermfg=202
hi! link StatusLineTerm StatusLine
hi StatusLineNC guibg=white   guifg=#1c1c1c ctermbg=white ctermfg=234
hi! link StatusLineTermNC StatusLineNC

hi TabLine      guifg=fg      guibg=black   ctermfg=fg    ctermbg=bg    cterm=none    gui=none
hi TabLineSel   guibg=bg      guifg=#ff5f00 ctermbg=bg    ctermfg=202   cterm=reverse,bold gui=reverse,bold
hi! link TabLineFill TabLine

hi VertSplit    guibg=#ff5f00 guifg=bg      ctermbg=202   ctermfg=black

hi Search       guifg=black   guibg=#ff5f00 ctermfg=black ctermbg=202

hi Folded       guifg=#ffaf5f guibg=#1c1c1c ctermfg=215   ctermbg=234

hi MatchParen   guifg=bg      guibg=#ffd7af ctermfg=bg    ctermbg=223

hi Todo         guibg=black   guifg=yellow  ctermfg=11    ctermbg=0     cterm=reverse gui=reverse
