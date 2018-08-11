" Overrides default colors with simple values

" Maintainer:  https://github.com/julien
" Last Change: 2018/08/10

highlight clear

" Reset String -> Constant links etc if they were reset
if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "miniml"

hi ColorColumn ctermbg=8 guibg=Grey
hi CursorLine term=none cterm=none
hi LineNr ctermfg=7 guifg=Grey
hi Normal ctermbg=0 ctermfg=15 guibg=Black guifg=White
hi Statement ctermfg=128 guifg=Purple
hi StatusLineTerm ctermbg=15 guibg=White
hi StatusLineTermNC ctermbg=15 guibg=White
hi Search ctermbg=7 guifg=Grey
hi Todo cterm=NONE ctermfg=white ctermbg=128 gui=NONE guifg=White guibg=Purple
hi Type ctermfg=126 guifg=Pink
hi Visual term=reverse ctermbg=15 ctermfg=0 guibg=White guifg=Black

set bg=dark

