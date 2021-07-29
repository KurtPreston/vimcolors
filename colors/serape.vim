" Serape Color Scheme
" File:     ~/.vim/colors/serape.vim
" Author:   Jason Long <jasonlongball@gmail.com>
" Version:  v0.2.3

if v:version > 600
  highlight clear
endif

if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="serape"

" Editor settings
hi Normal          ctermfg=none    ctermbg=none
hi Cursor          ctermfg=26      ctermbg=7
hi CursorLine      ctermfg=none    ctermbg=none     cterm=underline
hi LineNr          ctermfg=245     ctermbg=none
hi CursorLineNR    ctermfg=184     ctermbg=none     cterm=bold

" Number column
hi CursorColumn    ctermfg=255     ctermbg=235      cterm=reverse
hi FoldColumn      ctermfg=245     ctermbg=235
hi SignColumn      ctermfg=15      ctermbg=235
hi Folded          ctermfg=245     ctermbg=235

" Window/Tab delimiters
hi VertSplit       ctermfg=235     ctermbg=235
hi ColorColumn     ctermfg=none    ctermbg=235
hi TabLine         ctermfg=253     ctermbg=235
hi TabLineFill     ctermfg=240     ctermbg=235
hi TabLineSel      ctermfg=253     ctermbg=235

" File Navigation / Searching
hi Directory       ctermfg=149     ctermbg=none
hi Search          ctermfg=15      ctermbg=202
hi IncSearch       ctermfg=172     ctermbg=15

" Prompt/Status
hi StatusLine      ctermfg=255     ctermbg=235      cterm=bold
hi StatusLineNC    ctermfg=245     ctermbg=235      cterm=bold
hi WildMenu        ctermfg=32      ctermbg=235      cterm=bold
hi Question        ctermfg=none    ctermbg=none
hi Title           ctermfg=15      ctermbg=none     cterm=bold
hi ModeMsg         ctermfg=15      ctermbg=none     cterm=bold
hi MoreMsg         ctermfg=15      ctermbg=none     cterm=bold

" Visual aid
hi MatchParen      ctermfg=none    ctermbg=241      cterm=bold
hi Visual          ctermfg=none    ctermbg=none     cterm=reverse
hi VisualNOS       ctermfg=none    ctermbg=none     cterm=reverse
hi NonText         ctermfg=245     ctermbg=none

hi Todo            ctermfg=11     ctermbg=none cterm=bold
hi Underlined      ctermfg=81      ctermbg=none
hi Error           ctermfg=15      ctermbg=9
hi ErrorMsg        ctermfg=9       ctermbg=15       cterm=reverse,bold
hi WarningMsg      ctermfg=11      ctermbg=none     cterm=reverse,bold
hi Ignore          ctermfg=0       ctermbg=0
hi SpecialKey      ctermfg=238     ctermbg=234

" Variable type
hi Constant        ctermfg=32      ctermbg=none
hi String          ctermfg=32      ctermbg=none
hi StringDelimiter ctermfg=26      ctermbg=none
hi Character       ctermfg=32      ctermbg=none
hi Number          ctermfg=38      ctermbg=none     cterm=bold
hi Boolean         ctermfg=32      ctermbg=none
hi Float           ctermfg=38      ctermbg=none     cterm=bold

hi Identifier      ctermfg=15      ctermbg=none     cterm=bold
hi Function        ctermfg=4       ctermbg=none     cterm=none

" Language construct
hi Statement       ctermfg=202     ctermbg=none     cterm=bold
hi Conditional     ctermfg=202     ctermbg=none     cterm=bold
hi Repeat          ctermfg=202     ctermbg=none     cterm=bold
hi Operator        ctermfg=214     ctermbg=none
hi Label           ctermfg=202     ctermbg=none     cterm=bold
hi Keyword         ctermfg=202     ctermbg=none     cterm=bold
hi Exception       ctermfg=202     ctermbg=none     cterm=bold
hi Comment         ctermfg=244     ctermbg=none

hi Special         ctermfg=214     ctermbg=none
hi SpecialChar     ctermfg=214     ctermbg=none
hi Tag             ctermfg=214     ctermbg=none
hi Delimiter       ctermfg=214     ctermbg=none
hi SpecialComment  ctermfg=244     ctermbg=none
hi Debug           ctermfg=214     ctermbg=none

" C like
hi PreProc         ctermfg=196     ctermbg=none     cterm=bold
hi Include         ctermfg=196     ctermbg=none     cterm=none
hi Define          ctermfg=196     ctermbg=none     cterm=bold
hi Macro           ctermfg=196     ctermbg=none     cterm=bold
hi PreCondit       ctermfg=196     ctermbg=none     cterm=bold

hi Type            ctermfg=154     ctermbg=none     cterm=none
hi StorageClass    ctermfg=154     ctermbg=none     cterm=none
hi Structure       ctermfg=154     ctermbg=none     cterm=none
hi Typedef         ctermfg=154     ctermbg=none     cterm=none

" Diff
hi DiffAdd         ctermfg=15      ctermbg=22
hi DiffChange      ctermfg=15      ctermbg=18
hi DiffDelete      ctermfg=88      ctermbg=88
hi DiffText        ctermfg=11      ctermbg=0        cterm=reverse
hi DiffFile        ctermfg=15      ctermbg=none     cterm=bold

" Diff files (patches)
hi DiffAdded       ctermfg=10      ctermbg=none
hi DiffChanged     ctermfg=18      ctermbg=none
hi DiffRemoved     ctermfg=9       ctermbg=none
hi DiffSubname     ctermfg=202     ctermbg=none     cterm=bold
hi DiffIndexLine   ctermfg=202     ctermbg=none     cterm=bold

" Completion menu
hi Pmenu           ctermfg=15      ctermbg=235
hi PmenuSel        ctermfg=235     ctermbg=229      cterm=bold
hi PmenuSbar       ctermfg=229     ctermbg=229
hi PmenuThumb      ctermfg=none    ctermbg=235

" Spelling
hi SpellBad        ctermfg=9       ctermbg=none     cterm=underline
hi SpellCap        ctermfg=51      ctermbg=none     cterm=underline
hi SpellLocal      ctermfg=9       ctermbg=none     cterm=underline
hi SpellRare       ctermfg=51      ctermbg=none     cterm=underline

" Git Commit
hi GitCommitSummary ctermfg=4      ctermbg=none     cterm=bold
hi GitCommitType   ctermfg=15      ctermbg=none

" HTML Tags
hi htmlTag         ctermfg=39      ctermbg=none     cterm=bold
hi htmlEndTag      ctermfg=39      ctermbg=none     cterm=bold
hi htmlTagName     ctermfg=214     ctermbg=none
hi htmlTagN        ctermfg=214     ctermbg=none
hi htmlEvent       ctermfg=15      ctermbg=none
hi htmlSpecialChar ctermfg=77      ctermbg=none

" Javascript
hi jsFuncName      ctermfg=134     ctermbg=none     cterm=bold
hi jsThis          ctermfg=214     ctermbg=none     cterm=bold

" CSS
hi cssClassName    ctermfg=134     ctermbg=none     cterm=bold
hi cssClassNameDot ctermfg=15      ctermbg=none
hi cssIdentifier   ctermfg=133     ctermbg=none     cterm=bold
hi cssBraces       ctermfg=15      ctermbg=none     cterm=bold

" Python
hi pythonImport    ctermfg=196     ctermbg=none     cterm=none
hi pythonEscape    ctermfg=26      ctermbg=none     cterm=bold

" Make
hi makeTarget      ctermfg=202      ctermbg=none     cterm=bold
hi makeSpecTarget  ctermfg=11       ctermbg=none     cterm=bold
hi makeCommands    ctermfg=153      ctermbg=none     cterm=bold

" NERD Tree
hi NERDTreeDir     ctermfg=214      ctermbg=none      cterm=bold
hi NERDTreeDirSlash ctermfg=15      ctermbg=none      cterm=bold
hi NERDTreeClosable ctermfg=15      ctermbg=none      cterm=bold
hi NERDTreeOpenable ctermfg=15      ctermbg=none      cterm=bold

" Terminal
hi StatusLineTerm  ctermfg=15       ctermbg=235      cterm=bold
hi StatusLineTermNC ctermfg=245     ctermbg=235      cterm=bold
