" bushfire.vim, a Vim color scheme.
" https://github.com/Rsidhoum/bushfire
set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "bushfire"

" Palette (from darkest to brightest)
" #1c1c1c 234
" #af5f00 130
" #878787 102
" #d75f00 166 base
" #ffaf5f 215
" #ffd7af 223

"               guifg=        guibg=        ctermfg=      ctermbg=      cterm=
hi Normal       guifg=#ffffff guibg=#000000 ctermfg=white ctermbg=black
hi Statement    guifg=#ffffff               ctermfg=white
hi Identifier   guifg=#ffffff               ctermfg=white               cterm=none
hi Constant     guifg=#ffffff               ctermfg=white
hi Special      guifg=#ffffff               ctermfg=white
hi Preproc      guifg=#ffffff               ctermfg=white
hi Type         guifg=#ffffff               ctermfg=white

hi NonText      guifg=#ffffff guibg=#000000 ctermfg=white
hi Comment      guifg=#878787               ctermfg=102
hi SpecialKey   guifg=#d75f00               ctermfg=166

hi LineNr       guifg=#af5f00 guibg=#000000 ctermfg=130   ctermbg=black
hi CursorLineNr guifg=#000000 guibg=#ffd7af ctermfg=black ctermbg=223

hi Cursor       guifg=#000000 guibg=#ffd7af
hi CursorColumn               guibg=#1c1c1c               ctermbg=234
hi! link CursorLine CursorColumn

hi StatusLine   guibg=#000000 guifg=#d75f00 ctermbg=black ctermfg=166
hi StatusLineNC guibg=#ffffff guifg=#1c1c1c ctermbg=white ctermfg=234

hi Search       guifg=#000000 guibg=#d75f00 ctermfg=black ctermbg=166

hi Folded       guifg=#ffaf5f guibg=#1c1c1c ctermfg=215 ctermbg=234

hi MatchParen   guifg=bg      guibg=#ffd7af ctermfg=bg  ctermbg=223

hi Todo        guifg=black guibg=yellow ctermfg=0 ctermbg=11
