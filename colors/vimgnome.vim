"Name:         vim-gnome 
"Description:  A Vim color scheme based on vim-colorscheme-primary 
"              with gnome's Dark-Adwaita Background
"Author:       Rudra Banerjee 
"Created:      2015 April 25

if has("gui_running")
  set background=dark
endif
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='vimgnome'

"COLORS DEFINED
"RED    = #DB4437
"GREEN  = #34A16C
"YELLOW = #FFF8B2
"BLUE   = #2196F3  changed to #64B5F6
"BLACK  = #333333
"DGREY  = #656565
"LGREY  = #EEEEEE
"WHITE  = #FFFFFF
"BROWN  = #FFB499
"TEAL   = #00D7C0

" Colors for Syntax Highlighting.
hi Normal           guibg=#37474f   guifg=#FFFFFF                   ctermfg=white
hi Comment                          guifg=#FFF8B2                   ctermfg=lightgrey
hi Scrollbar	      guibg=#263238   guifg=#607d80
hi String                           guifg=#00D7C0   gui=italic      ctermfg=lightblue   cterm=italic
hi Statement                        guifg=#DB4437   gui=bold        ctermfg=red  cterm=bold
hi Identifier                       guifg=#64B5F6   gui=bold        ctermfg=blue  cterm=bold    
hi Special                          guifg=#64B5F6   gui=none        ctermfg=blue
hi Title                            guifg=#34A16C   gui=bold        ctermfg=darkgreen  cterm=bold
hi Typedef                          guifg=#34A16C   gui=italic      ctermfg=darkgreen  cterm=italic
hi Type                             guifg=#34A16C   gui=bold        ctermfg=darkgreen  cterm=bold
hi Constant                         guifg=#EEEEEE                   ctermfg=lightgrey 
hi Number                           guifg=#FFB499                   ctermfg=brown 
hi Tag                              guifg=#EEEEEE   gui=bold        ctermfg=lightgrey  cterm=bold  
hi Ignore                           guifg=#EEEEEE   gui=none        ctermfg=lightgrey
hi Underlined                       guifg=#EEEEEE   gui=underline   ctermfg=lightgrey  cterm=underline
hi MatchParen       guibg=#DB4437   guifg=#262626   gui=bold        ctermfg=red  cterm=bold
hi Error            guibg=#DB4437   guifg=#262626   gui=bold        ctermfg=red  ctermbg=black cterm=bold
hi Todo             guibg=#34A16C   guifg=#262626   gui=bold        ctermfg=darkgreen  cterm=bold
hi Wildmenu         guibg=#34A16C   guifg=#262626   gui=bold        ctermfg=darkgreen  cterm=bold
hi DiffAdd          guibg=#C6493E   guifg=#FFFFFF                   cterm=bold ctermbg=4  ctermfg=4
hi DiffChange       guibg=#C6493E   guifg=#FFFFFF                   ctermbg=5  ctermfg=4
hi DiffDelete       guibg=#178D53   guifg=#FFFFFF                   cterm=bold ctermfg=4 ctermbg=6
hi DiffText         guibg=#C6493E   guifg=#FFFFFF                   cterm=bold ctermbg=1 
""User Interface
hi Cursor           guibg=#ffffff   guifg=#000000                   ctermbg=white  ctermfg=black
hi Search           guibg=#FF8A80   guifg=#B71C1C 
hi IncSearch        guibg=#B71C1C   guifg=#ffffff   gui=bold,italic 
hi SignColumn       guibg=#34A16C   guifg=#FF8A80 
hi ColorColumn      guibg=darkred   guifg=#34A16C
hi WarningMsg       guifg=#FFFFFF                   gui=bold,undercurl  ctermfg=1
hi SpellErrors      guifg=#B71C1C                   gui=bold,undercurl
hi ModeMsg          guifg=#1565C0                   gui=bold
hi SpecialKey       guifg=#EEEEEE                   gui=none
hi CursorLineNr     guibg=#30474f   guifg=#EEEEEE   gui=bold
hi LineNr	          guibg=#202f36   guifg=#90f020	  gui=bold	      ctermfg=green cterm=none
hi Pmenu            guibg=#64B5F6   guifg=#EEEEEE
hi PmenuSel         guibg=#f9cd63   guifg=#64B5F6
hi PmenuSBar        guibg=#ffffff   guifg=#EEEEEE
hi PmenuThumb       guibg=#64B5F6   guifg=#EEEEEE
hi Visual           guibg=#4E6068   guifg=white     gui=bold 
hi VertSplit        guibg=#c2bfa5   guifg=grey40    gui=none        cterm=reverse
hi Folded           guibg=#427BDA   guifg=#EEEEEE                   ctermfg=grey    ctermbg=darkgrey
hi FoldColumn       guibg=black     guifg=grey20                    ctermfg=4       ctermbg=7
hi StatusLine       guibg=#c2bfa5   guifg=black     gui=none        cterm=bold,reverse
hi StatusLineNC     guibg=#c2bfa5   guifg=grey40    gui=none        cterm=reverse
hi VisualNOS                                                        cterm=bold,underline

hi!  link CocErrorSign       WarningMsg
hi!  link CocWarningSign     WarningMsg
hi!  link Keyword            Statement
hi!  link Exception          Statement
hi!  link Conditional        Statement
hi!  link Label              Statement
hi!  link Repeat             Statement
hi!  link Delimiter          Special
hi!  link Debug              Special
hi!  link SpecialChar        Special
hi!  link Define             Type
hi!  link Macro              Type
hi!  link Precondit          Type
hi!  link Preproc            Type
hi!  link SpecialComment     Type
hi!  link StorageClass       Type
hi!  link Structure          Type
hi!  link Operator           Type
hi!  link Include            Type
hi!  link ErrorMsg           WarningMsg
hi!  link MoreMsg            MoreMsg
hi!  link Question           MoreMsg
hi!  link Directory          MoreMsg
hi!  link Function           Identifier
hi!  link NonText            SpecialKey
hi!  link Title              SpecialKey
hi!  link Boolean            Constant       
hi!  link Float              Constant     
hi!  link Character          String
