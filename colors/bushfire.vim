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
" #af5f00 130
" #878787 102
" #303030 206
" #ff5f00 202 base
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

hi NonText      guifg=#ffaf5f guibg=#000000 ctermfg=215
hi Comment      guifg=#878787               ctermfg=102
hi String       guifg=#ffaf5f               ctermfg=215
hi SpecialKey   guifg=#878787               ctermfg=206

hi LineNr       guifg=#af5f00 guibg=#000000 ctermfg=130   ctermbg=black
hi CursorLineNr guifg=#000000 guibg=#ff5f00 ctermfg=black ctermbg=202

hi Cursor       guifg=#000000 guibg=#ffd7af
hi CursorColumn               guibg=#1c1c1c               ctermbg=234
hi! link CursorLine CursorColumn

hi StatusLine   guibg=#000000 guifg=#ff5f00 ctermbg=black ctermfg=202
hi StatusLineNC guibg=#ffffff guifg=#1c1c1c ctermbg=white ctermfg=234

hi Search       guifg=#000000 guibg=#ff5f00 ctermfg=black ctermbg=202

hi Folded       guifg=#ffaf5f guibg=#1c1c1c ctermfg=215   ctermbg=234

hi MatchParen   guifg=bg      guibg=#ffd7af ctermfg=bg    ctermbg=223

hi Todo         guifg=black   guibg=yellow  ctermfg=0     ctermbg=11
