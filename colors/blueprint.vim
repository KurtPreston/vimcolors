" Author: Vu Le <thenewvu@gmail.com>
" Maintainer: Vu Le <thenewvu@gmail.com>
" Thanks to @ggalindezb for the template.

set background=light

highlight clear

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
hi          Normal guifg=#ffffff guibg=#045ba4 gui=none
hi          Cursor guifg=#ffffff guibg=#045ba4 gui=standout
hi      CursorLine guifg=#ffffff guibg=#045ba4 gui=none
hi          LineNr guifg=#ffffff guibg=#045ba4 gui=none
hi    CursorLineNR guifg=#aac6df guibg=#045ba4 gui=none

" -----------------
" - Number column -
" -----------------
hi    CursorColumn guifg=#aac6df guibg=#045ba4 gui=none
hi      FoldColumn guifg=#aac6df guibg=#045ba4 gui=none
hi      SignColumn guifg=#aac6df guibg=#045ba4 gui=none
hi          Folded guifg=#ffffff guibg=#045ba4 gui=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi       VertSplit guifg=#aac6df guibg=#045ba4 gui=none
hi     ColorColumn guifg=#aac6df guibg=#045ba4 gui=none
hi         TabLine guifg=#aac6df guibg=#5992c3 gui=none
hi     TabLineFill guifg=#aac6df guibg=#5992c3 gui=none
hi      TabLineSel guifg=#ffffff guibg=#5992c3 gui=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi       Directory guifg=#aac6df guibg=#045ba4 gui=none
hi          Search guifg=#aac6df guibg=#045ba4 gui=standout
hi       IncSearch guifg=#aac6df guibg=#045ba4 gui=standout

" -----------------
" - Prompt/Status -
" -----------------
hi      StatusLine guifg=#aac6df guibg=#5992c3 gui=none
hi    StatusLineNC guifg=#aac6df guibg=#5992c3 gui=none
hi        WildMenu guifg=#aac6df guibg=#5992c3 gui=none
hi        Question guifg=#aac6df guibg=#045ba4 gui=none
hi           Title guifg=#aac6df guibg=#045ba4 gui=none
hi         ModeMsg guifg=#aac6df guibg=#045ba4 gui=none
hi         MoreMsg guifg=#aac6df guibg=#045ba4 gui=none

" --------------
" - Visual aid -
" --------------
hi      MatchParen guifg=#ffd479 guibg=#045ba4 gui=standout
hi          Visual guifg=#aac6df guibg=#045ba4 gui=standout
hi       VisualNOS guifg=#aac6df guibg=#045ba4 gui=standout
hi         NonText guifg=#5992c3 guibg=#045ba4 gui=none

hi            Todo guifg=#aac6df guibg=#045ba4 gui=none
hi      Underlined guifg=#aac6df guibg=#045ba4 gui=underline
hi           Error guifg=#ff9179 guibg=#045ba4 gui=none
hi        ErrorMsg guifg=#ff9179 guibg=#045ba4 gui=none
hi      WarningMsg guifg=#ff9179 guibg=#045ba4 gui=none
hi          Ignore guifg=#045ba4 guibg=#045ba4 gui=none
hi      SpecialKey guifg=#aac6df guibg=#045ba4 gui=none

" --------------------------------
" Variable types
" --------------------------------
hi        Constant guifg=#aac6df guibg=#045ba4 gui=none
hi          String guifg=#aac6df guibg=#045ba4 gui=none
hi StringDelimiter guifg=#aac6df guibg=#045ba4 gui=none
hi       Character guifg=#aac6df guibg=#045ba4 gui=none
hi          Number guifg=#aac6df guibg=#045ba4 gui=none
hi         Boolean guifg=#aac6df guibg=#045ba4 gui=none
hi           Float guifg=#aac6df guibg=#045ba4 gui=none

hi      Identifier guifg=#ffffff guibg=#045ba4 gui=none
hi        Function guifg=#ffffff guibg=#045ba4 gui=none

" --------------------------------
" Language constructs
" --------------------------------
hi       Statement guifg=#ffffff guibg=#045ba4 gui=none
hi     Conditional guifg=#ffffff guibg=#045ba4 gui=none
hi          Repeat guifg=#ffffff guibg=#045ba4 gui=none
hi           Label guifg=#ffffff guibg=#045ba4 gui=none
hi        Operator guifg=#ffffff guibg=#045ba4 gui=none
hi         Keyword guifg=#ffffff guibg=#045ba4 gui=none
hi       Exception guifg=#ffffff guibg=#045ba4 gui=none
hi         Comment guifg=#5992c3 guibg=#045ba4 gui=none

hi         Special guifg=#aac6df guibg=#045ba4 gui=none
hi     SpecialChar guifg=#aac6df guibg=#045ba4 gui=none
hi             Tag guifg=#aac6df guibg=#045ba4 gui=none
hi       Delimiter guifg=#aac6df guibg=#045ba4 gui=none
hi  SpecialComment guifg=#aac6df guibg=#045ba4 gui=none
hi           Debug guifg=#aac6df guibg=#045ba4 gui=none

" ----------
" - C like -
" ----------
hi         PreProc guifg=#aac6df guibg=#045ba4 gui=none
hi         Include guifg=#aac6df guibg=#045ba4 gui=none
hi          Define guifg=#aac6df guibg=#045ba4 gui=none
hi           Macro guifg=#aac6df guibg=#045ba4 gui=none
hi       PreCondit guifg=#aac6df guibg=#045ba4 gui=none

hi            Type guifg=#ffffff guibg=#045ba4 gui=none
hi    StorageClass guifg=#ffffff guibg=#045ba4 gui=none
hi       Structure guifg=#ffffff guibg=#045ba4 gui=none
hi         Typedef guifg=#ffffff guibg=#045ba4 gui=none

" --------------------------------
" Diff
" --------------------------------
hi         DiffAdd guifg=#73fa79 guibg=#045ba4 gui=none
hi      DiffChange guifg=#ffd479 guibg=#045ba4 gui=none
hi      DiffDelete guifg=#ff9179 guibg=#045ba4 gui=none
hi        DiffText guifg=#ffffff guibg=#045ba4 gui=none
hi        DiffFile guifg=#76d6ff guibg=#045ba4 gui=none

hi            link diffAdded           DiffAdd
hi            link diffRemoved      DiffDelete

" --------------------------------
" Completion menu
" --------------------------------
hi           Pmenu guifg=#acc2df guibg=#5992c3 gui=none
hi        PmenuSel guifg=#ffffff guibg=#5992c3 gui=none
hi       PmenuSbar guifg=#aac2df guibg=#5992c3 gui=none
hi      PmenuThumb guifg=#aac2df guibg=#5992c3 gui=none

" --------------------------------
" Spelling
" --------------------------------
hi        SpellBad guifg=#ff9179 guibg=#045ba4 gui=none
hi        SpellCap guifg=#ff9179 guibg=#045ba4 gui=none
hi      SpellLocal guifg=#ff9179 guibg=#045ba4 gui=none
hi       SpellRare guifg=#ff9179 guibg=#045ba4 gui=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

