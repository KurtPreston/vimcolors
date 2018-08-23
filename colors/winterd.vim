" Name : winterd
" Version : 0.6
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

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="winterd"

hi Normal        guifg=#3f3f3f  guibg=#f3f3f3    gui=none                   
hi Title         guifg=black    guibg=white      gui=none
hi Cursor        guifg=white    guibg=#aaaaaa    gui=none

hi LineNr        guifg=#c1c1c1  guibg=#f0f0f0    gui=none
hi Visual        guifg=#888888  guibg=#bbddff    gui=none
hi NonText       guifg=#bbbbbb  guibg=#f3f3f3    gui=none
hi StatusLine    guifg=#222222  guibg=#eeeeee    gui=none
hi StatusLineNC  guifg=#888888  guibg=#eeeeee    gui=none
hi VertSplit     guifg=#eeeeee  guibg=#eeeeee    gui=none
hi ModeMsg       guifg=black    guibg=#bbddff    gui=none
hi ErrorMsg      guifg=black    guibg=#ffbbbb    gui=none
hi Error         guifg=#333333  guibg=white      gui=none
hi Folded        guifg=#999999  guibg=#f3f3f3    gui=none

"
" Vim +7.x specific
"

if version >= 700
  hi MatchParen   guifg=#888888  guibg=#bbddff   gui=none
  hi Pmenu        guifg=#60656f  guibg=#f0f5ff   gui=none
  hi PmenuSel     guifg=white    guibg=#3585ef   gui=bold
  hi PmenuSbar    guifg=#d0d5dd  guibg=#e0e5ee   gui=bold
  hi PmenuThumb   guifg=#e0e5ee  guibg=#c0c5dd   gui=bold
  hi Search                      guibg=#fcfcaa   gui=none
  hi IncSearch                   guibg=#ff3300   gui=bold
  hi CursorLine   guifg=#aaaaaa  guibg=#f0f0f0   gui=none
  hi CursorColumn guifg=#999999  guibg=#f0f0f0   gui=none
  hi CursorLineNr guifg=#bbddff  guibg=#f0f0f0   gui=none
endif
 

"  
" Syntax highlighting 
"
hi SpecialKey    guifg=#cccccc  guibg=#f3f3f3    gui=none
hi Comment       guifg=#bbbbbb  guibg=#f3f3f3    gui=italic
hi Todo          guifg=#bbddff  guibg=#f3f3f3    gui=italic
hi Operator      guifg=#1a1a1a                   gui=none 
hi Identifier    guifg=#1a1a1a                   gui=none
hi Statement     guifg=#1a1a1a                   gui=none
hi Type          guifg=#509be8                   gui=none
hi Constant      guifg=#204070                   gui=none
hi Conditional   guifg=#70aae5                   gui=none

hi Delimiter     guifg=#509be8                   gui=none
hi PreProc       guifg=#70aae5                   gui=none

hi Special       guifg=#70aae5                   gui=none
hi Keyword       guifg=#509be8                   gui=none
hi Conceal       guifg=#bbbb00
hi CursorLineConceal            guifg=#bbdd00    gui=none

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
