" Name : winterd
" Version : 0.7
" Maintainer : https://www.github.com/smurfd
" License : The MIT License (MIT)
"
" A Colorscheme for VIM highly based on 'vylight' by Vy-Shane Sin Fat
" https://github.com/vim-scripts/vylight
"
" Works best in GVIM
" for it to work great in a Terminal, add 'set termguicolors'
" to your ~/.vimrc file


"
" Color palette
" #3f3f3f = darkergray
" #f3f3f3 = lightestgray
" #e6e6e6 = lightergray
" #c1c1c1 = lightgray
" #bbddff = lighterblue
" #70aae5 = lightblue
" #509bee = blue
" #295fb0 = darkblue

hi clear

if exists("syntax_on")
  syntax reset
endif

"
" Set Theme name
let g:colors_name="winterd"

hi Normal               guifg=#3f3f3f   guibg=#f3f3f3   gui=none
hi Title                guifg=#3f3f3f   guibg=#f3f3f3   gui=none
hi Cursor               guifg=#f3f3f3   guibg=#3f3f3f   gui=none

hi LineNr               guifg=#c1c1c1   guibg=#f3f3f3   gui=none
hi Visual                               guibg=#bbddff   gui=none
hi NonText              guifg=#c1c1c1   guibg=#f3f3f3   gui=none
hi StatusLine           guifg=#3f3f3f   guibg=#c1c1c1   gui=none
hi StatusLineNC         guifg=#3f3f3f   guibg=#c1c1c1   gui=none
hi VertSplit            guifg=#f3f3f3   guibg=#c1c1c1   gui=none
hi ModeMsg              guifg=#3f3f3f   guibg=#bbddff   gui=none
hi ErrorMsg             guifg=#3f3f3f   guibg=#509bee   gui=none
hi Error                guifg=#3f3f3f   guibg=#bbddff   gui=none
hi Folded               guifg=#c1c1c1   guibg=#f3f3f3   gui=none

"
" Vim +7.x specific
if version >= 700
  hi MatchParen         guifg=#3f3f3f   guibg=#bbddff   gui=none
  hi Pmenu              guifg=#c1c1c1   guibg=#f3f3f3   gui=none
  hi PmenuSel           guifg=#c1c1c1   guibg=#509bee   gui=bold
  hi PmenuSbar          guifg=#c1c1c1   guibg=#f3f3f3   gui=bold
  hi PmenuThumb         guifg=#c1c1c1   guibg=#f3f3f3   gui=bold
  hi Search                             guibg=#509bee   gui=none
  hi IncSearch                          guibg=#509bee   gui=bold
  hi CursorLine                         guibg=#e6e6e6   gui=none
  hi CursorColumn                       guibg=#e6e6e6   gui=none
  hi CursorLineNr       guifg=#bbddff   guibg=#f3f3f3   gui=bold
endif

"
" Syntax highlighting
hi SpecialKey           guifg=#70aae5   guibg=#f3f3f3   gui=bold
hi Comment              guifg=#c1c1c1   guibg=#f3f3f3   gui=none
hi Todo                 guifg=#bbddff   guibg=#f3f3f3   gui=none
hi Operator             guifg=#3f3f3f                   gui=none
hi Identifier           guifg=#3f3f3f                   gui=none
hi Statement            guifg=#3f3f3f                   gui=none
hi Type                 guifg=#509be8                   gui=none
hi Constant             guifg=#295fb0                   gui=none
hi Conditional          guifg=#70aae5                   gui=none

hi Delimiter            guifg=#509bee                   gui=none
hi PreProc              guifg=#70aae5                   gui=none

hi Special              guifg=#70aae5                   gui=none
hi Keyword              guifg=#509bee                   gui=none
hi Conceal              guifg=#509bee                   gui=none
hi CursorLineConceal    guifg=#509bee                   gui=none

hi link Function        Normal
hi link Character       Constant
hi link String          Constant
hi link Boolean         Constant
hi link Number          Constant
hi link Float           Number
hi link Repeat          Conditional
hi link Label           Statement
hi link Exception       Statement
hi link Include         Normal
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special
