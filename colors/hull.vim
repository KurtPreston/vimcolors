hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='kull'
set background=dark

hi Normal           ctermfg=255   ctermbg=none cterm=none

hi Cursor           ctermfg=235   ctermbg=none cterm=none
hi IncSearch        ctermfg=235   ctermbg=255  cterm=none
hi Search           ctermfg=235   ctermbg=187  cterm=none
hi Visual           ctermfg=110   ctermbg=235  cterm=reverse
hi VisualNOS        ctermfg=231   ctermbg=none cterm=reverse

hi Constant         ctermfg=114   ctermbg=none cterm=bold
hi DiffAdd          ctermfg=114   ctermbg=none cterm=none
hi Number           ctermfg=114   ctermbg=none cterm=bold
hi String           ctermfg=114   ctermbg=none cterm=bold

hi CursorColumn     ctermfg=231   ctermbg=none cterm=none
hi CursorLine       ctermfg=231   ctermbg=none cterm=none
hi CursorLineNr     ctermfg=231   ctermbg=none cterm=none

hi Comment          ctermfg=252   ctermbg=none cterm=italic
hi DiffChange       ctermfg=255   ctermbg=none cterm=none
hi DiffDelete       ctermfg=255   ctermbg=none cterm=none
hi DiffText         ctermfg=255   ctermbg=none cterm=none
hi Directory        ctermfg=255   ctermbg=none cterm=none
hi Error            ctermfg=255   ctermbg=none cterm=none
hi ErrorMsg         ctermfg=0
hi Folded           ctermfg=255   ctermbg=none cterm=none
hi Function         ctermfg=255   ctermbg=none cterm=bold
hi Identifier       ctermfg=255   ctermbg=none cterm=none
hi Ignore           ctermfg=255   ctermbg=none cterm=none
hi Label            ctermfg=255   ctermbg=none cterm=none
hi LineNr           ctermfg=240   ctermbg=none cterm=none
hi MatchParen       ctermfg=229   ctermbg=241  cterm=none
hi ModeMsg          ctermfg=255   ctermbg=none cterm=none
hi MoreMsg          ctermfg=255   ctermbg=none cterm=none
hi NonText          ctermfg=240   ctermbg=none cterm=none
hi Pmenu            ctermfg=114   ctermbg=none cterm=none
hi PmenuSbar        ctermfg=255   ctermbg=none cterm=none
hi PmenuSel         ctermfg=255   ctermbg=none cterm=bold
hi PmenuThumb       ctermfg=255   ctermbg=none cterm=none
hi PreProc          ctermfg=255   ctermbg=none cterm=bold
hi Special          ctermfg=255   ctermbg=none cterm=bold,italic
hi SpecialKey       ctermfg=241   ctermbg=none cterm=none
hi Statement        ctermfg=231   ctermbg=none cterm=bold
hi StatusLine       ctermfg=255   ctermbg=239  cterm=bold
hi StatusLineNC     ctermfg=246   ctermbg=239  cterm=none
hi StorageClass     ctermfg=255   ctermbg=none cterm=bold
hi Structure        ctermfg=255   ctermbg=none cterm=bold
hi TabLine          ctermfg=255   ctermbg=none cterm=none
hi TabLineFill      ctermfg=255   ctermbg=none cterm=none
hi TabLineSel       ctermfg=255   ctermbg=none cterm=bold
hi Title            ctermfg=255   ctermbg=none cterm=none
hi Todo             ctermfg=255   ctermbg=100  cterm=bold
hi Type             ctermfg=255   ctermbg=none cterm=none
hi TypeDef          ctermfg=255   ctermbg=none cterm=bold
hi Underlined       ctermfg=255   ctermbg=none cterm=underline
hi VertSplit        ctermfg=255   ctermbg=none cterm=none
hi WarningMsg       ctermfg=255   ctermbg=none cterm=none
hi WildMenu         ctermfg=255   ctermbg=none cterm=none
hi cucumberTags     ctermfg=255   ctermbg=none cterm=bold
hi htmlTagN         ctermfg=255   ctermbg=none cterm=bold
hi rubySymbol       ctermfg=255   ctermbg=none cterm=none
hi vimHiTerm        ctermfg=255   ctermbg=none cterm=none
hi vimGroupName     ctermfg=255   ctermbg=none cterm=none
hi CurrentWordTwins ctermfg=255   ctermbg=242  cterm=none
hi Delimiter        ctermfg=grey  ctermbg=none cterm=none
hi Conceal          ctermfg=114   ctermbg=none cterm=bold

hi goParamName      ctermfg=255   ctermbg=none cterm=bold,italic
hi goParamType      ctermfg=255   ctermbg=none cterm=none
hi goFunctionCall   ctermfg=255   ctermbg=none cterm=none

hi texSpecialChar   ctermfg=243   ctermbg=none cterm=none
hi texStatement     ctermfg=255   ctermbg=none cterm=none
hi texMath          ctermfg=114   ctermbg=none cterm=bold,italic
hi texSuperscript   ctermfg=114   ctermbg=none cterm=bold,italic
hi texSubscript     ctermfg=114   ctermbg=none cterm=bold,italic

hi clear SignColumn

hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal

hi SpellBad   ctermfg=16 ctermbg=204 cterm=underline
hi SpellCap   cterm=underline
hi SpellRare  ctermfg=16 ctermbg=204 cterm=underline
hi SpellLocal cterm=underline
