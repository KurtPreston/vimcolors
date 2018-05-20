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
hi          Normal guifg=#aac6df guibg=#045ba4 gui=none
hi          Cursor guifg=#aac6df guibg=#045ba4 gui=standout
hi      CursorLine guifg=#aac6df guibg=#045ba4 gui=none
hi          LineNr guifg=#ffffff guibg=#045ba4 gui=none
hi    CursorLineNR guifg=#aac6df guibg=#045ba4 gui=none

" -----------------
" - Number column -
" -----------------
hi    CursorColumn guifg=#aac6df guibg=#045ba4 gui=none
hi      FoldColumn guifg=#aac6df guibg=#045ba4 gui=none
hi      SignColumn guifg=#aac6df guibg=#045ba4 gui=none
hi          Folded guifg=#aac6df guibg=#045ba4 gui=none

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
hi      MatchParen guifg=#aac6df guibg=#045ba4 gui=standout
hi          Visual guifg=#aac6df guibg=#045ba4 gui=standout
hi       VisualNOS guifg=#aac6df guibg=#045ba4 gui=standout
hi         NonText guifg=#ffffff guibg=#045ba4 gui=none

hi            Todo guifg=#aac6df guibg=#045ba4 gui=underline
hi      Underlined guifg=#aac6df guibg=#045ba4 gui=underline
hi           Error guifg=#aac6df guibg=#045ba4 gui=none
hi        ErrorMsg guifg=#aac6df guibg=#045ba4 gui=none
hi      WarningMsg guifg=#aac6df guibg=#045ba4 gui=none
hi          Ignore guifg=none    guibg=#045ba4 gui=none
hi      SpecialKey guifg=#aac6df guibg=#045ba4 gui=none

" --------------------------------
" Variable types
" --------------------------------
hi        Constant guifg=#ffffff guibg=#045ba4 gui=none
hi          String guifg=#ffffff guibg=#045ba4 gui=none
hi StringDelimiter guifg=#ffffff guibg=#045ba4 gui=none
hi       Character guifg=#ffffff guibg=#045ba4 gui=none
hi          Number guifg=#ffffff guibg=#045ba4 gui=none
hi         Boolean guifg=#ffffff guibg=#045ba4 gui=none
hi           Float guifg=#ffffff guibg=#045ba4 gui=none

hi      Identifier guifg=#aac6df guibg=#045ba4 gui=none
hi        Function guifg=#aac6df guibg=#045ba4 gui=none

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

hi         Special guifg=#ffffff guibg=#045ba4 gui=none
hi     SpecialChar guifg=#ffffff guibg=#045ba4 gui=none
hi             Tag guifg=#ffffff guibg=#045ba4 gui=none
hi       Delimiter guifg=#ffffff guibg=#045ba4 gui=none
hi  SpecialComment guifg=#ffffff guibg=#045ba4 gui=none
hi           Debug guifg=#ffffff guibg=#045ba4 gui=none

" ----------
" - C like -
" ----------
hi         PreProc guifg=#ffffff guibg=#045ba4 gui=none
hi         Include guifg=#ffffff guibg=#045ba4 gui=none
hi          Define guifg=#ffffff guibg=#045ba4 gui=none
hi           Macro guifg=#ffffff guibg=#045ba4 gui=none
hi       PreCondit guifg=#ffffff guibg=#045ba4 gui=none

hi            Type guifg=#aac6df guibg=#045ba4 gui=none
hi    StorageClass guifg=#aac6df guibg=#045ba4 gui=none
hi       Structure guifg=#aac6df guibg=#045ba4 gui=none
hi         Typedef guifg=#aac6df guibg=#045ba4 gui=none

" --------------------------------
" Diff
" --------------------------------
hi         DiffAdd guifg=#76d6ff guibg=#045ba4 gui=none
hi      DiffChange guifg=#ffd479 guibg=#045ba4 gui=none
hi      DiffDelete guifg=#ff7e79 guibg=#045ba4 gui=none
hi        DiffText guifg=#aac6df guibg=#045ba4 gui=none
hi        DiffFile guifg=#aac6df guibg=#045ba4 gui=underline

hi            link diffAdded           DiffAdd
hi            link diffRemoved      DiffDelete

" --------------------------------
" Completion menu
" --------------------------------
hi           Pmenu guifg=#aac6df guibg=#045ba4 gui=standout
hi        PmenuSel guifg=#aac6df guibg=#045ba4 gui=none
hi       PmenuSbar guifg=#aac6df guibg=#045ba4 gui=none
hi      PmenuThumb guifg=#aac6df guibg=#045ba4 gui=none

" --------------------------------
" Spelling
" --------------------------------
hi        SpellBad guifg=red     guibg=#045ba4 gui=underline
hi        SpellCap guifg=red     guibg=#045ba4 gui=underline
hi      SpellLocal guifg=red     guibg=#045ba4 gui=underline
hi       SpellRare guifg=red     guibg=#045ba4 gui=underline

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

