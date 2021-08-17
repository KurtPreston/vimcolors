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

  hi  ColorColumn       ctermbg=222     ctermfg=016
  hi  Comment           ctermfg=32
  hi  Constant          guifg=DeepPink
  hi  CursorLine        guibg=LightGreen  cterm=NONE      ctermbg=193
  hi  CursorLineNr      guibg=#ffdfe6     guifg=Brown     cterm=NONE    ctermbg=NONE  ctermfg=208
  hi  DiffAdd           ctermbg=114          ctermfg=28
  hi  DiffChange        ctermbg=123          ctermfg=33
  hi  DiffDelete        ctermbg=218          ctermfg=206
  hi  DiffText          ctermbg=117          ctermfg=33
  hi  Error             ctermbg=1            ctermfg=195
  hi  ErrorMsg          ctermbg=1            ctermfg=195
  hi  FileName          guifg=DarkRed     guibg=White     cterm=NONE    ctermfg=199
  hi  Folded            guibg=Pink        guifg=DarkBlue  cterm=NONE    ctermbg=223   ctermfg=18
  hi  Identifier        guifg=#006f6f        ctermfg=028
  hi  IncSearch         guibg=Pink           guifg=DarkGrey    gui=NONE
  hi  LineNr            guibg=#ffdfe6        guifg=Gray30      cterm=NONE      ctermbg=NONE  ctermfg=007
  hi  MatchParen        guibg=turquoise
  hi  NonText           guibg=LavenderBlush  guifg=Gray30
  hi  Normal            ctermfg=18
  hi  Pmenu             ctermfg=18           ctermbg=195
  hi  PmenuSbar         ctermbg=159
  hi  PmenuSel          ctermfg=21           ctermbg=153
  hi  PmenuThumb        ctermbg=45
  hi  PreProc           guifg=DarkMagenta
  hi  Search            guibg=LightGreen     guifg=DarKRed     ctermbg=159   ctermfg=52
  hi  SignColor         guibg=Grey60
  hi  SignColumn        guibg=LightGrey      guifg=LightGrey
  hi  Statement         guifg=DarkRed        ctermfg=DarkRed
  hi  StatusLine        guibg=SkyBlue        guifg=Black       cterm=NONE      ctermfg=22    ctermbg=121
  hi  StatusLineNC      guibg=Gray           guifg=Black       cterm=NONE      ctermfg=34    ctermbg=194
  hi  StatusLineTerm    ctermbg=158          ctermfg=26
  hi  StatusLineTermNC  ctermbg=193          ctermfg=76
  "   bar
  hi  TabLineFill       ctermfg=172          ctermbg=222
  "   active            tab
  hi  TabLineSel        ctermbg=148          ctermfg=232
  "   inactive          tabs
  hi  TabLine           ctermbg=255
  hi  Type              gui=NONE
  hi  VertSplit         gui=NONE             guibg=Gray
  hi  Visual            guibg=#ffd32e        gui=NONE          cterm=NONE      ctermbg=45    ctermfg=21
  hi  vimGroup          gui=NONE
  hi  vimGroupName      gui=NONE

else
  " backgroung=dark
  hi  Comment       guifg=LightBlue
  hi  CursorLine    cterm=NONE           ctermbg=26
  hi  DiffAdd       guibg=DarkGreen      ctermbg=DarkGreen    ctermfg=White
  hi  DiffChange    guibg=Gray30         ctermbg=DarkCyan     ctermfg=White
  hi  DiffDelete    guibg=DarkRed        guifg=Black          ctermbg=DarkRed   ctermfg=White
  hi  DiffText      gui=NONE             guibg=DarkCyan       ctermbg=DarkCyan  ctermfg=Yellow
  hi  Error         cterm=reverse        ctermfg=6
  hi  FileName      gui=NONE             guibg=White          guifg=Blue
  hi  FoldColumn    guibg=gray10
  hi  Folded        guibg=gray20
  hi  Identifier    guifg=Cyan
  hi  IncSearch     cterm=NONE           ctermbg=159          ctermfg=0
  hi  NonText       guifg=LavenderBlush  ctermfg=213
  hi  Normal        guibg=#010b36        guifg=Grey80         ctermfg=7
  hi  Pmenu         ctermbg=117          ctermfg=33
  hi  PmenuSbar     ctermbg=195
  hi  PmenuSel      ctermbg=38           ctermfg=22
  hi  PmenuThumb    ctermbg=12
  hi  PreProc       ctermfg=39
  hi  Search        guibg=Gold3          ctermbg=43           ctermfg=25
  hi  SpellBad      ctermbg=213          ctermfg=0
  hi  SpellCap      ctermbg=12           ctermfg=27
  hi  Statement     ctermfg=208
  hi  StatusLine    cterm=NONE           ctermbg=38           ctermfg=237
  hi  StatusLineNC  cterm=NONE           ctermbg=26           ctermfg=75
  hi  Type          gui=NONE             guifg=#7f98fa
  hi  Visual        cterm=NONE           ctermbg=23
  hi  VertSplit     guifg=Gray
endif
