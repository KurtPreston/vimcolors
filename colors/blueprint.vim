" Author: Vu Le <thenewvu@gmail.com>
" Maintainer: Vu Le <thenewvu@gmail.com>
" License: MIT
" Thanks to @ggalindezb for the template.

highlight clear

set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="blueprint"

" bg      = #335b7e

" black   = #25415a
" white   = #74a0c7
" yellow  = #7f7f43 hsla( 60, 31%, 38%, 1)
" green   = #437f43 hsla(120, 31%, 38%, 1)
" cyan    = #437f7f hsla(180, 31%, 38%, 1)
" blue    = #43437f hsla(240, 31%, 38%, 1)
" magenta = #7f437f hsla(300, 31%, 38%, 1)
" red     = #a05454 hsla(360, 31%, 38%, 1)
"
" black   = #305575
" white   = #f1f6f9
" yellow  = #e3d082 hsla( 48, 64%, 70%, 1)
" green   = #97e483 hsla(108, 64%, 70%, 1)
" cyan    = #82e3d0 hsla(168, 64%, 70%, 1)
" blue    = #8295e3 hsla(228, 64%, 70%, 1)
" magenta = #d082e3 hsla(288, 64%, 70%, 1)
" red     = #e38295 hsla(348, 64%, 70%, 1)

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi          Normal guifg=#f1f6f9 guibg=#335b7e gui=none
hi          Cursor guifg=#335b7e guibg=#f1f6f9 gui=none
hi      CursorLine guifg=none    guibg=#2c4e6c gui=none
hi          LineNr guifg=#74a0c7 guibg=none    gui=none
hi    CursorLineNR guifg=none    guibg=none    gui=none

" -----------------
" - Number column -
" -----------------
hi    CursorColumn guifg=none    guibg=#2c4e6c gui=none
hi      FoldColumn guifg=#74a0c7 guibg=none    gui=none
hi      SignColumn guifg=#74a0c7 guibg=none    gui=none
hi          Folded guifg=none    guibg=none    gui=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi       VertSplit guifg=#2c4e6c guibg=none    gui=none
hi     ColorColumn guifg=none    guibg=#2c4e6c gui=none
hi         TabLine guifg=#74a0c7 guibg=#2c4e6c gui=none
hi     TabLineFill guifg=#74a0c7 guibg=#2c4e6c gui=none
hi      TabLineSel guifg=none    guibg=#2c4e6c gui=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi       Directory guifg=none    guibg=none    gui=underline
hi          Search guifg=none    guibg=none    gui=standout
hi       IncSearch guifg=none    guibg=none    gui=standout

" -----------------
" - Prompt/Status -
" -----------------
hi      StatusLine guifg=#74a0c7 guibg=#2c4e6c gui=none
hi    StatusLineNC guifg=#74a0c7 guibg=#2c4e6c gui=none
hi        WildMenu guifg=#74a0c7 guibg=#2c4e6c gui=none
hi        Question guifg=#97e483 guibg=none    gui=none
hi           Title guifg=none    guibg=none    gui=none
hi         ModeMsg guifg=none    guibg=none    gui=none
hi         MoreMsg guifg=none    guibg=none    gui=none

" --------------
" - Visual aid -
" --------------
hi      MatchParen guifg=none    guibg=none    gui=underline
hi          Visual guifg=none    guibg=#2c4e6c gui=none
hi       VisualNOS guifg=none    guibg=#2c4e6c gui=none
hi         NonText guifg=#2c4e6c guibg=none    gui=none
hi            Todo guifg=#74a0c7 guibg=none    gui=underline
hi      Underlined guifg=none    guibg=none    gui=underline
hi           Error guifg=#2c4e6c guibg=#e38295 gui=none
hi        ErrorMsg guifg=#2c4e6c guibg=#e38295 gui=none
hi      WarningMsg guifg=#2c4e6c guibg=#e3d082 gui=none
hi          Ignore guifg=#335b7e guibg=none    gui=none
hi         Conceal guifg=none    guibg=none    gui=none
hi      SpecialKey guifg=#82e3d0 guibg=none    gui=none

" --------------------------------
" Variable types
" --------------------------------
hi        Constant guifg=none    guibg=none    gui=none
hi          String guifg=none    guibg=none    gui=none
hi StringDelimiter guifg=#74a0c7 guibg=none    gui=none
hi       Character guifg=none    guibg=none    gui=none
hi          Number guifg=none    guibg=none    gui=none
hi         Boolean guifg=none    guibg=none    gui=none
hi           Float guifg=none    guibg=none    gui=none

hi      Identifier guifg=none    guibg=none    gui=none
hi        Function guifg=#82e3d0 guibg=none    gui=none

" --------------------------------
" Language constructs
" --------------------------------
hi         Comment guifg=#74a0c7 guibg=none    gui=none

hi       Statement guifg=#97e483 guibg=none    gui=none
hi     Conditional guifg=#97e483 guibg=none    gui=none
hi          Repeat guifg=#97e483 guibg=none    gui=none
hi           Label guifg=#97e483 guibg=none    gui=none
hi        Operator guifg=#82e3d0 guibg=none    gui=none
hi         Keyword guifg=#97e483 guibg=none    gui=none
hi       Exception guifg=#97e483 guibg=none    gui=none

hi         Special guifg=#82e3d0 guibg=none    gui=none
hi     SpecialChar guifg=#82e3d0 guibg=none    gui=none
hi             Tag guifg=#82e3d0 guibg=none    gui=none
hi       Delimiter guifg=#74a0c7 guibg=none    gui=none
hi  SpecialComment guifg=#82e3d0 guibg=none    gui=none
hi           Debug guifg=#82e3d0 guibg=none    gui=none

" ----------
" - C like -
" ----------
hi         PreProc guifg=#97e483 guibg=none    gui=none
hi         Include guifg=#97e483 guibg=none    gui=none
hi          Define guifg=#97e483 guibg=none    gui=none
hi           Macro guifg=#97e483 guibg=none    gui=none
hi       PreCondit guifg=#97e483 guibg=none    gui=none

hi            Type guifg=none    guibg=none    gui=none
hi    StorageClass guifg=#82e3d0 guibg=none    gui=none
hi       Structure guifg=#97e483 guibg=none    gui=none
hi         Typedef guifg=#97e483 guibg=none    gui=none

" --------------------------------
" Diff
" --------------------------------
hi         DiffAdd guifg=none    guibg=#437f43 gui=none
hi      DiffChange guifg=none    guibg=#305575 gui=none
hi      DiffDelete guifg=#497296 guibg=#25415a gui=none
hi        DiffText guifg=none    guibg=#7f4343 gui=none
hi        DiffFile guifg=#e3d082 guibg=none    gui=none


" --------------------------------
" Completion menu
" --------------------------------
hi           Pmenu guifg=#74a0c7 guibg=#2c4e6c gui=none
hi        PmenuSel guifg=none    guibg=#2c4e6c gui=none
hi       PmenuSbar guifg=#74a0c7 guibg=#2c4e6c gui=none
hi      PmenuThumb guifg=#74a0c7 guibg=#2c4e6c gui=none

" --------------------------------
" Spelling
" --------------------------------
hi        SpellBad guifg=#2c4e6c guibg=#e38295 gui=none
hi        SpellCap guifg=#2c4e6c guibg=#e3d082 gui=none
hi      SpellLocal guifg=#2c4e6c guibg=#e3d082 gui=none
hi       SpellRare guifg=#2c4e6c guibg=#e3d082 gui=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

hi  link diffAdded               DiffAdd
hi  link diffRemoved             DiffDelete
hi  link diffLine                DiffFile
hi  link diffIndexLine           DiffFile
hi  link diffSubName             DiffFile

hi! link gitDateHeader           gitIdentityHeader
hi! link gitIdentityHeader       gitIdentityKeyword
hi! link gitIdentityKeyword      Label
hi! link gitNotesHeader          gitKeyword
hi! link gitReflogHeader         gitKeyword
hi! link gitKeyword              Keyword
hi! link gitIdentity             String
hi! link gitEmailDelimiter       Delimiter
hi! link gitEmail                Special
hi! link gitDate                 Number
hi! link gitMode                 Number
hi! link gitHashAbbrev           gitHash
hi! link gitHash                 Identifier
hi! link gitReflogMiddle         gitReference
hi! link gitReference            Function
hi! link gitStage                gitType
hi! link gitType                 Type
hi! link gitDiffAdded            diffAdded
hi! link gitDiffRemoved          diffRemoved
hi! link gitcommitDiscardedFile  diffRemoved
hi! link gitcommitSelectedFile   diffAdded
hi! link gitcommitUnmergedFile   ErrorMsg
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile

let g:terminal_color_background = "#335b7e"
let g:terminal_color_foreground = "#f1f6f9"

" dark0 + gray
let g:terminal_color_0 = "#25415a"
let g:terminal_color_8 = "#25415a"

" neutral_red + bright_red
let g:terminal_color_1 = "#e38295"
let g:terminal_color_9 = "#e38295"

" neutral_green + bright_green
let g:terminal_color_2 = "#97e483"
let g:terminal_color_10 = "#97e483"

" neutral_yellow + bright_yellow
let g:terminal_color_3  = "#e3d082"
let g:terminal_color_11 = "#e3d082"

" neutral_blue + bright_blue
let g:terminal_color_4 = "#8295e3"
let g:terminal_color_12 = "#8295e3"

" neutral_purple + bright_purple
let g:terminal_color_5 = "#d082e3"
let g:terminal_color_13 = "#d082e3"

" neutral_aqua + faded_aqua
let g:terminal_color_6 = "#82e3d0"
let g:terminal_color_14 = "#82e3d0"

" light4 + light1
let g:terminal_color_7 = "#f1f6f9"
let g:terminal_color_15 = "#f1f6f9"
