" Maintainer:	Simon Descarpentries <simon/\d12s.fr>
" Licence: GPLv3
" Comment: Good code from mango.vim, good colors inspired by mustang.vim, in good
" readability inspired by monochrome.vim

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "primaries"

let Orange	  = "guifg=#ff5f5f guibg=NONE gui=none ctermfg=203 ctermbg=none cterm=none"
let Lemon	  = "guifg=#ffd700 guibg=NONE gui=none ctermfg=220 ctermbg=none cterm=none"
let Peach	  = 'guifg=#ffd7d7 guibg=NONE gui=none ctermfg=224 ctermbg=none cterm=none'
let WaterMint = 'guifg=#afffd7 guibg=NONE gui=italic ctermfg=158 ctermbg=none cterm=italic'
let Mint	  = 'guifg=#87ff5f guibg=NONE gui=italic ctermfg=119 ctermbg=none cterm=italic'
let Olive	  = "guifg=#afd75f guibg=NONE gui=italic ctermfg=149 ctermbg=none cterm=italic"
" let Olive	  = "guifg=#b1d631 guibg=NONE gui=italic ctermfg=148 ctermbg=none cterm=italic"
" let Olive	  = "guifg=#5faf5f guibg=NONE gui=italic ctermfg=71 ctermbg=none cterm=none"
let Prunus	  = "guifg=#5f5fff guibg=NONE gui=none ctermfg=63 ctermbg=none cterm=none"
let Plasma	  = "guifg=#afafff guibg=NONE gui=none ctermfg=147 ctermbg=none cterm=none"
let PlasmaG	  = "guifg=#afafff guibg=NONE gui=BOLD ctermfg=147 ctermbg=none cterm=BOLD"
let Ice	  	  = "guifg=#d7ffff guibg=NONE gui=none ctermfg=195 ctermbg=none cterm=none"
let Snow	  = "guifg=#ffffff guibg=NONE gui=BOLD ctermfg=255 ctermbg=none cterm=BOLD"
let White	  = "guifg=#ffffff guibg=NONE gui=none ctermfg=255 ctermbg=none cterm=none"
" let Concrete  = "guifg=#888888 guibg=NONE gui=none ctermfg=246 ctermbg=none cterm=none"
let Anthracite= "guifg=#666666 guibg=NONE gui=none ctermfg=242 ctermbg=none cterm=none"

exe "hi Boolean "         .PlasmaG
exe "hi Constant "        .Peach
exe "hi Character "       .WaterMint
exe "hi Comment "         .Anthracite
exe "hi Conditional "     .Snow
exe "hi Debug "           .Lemon
exe "hi Define "          .Peach
exe "hi Delimiter "       .Peach
exe "hi Exception "       .Snow
exe "hi Float "           .Lemon
exe "hi Function "        .Snow
exe "hi Identifier "      .Snow
exe "hi Ignore "          .Anthracite
exe "hi Include "         .Snow
exe "hi Keyword "         .Snow
exe "hi Label "           .Peach
exe "hi LineNr "          .Anthracite
exe "hi Macro "           .Prunus
exe "hi Normal "          .White
exe "hi Noise "           .Peach
exe "hi Number "          .Orange
exe "hi Operator "        .Snow
exe "hi PreCondit "       .Prunus
exe "hi PreProc "         .Peach
" ^ function names…
exe "hi Repeat "          .Snow
exe "hi Special "         .Plasma
exe "hi SpecialChar "     .WaterMint
exe "hi SpecialComment "  .Prunus
exe "hi Statement "       .Snow
exe "hi StorageClass "    .Snow
exe "hi String "          .Olive
exe "hi Structure "       .Snow
exe "hi Tag "             .Ice
exe "hi Type "            .Snow
exe "hi TypeDef "         .Ice

" cursorline
hi cursorline cterm=none ctermbg=236 ctermfg=none guibg=grey20 guifg=NONE
