"Name:         vim-gnome
"Description:  A Vim color scheme with dark background
"Author:       Rudra Banerjee
"Created:      2015 April 25
" source hex.txt
if has("gui_running")
  set background=dark
endif
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='vimgnome'

"COLORS DEFINED
let  VgRed         = "#DB4437"
let  VgRed4        = "#EF5350"
let  VgRed9        = "#B71C1C"
let  VgRedA1       = "#FF8A80"
let  VgGreen       = "#00A56A"
let  VgGreenA4     = "#69F0AE"
let  VgYellow      = "#FFF8B2"
let  VgBlue        = "#64B5F6"
let  VgBlue5       = "#E3F2FD"
let  VgBlue50      = "#1E88E5"
let  VgBlue9       = "#1565C0"
let  VgDgrey       = "#656565"
let  VgLgrey       = "#EEEEEE"
let  VgBrown       = "#FFB499"
let  VgTeal        = "#00D7C0"
let  VgBlueGrey    = "#37474F"
let  VgBlueGrey900 = "#263238"
let  VgBlueGrey500 = "#607D8B"
let  VgWhite3      = "#E0E0E0"
let  VgBlack       = "#333333"

"        Colors      for           Syntax         Highlighting.
execute  printf('hi  Normal        guibg=%s       guifg=white           ctermfg=white',      VgBlueGrey)
execute  printf('hi  Comment       guifg=%s       ctermfg=lightgrey',   VgYellow)
execute  printf('hi  Scrollbar     guibg=%s       guifg=%s',            VgBlueGrey900,       VgBlueGrey500)
execute  printf('hi  String        guifg=%s       gui=italic            ctermfg=lightblue    cterm=italic',        VgTeal)
execute  printf('hi  Statement     guifg=%s       gui=bold              ctermfg=red          cterm=bold',          VgRed)
execute  printf('hi  Identifier    guifg=%s       gui=bold              ctermfg=blue         cterm=bold',          VgBlue)
execute  printf('hi  Special       guifg=%s       gui=none              ctermfg=blue',       VgBlue)
execute  printf('hi  Title         guifg=%s       gui=bold              ctermfg=darkgreen    cterm=bold',          VgGreen)
execute  printf('hi  Typedef       guifg=%s       gui=italic            ctermfg=darkgreen    cterm=italic',        VgGreen)
execute  printf('hi  Type          guifg=%s       gui=bold              ctermfg=darkgreen    cterm=bold',          VgGreen)
execute  printf('hi  Constant      guifg=%s       ctermfg=lightgrey',   VgLgrey)
execute  printf('hi  Number        guifg=%s       ctermfg=brown',       VgBrown)
execute  printf('hi  Tag           guifg=%s       gui=bold              ctermfg=lightgrey    cterm=bold',          VgLgrey)
execute  printf('hi  Ignore        guifg=%s       gui=none              ctermfg=lightgrey',  VgLgrey)
execute  printf('hi  Underlined    guifg=%s       gui=underline         ctermfg=lightgrey    cterm=underline',     VgLgrey)
execute  printf('hi  MatchParen    guibg=%s       guifg=grey20          gui=bold             ctermfg=red           cterm=bold',             VgRed)
execute  printf('hi  Error         guibg=%s       guifg=grey20          gui=bold             ctermfg=red           ctermbg=black            cterm=bold',              VgRed)
execute  printf('hi  Todo          guibg=%s       guifg=grey20          gui=bold             ctermfg=darkgreen     cterm=bold',             VgGreen)
execute  printf('hi  Wildmenu      guibg=%s       guifg=grey20          gui=bold             ctermfg=darkgreen     cterm=bold',             VgGreen)
execute  printf('hi  DiffAdd       guibg=%s       guifg=white           cterm=bold           ctermbg=4             ctermfg=4',              VgRed4)
execute  printf('hi  DiffChange    guibg=%s       guifg=white           ctermbg=5            ctermfg=4',           VgRed4)
execute  printf('hi  DiffText      guibg=%s       guifg=white           cterm=bold           ctermbg=1',           VgRed4)
execute  printf('hi  DiffDelete    guibg=%s       guifg=white           cterm=bold           ctermfg=4             ctermbg=6',              VgGreen)
execute  printf('hi  Cursor        guibg=white    guifg=black           ctermbg=white        ctermfg=black')
execute  printf('hi  Search        guibg=%s       guifg=%s              gui=bold',           VgRedA1,VgRed9)
execute  printf('hi  IncSearch     guibg=%s       guifg=white           gui=bold,italic',    VgRed9)
execute  printf('hi  SignColumn    guibg=%s       guifg=%s',            VgGreen,VgRedA1)
execute  printf('hi  ColorColumn   guibg=darkred  guifg=%s',            VgWhite3)
execute  printf('hi  WarningMsg    guifg=white    gui=bold,undercurl    ctermfg=1')
execute  printf('hi  SpellErrors   guifg=%s       gui=bold,undercurl',  VgRed9)
execute  printf('hi  SpellBad      guisp=%s       gui=undercurl',       VgRed)
execute  printf('hi  SpellCap      guisp=%s       gui=undercurl',       VgBlue)
execute  printf('hi  SpellLocal    guisp=Cyan     gui=undercurl')
execute  printf('hi  SpellRare     guisp=Magenta  gui=undercurl')
execute  printf('hi  ModeMsg       guifg=%s       gui=bold',            VgBlue9)
execute  printf('hi  SpecialKey    guifg=%s       gui=none',            VgLgrey)
execute  printf('hi  CursorLineNr  guibg=%s       guifg=%s              gui=bold',           VgBlueGrey,           VgLgrey)
execute  printf('hi  LineNr        guibg=%s       guifg=%s              gui=bold             ctermfg=green         cterm=none',             VgBlueGrey900,VgGreenA4)
execute  printf('hi  Pmenu         guibg=%s       guifg=%s',            VgBlue,              VgLgrey)
execute  printf('hi  PmenuSel      guibg=#f9cd63  guifg=%s',            VgBlue)
execute  printf('hi  PmenuSBar     guibg=white    guifg=%s',            VgLgrey)
execute  printf('hi  Visual        guibg=%s       guifg=white           gui=bold',           VgBlueGrey500)
execute  printf('hi  VertSplit     guibg=%s       guifg=grey40          gui=none             cterm=reverse',       VgBlueGrey900)
execute  printf('hi  Folded        guibg=%s       guifg=%s              ctermfg=grey         ctermbg=darkgrey',    VgBlue50,VgLgrey)
execute  printf('hi  FoldColumn    guibg=black    guifg=grey20          ctermfg=4            ctermbg=7')
execute  printf('hi  StatusLine    guibg=%s       guifg=%s              gui=none             cterm=bold,reverse',  VgBlueGrey900,VgWhite3)
execute  printf('hi  StatusLineNC  guibg=%s       guifg=%s              gui=none             cterm=reverse',       VgBlueGrey900,VgWhite3)
execute  printf('hi  VisualNOS     cterm=bold,underline')

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
hi!  link PmenuThumb         Pmenu
