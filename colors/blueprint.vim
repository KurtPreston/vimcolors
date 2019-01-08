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
hi       VertSplit guifg=#74a0c7 guibg=none    gui=none
hi     ColorColumn guifg=none    guibg=#2c4e6c gui=none
hi         TabLine guifg=#74a0c7 guibg=#2c4e6c gui=none
hi     TabLineFill guifg=#74a0c7 guibg=#2c4e6c gui=none
hi      TabLineSel guifg=none    guibg=#2c4e6c gui=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi       Directory guifg=none    guibg=none    gui=underline
hi          Search guifg=#2c4e6c guibg=#f9f871 gui=none
hi       IncSearch guifg=#2c4e6c guibg=#f9f871 gui=none

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
hi         NonText guifg=#74a0c7 guibg=none    gui=none
hi            Todo guifg=#97e483 guibg=none    gui=underline
hi      Underlined guifg=none    guibg=none    gui=underline
hi           Error guifg=#ff6681 guibg=none    gui=none
hi        ErrorMsg guifg=#ff6681 guibg=none    gui=none
hi      WarningMsg guifg=#f9f871 guibg=none    gui=none
hi          Ignore guifg=#335b7e guibg=none    gui=none
hi         Conceal guifg=none    guibg=none    gui=none
hi      SpecialKey guifg=#97e483 guibg=none    gui=none

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
hi        Function guifg=none    guibg=none    gui=none

" --------------------------------
" Language constructs
" --------------------------------
hi         Comment guifg=#74a0c7 guibg=none    gui=none

hi       Statement guifg=#97e483 guibg=none    gui=none
hi     Conditional guifg=#97e483 guibg=none    gui=none
hi          Repeat guifg=#97e483 guibg=none    gui=none
hi           Label guifg=#97e483 guibg=none    gui=none
hi        Operator guifg=#97e483 guibg=none    gui=none
hi         Keyword guifg=#97e483 guibg=none    gui=none
hi       Exception guifg=#97e483 guibg=none    gui=none

hi         Special guifg=none    guibg=none    gui=none
hi     SpecialChar guifg=none    guibg=none    gui=none
hi             Tag guifg=#74a0c7 guibg=none    gui=none
hi       Delimiter guifg=#74a0c7 guibg=none    gui=none
hi  SpecialComment guifg=#97e483 guibg=none    gui=none
hi           Debug guifg=#97e483 guibg=none    gui=none

" ----------
" - C like -
" ----------
hi         PreProc guifg=#97e483 guibg=none    gui=none
hi         Include guifg=#97e483 guibg=none    gui=none
hi          Define guifg=#97e483 guibg=none    gui=none
hi           Macro guifg=#97e483 guibg=none    gui=none
hi       PreCondit guifg=#97e483 guibg=none    gui=none

hi            Type guifg=none    guibg=none    gui=none
hi    StorageClass guifg=#97e483 guibg=none    gui=none
hi       Structure guifg=#97e483 guibg=none    gui=none
hi         Typedef guifg=#97e483 guibg=none    gui=none

" --------------------------------
" Diff
" --------------------------------
hi         DiffAdd guifg=#2c4e6c guibg=#97e483 gui=none
hi      DiffChange guifg=none    guibg=#305575 gui=none
hi      DiffDelete guifg=#497296 guibg=#25415a gui=none
hi        DiffText guifg=#2c4e6c guibg=#f9f871 gui=none
hi        DiffFile guifg=none    guibg=none    gui=underline

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
hi        SpellBad guifg=#ff6681 guibg=none    gui=none
hi        SpellCap guifg=#ff6681 guibg=none    gui=none
hi      SpellLocal guifg=#ff6681 guibg=none    gui=none
hi       SpellRare guifg=#ff6681 guibg=none    gui=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

hi  link diffAdded               DiffAdd
hi  link diffRemoved             DiffDelete

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
hi! link gitcommitUnmergedFile   WarningMsg
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile

