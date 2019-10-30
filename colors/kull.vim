hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='kull'
set background=dark

hi Normal           ctermfg=grey  ctermbg=none cterm=none

hi Cursor           ctermfg=white ctermbg=none cterm=none
hi IncSearch        ctermfg=235   ctermbg=131  cterm=none
hi Search           ctermfg=235   ctermbg=187  cterm=none
hi Visual           ctermfg=110   ctermbg=235  cterm=reverse
hi VisualNOS        ctermfg=white ctermbg=none cterm=reverse

hi Constant         ctermfg=108   ctermbg=none cterm=bold
hi DiffAdd          ctermfg=108   ctermbg=none cterm=none
hi Number           ctermfg=108   ctermbg=none cterm=bold
hi String           ctermfg=108   ctermbg=none cterm=bold

hi CursorColumn     ctermfg=white ctermbg=none cterm=none
hi CursorLine       ctermfg=white ctermbg=none cterm=none
hi CursorLineNr     ctermfg=white ctermbg=none cterm=none

hi Comment          ctermfg=243   ctermbg=none cterm=italic
hi DiffChange       ctermfg=grey  ctermbg=none cterm=none
hi DiffDelete       ctermfg=grey  ctermbg=none cterm=none
hi DiffText         ctermfg=grey  ctermbg=none cterm=none
hi Directory        ctermfg=grey  ctermbg=none cterm=none
hi Error            ctermfg=grey  ctermbg=none cterm=none
hi Folded           ctermfg=grey  ctermbg=none cterm=none
hi Function         ctermfg=grey  ctermbg=none cterm=bold
hi Identifier       ctermfg=grey  ctermbg=none cterm=none
hi Ignore           ctermfg=grey  ctermbg=none cterm=none
hi Label            ctermfg=grey  ctermbg=none cterm=none
hi LineNr           ctermfg=240   ctermbg=none cterm=none
hi MatchParen       ctermfg=229   ctermbg=241  cterm=none
hi ModeMsg          ctermfg=grey  ctermbg=none cterm=none
hi MoreMsg          ctermfg=grey  ctermbg=none cterm=none
hi NonText          ctermfg=240   ctermbg=none cterm=none
hi Pmenu            ctermfg=grey  ctermbg=235  cterm=none
hi PmenuSbar        ctermfg=grey  ctermbg=131  cterm=none
hi PmenuSel         ctermfg=235   ctermbg=108  cterm=bold
hi PmenuThumb       ctermfg=grey  ctermbg=none cterm=none
hi PreProc          ctermfg=grey  ctermbg=none cterm=bold
hi Special          ctermfg=grey  ctermbg=none cterm=bold,italic
hi SpecialKey       ctermfg=238   ctermbg=none cterm=none
hi Statement        ctermfg=grey  ctermbg=none cterm=bold
hi StatusLine       ctermfg=grey  ctermbg=239  cterm=bold
hi StatusLineNC     ctermfg=246   ctermbg=239  cterm=none
hi StorageClass     ctermfg=grey  ctermbg=none cterm=bold
hi Structure        ctermfg=grey  ctermbg=none cterm=bold
hi TabLine          ctermfg=grey  ctermbg=none cterm=none
hi TabLineFill      ctermfg=grey  ctermbg=none cterm=none
hi TabLineSel       ctermfg=grey  ctermbg=none cterm=bold
hi Title            ctermfg=grey  ctermbg=none cterm=none
hi Todo             ctermfg=254   ctermbg=100  cterm=bold
hi Type             ctermfg=grey  ctermbg=none cterm=none
hi TypeDef          ctermfg=grey  ctermbg=none cterm=bold
hi Underlined       ctermfg=grey  ctermbg=none cterm=underline
hi VertSplit        ctermfg=grey  ctermbg=none cterm=none
hi WarningMsg       ctermfg=grey  ctermbg=none cterm=none
hi WildMenu         ctermfg=grey  ctermbg=none cterm=none
hi cucumberTags     ctermfg=grey  ctermbg=none cterm=bold
hi htmlTagN         ctermfg=grey  ctermbg=none cterm=bold
hi rubySymbol       ctermfg=grey  ctermbg=none cterm=none
hi vimHiTerm        ctermfg=grey  ctermbg=none cterm=none
hi vimGroupName     ctermfg=grey  ctermbg=none cterm=none
hi CurrentWordTwins ctermfg=grey  ctermbg=22   cterm=none
hi Delimiter        ctermfg=grey  ctermbg=none cterm=none
hi Conceal          ctermfg=108   ctermbg=none cterm=bold

hi goArgumentName   ctermfg=grey  ctermbg=none cterm=bold,italic
hi goArgumentType   ctermfg=grey  ctermbg=none cterm=none
hi goFunctionCall   ctermfg=grey  ctermbg=none cterm=none

hi texSpecialChar   ctermfg=243   ctermbg=none cterm=none
hi texStatement     ctermfg=grey  ctermbg=none cterm=none
hi texMath          ctermfg=108   ctermbg=none cterm=bold,italic
hi texSuperscript   ctermfg=108   ctermbg=none cterm=bold,italic
hi texSubscript     ctermfg=108   ctermbg=none cterm=bold,italic

hi clear SignColumn
