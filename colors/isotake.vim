" Vim color file: isotake
" Author: Takahiro Yoshihara <tacahiroy@gmail.com>
"
" This is based on seashell.vim by Gerald S. Williams
" http://www.vim.org/scripts/script.php?script_id=589

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "isotake"

hi Cursor   gui=NONE guibg=Orange
hi CursorIM gui=NONE guibg=#67db57

if &background == 'light'
  hi  ColorColumn   guibg=#fde5fd        cterm=NONE         ctermbg=222       ctermfg=016
  hi  Comment       guifg=#339933        gui=Bold
  hi  Constant      guifg=DeepPink
  hi  CursorLineNr  gui=NONE             guibg=#ffdfe6      guifg=Brown       cterm=NONE      ctermbg=NONE  ctermfg=208
  hi  DiffAdd       guibg=LightGreen     ctermbg=DarkGreen  ctermfg=White
  hi  DiffChange    guibg=Gray90         ctermbg=DarkCyan   ctermfg=White
  hi  DiffDelete    guibg=LightRed       guifg=Black        ctermbg=DarkRed   ctermfg=White
  hi  DiffText      gui=NONE             guibg=LightCyan2   ctermbg=DarkCyan  ctermfg=Yellow
  hi  Error         ctermbg=1            ctermfg=195
  hi  ErrorMsg      ctermbg=1            ctermfg=195
  hi  FileName      gui=NONE             guifg=DarkRed      guibg=White       cterm=NONE      ctermfg=199
  hi  Folded        gui=NONE             guibg=Pink         guifg=DarkBlue    cterm=NONE      ctermbg=223       ctermfg=18
  hi  Identifier    guifg=#006f6f        ctermfg=028
  hi  IncSearch     guibg=Pink           guifg=DarkGrey     gui=NONE
  hi  LineNr        guibg=#ffdfe6        guifg=Gray30       cterm=NONE        ctermbg=NONE    ctermfg=007
  hi  MatchParen    guibg=turquoise
  hi  NonText       guibg=LavenderBlush  guifg=Gray30
  hi  Normal        guibg=Seashell       ctermfg=0
  hi  Pmenu         guibg=LightGrey      guifg=DarkBlue
  hi  PmenuSbar     guibg=Grey70
  hi  PmenuSel      guibg=#6ac4ff        guifg=White
  hi  Pmenuthumb    guifg=#bed4f7
  hi  PreProc       guifg=DarkMagenta
  hi  Search        guibg=LightGreen     guifg=DarKRed      gui=NONE  ctermbg=159  ctermfg=52
  hi  SignColor     guibg=Grey60
  hi  SignColumn    guibg=LightGrey      guifg=LightGrey
  hi  Statement     guifg=DarkRed        ctermfg=DarkRed
  hi  StatusLine    gui=NONE             guibg=SkyBlue       guifg=Black       cterm=NONE      ctermfg=22    ctermbg=121
  hi  StatusLineNC  gui=NONE             guibg=Gray          guifg=Black       cterm=NONE      ctermfg=34    ctermbg=194
  " bar
  hi  TabLineFill   ctermfg=172 ctermbg=222
  " active tab
  hi  TabLineSel    ctermbg=148          ctermfg=232
  " inactive tabs
  hi  TabLine       ctermbg=255
  hi  Type          gui=NONE
  hi  VertSplit     gui=NONE             guibg=Gray
  hi  Visual        guibg=#ffd32e        gui=NONE            cterm=NONE         ctermbg=45         ctermfg=21
  hi  vimGroup      gui=NONE
  hi  vimGroupName  gui=NONE

else
  hi  Normal        guibg=#010b36        guifg=Grey80        ctermfg=7
  hi  NonText       guifg=LavenderBlush  ctermfg=LightMagenta
  hi  DiffDelete    guibg=DarkRed        guifg=Black           ctermbg=DarkRed   ctermfg=White
  hi  DiffAdd       guibg=DarkGreen      ctermbg=DarkGreen     ctermfg=White
  hi  DiffChange    guibg=Gray30         ctermbg=DarkCyan      ctermfg=White
  hi  DiffText      gui=NONE             guibg=DarkCyan        ctermbg=DarkCyan  ctermfg=Yellow
  hi  Comment       guifg=LightBlue
  hi  PreProc       ctermfg=Magenta
  hi  StatusLine    gui=NONE             guibg=DarkGreen       guifg=White       cterm=NONE      ctermfg=White  ctermbg=DarkGreen
  hi  StatusLineNC  guifg=Gray
  hi  VertSplit     guifg=Gray
  hi  Type          gui=NONE             guifg=#7f98fa
  hi  Identifier    guifg=Cyan
  hi  Statement     guifg=Brown3         ctermfg=DarkRed
  hi  Search        guibg=Gold3          ctermfg=White
  hi  Folded        guibg=gray20
  hi  FoldColumn    guibg=gray10
  hi  FileName      gui=NONE             guibg=White           guifg=Blue
endif
