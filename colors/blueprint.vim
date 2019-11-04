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

" black   = #2c4e6c
" white   = #74a0c7
" yellow  = #7f7f43 hsla( 60, 31%, 38%, 1)
" green   = #437f43 hsla(120, 31%, 38%, 1)
" cyan    = #437f7f hsla(180, 31%, 38%, 1)
" blue    = #43437f hsla(240, 31%, 38%, 1)
" magenta = #7f437f hsla(300, 31%, 38%, 1)
" red     = #a05454 hsla(360, 31%, 38%, 1)
"
" black   = #305575
" white   = #ffffff
" yellow  = #ede0ab hsla( 48, 64%, 80%, 1)
" green   = #b8edab hsla(108, 64%, 80%, 1)
" cyan    = #abede0 hsla(168, 64%, 80%, 1)
" blue    = #abb8ed hsla(228, 64%, 80%, 1)
" magenta = #e0abed hsla(288, 64%, 80%, 1)
" red     = #edabb8 hsla(348, 64%, 80%, 1)

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi          Normal guifg=#ffffff guibg=#335b7e gui=none
hi          Cursor guifg=#335b7e guibg=#ffffff gui=none
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
hi        Question guifg=#b8edab guibg=none    gui=none
hi           Title guifg=none    guibg=none    gui=none
hi         ModeMsg guifg=none    guibg=none    gui=none
hi         MoreMsg guifg=none    guibg=none    gui=none

" --------------
" - Visual aid -
" --------------
hi      MatchParen guifg=none    guibg=none    gui=underline
hi          Visual guifg=none    guibg=#25415a gui=none
hi       VisualNOS guifg=none    guibg=#25415a gui=none
hi         NonText guifg=#2c4e6c guibg=none    gui=none
hi            Todo guifg=#74a0c7 guibg=none    gui=underline
hi      Underlined guifg=none    guibg=none    gui=underline
hi           Error guifg=#335b7e guibg=#edabb8 gui=none
hi        ErrorMsg guifg=#335b7e guibg=#edabb8 gui=none
hi      WarningMsg guifg=#335b7e guibg=#ede0ab gui=none
hi          Ignore guifg=#335b7e guibg=none    gui=none
hi         Conceal guifg=#abede0 guibg=none    gui=none
hi      SpecialKey guifg=#abede0 guibg=none    gui=none

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
hi        Function guifg=#abede0 guibg=none    gui=none

" --------------------------------
" Language constructs
" --------------------------------
hi         Comment guifg=#74a0c7 guibg=none    gui=none

hi       Statement guifg=#b8edab guibg=none    gui=none
hi     Conditional guifg=#b8edab guibg=none    gui=none
hi          Repeat guifg=#b8edab guibg=none    gui=none
hi           Label guifg=#b8edab guibg=none    gui=none
hi        Operator guifg=#abede0 guibg=none    gui=none
hi         Keyword guifg=#b8edab guibg=none    gui=none
hi       Exception guifg=#b8edab guibg=none    gui=none

hi         Special guifg=#abede0 guibg=none    gui=none
hi     SpecialChar guifg=#abede0 guibg=none    gui=none
hi             Tag guifg=#abede0 guibg=none    gui=none
hi       Delimiter guifg=#74a0c7 guibg=none    gui=none
hi  SpecialComment guifg=#abede0 guibg=none    gui=none
hi           Debug guifg=#abede0 guibg=none    gui=none

" ----------
" - C like -
" ----------
hi         PreProc guifg=#b8edab guibg=none    gui=none
hi         Include guifg=#b8edab guibg=none    gui=none
hi          Define guifg=#b8edab guibg=none    gui=none
hi           Macro guifg=#b8edab guibg=none    gui=none
hi       PreCondit guifg=#b8edab guibg=none    gui=none

hi            Type guifg=#b8edab guibg=none    gui=none
hi    StorageClass guifg=#b8edab guibg=none    gui=none
hi       Structure guifg=#b8edab guibg=none    gui=none
hi         Typedef guifg=#b8edab guibg=none    gui=none

" --------------------------------
" Diff
" --------------------------------
hi         DiffAdd guifg=none    guibg=#437f43 gui=none
hi      DiffChange guifg=none    guibg=#2c4e6c gui=none
hi      DiffDelete guifg=none    guibg=#a05454 gui=none
hi        DiffText guifg=none    guibg=none    gui=standout
hi        DiffFile guifg=#ede0ab guibg=none    gui=none


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
hi        SpellBad guifg=#335b7e guibg=#edabb8 gui=none
hi        SpellCap guifg=#335b7e guibg=#ede0ab gui=none
hi      SpellLocal guifg=#335b7e guibg=#ede0ab gui=none
hi       SpellRare guifg=#335b7e guibg=#ede0ab gui=none

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
let g:terminal_color_foreground = "#ffffff"

" dark0 + gray
let g:terminal_color_0 = "#2c4e6c"
let g:terminal_color_8 = "#2c4e6c"

" neutral_red + bright_red
let g:terminal_color_1 = "#edabb8"
let g:terminal_color_9 = "#edabb8"

" neutral_green + bright_green
let g:terminal_color_2 = "#b8edab"
let g:terminal_color_10 = "#b8edab"

" neutral_yellow + bright_yellow
let g:terminal_color_3  = "#ede0ab"
let g:terminal_color_11 = "#ede0ab"

" neutral_blue + bright_blue
let g:terminal_color_4 = "#abb8ed"
let g:terminal_color_12 = "#abb8ed"

" neutral_purple + bright_purple
let g:terminal_color_5 = "#e0abed"
let g:terminal_color_13 = "#e0abed"

" neutral_aqua + faded_aqua
let g:terminal_color_6 = "#abede0"
let g:terminal_color_14 = "#abede0"

" light4 + light1
let g:terminal_color_7 = "#ffffff"
let g:terminal_color_15 = "#ffffff"
