" Vim color file
" Maintainer: github.com/prognostic
" Last Change: 2018/02/05
" version: 0.0.7
" License: The MIT License (MIT)

set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "plasticine"

hi Normal         ctermfg=15   ctermbg=66   cterm=none

hi Comment        ctermfg=109  ctermbg=none cterm=none

hi Character      ctermfg=195  ctermbg=none cterm=none
hi Float          ctermfg=195  ctermbg=none cterm=none
hi Number         ctermfg=123  ctermbg=none cterm=none
hi Boolean        ctermfg=195  ctermbg=none cterm=none
hi String         ctermfg=151  ctermbg=none cterm=none
hi Constant       ctermfg=195  ctermbg=none cterm=none

hi Identifier     ctermfg=229  ctermbg=none cterm=none
hi Function       ctermfg=15   ctermbg=none cterm=bold

hi Repeat         ctermfg=115  ctermbg=none cterm=bold
hi Conditional    ctermfg=115  ctermbg=none cterm=bold

hi IncSearch      ctermfg=109  ctermbg=1    cterm=none
hi WildMenu       ctermfg=none ctermbg=248  cterm=none
hi SignColumn     ctermfg=109  ctermbg=60   cterm=none
hi SpecialComment ctermfg=220  ctermbg=none cterm=none
hi Typedef        ctermfg=111  ctermbg=none cterm=bold
hi Title          ctermfg=189  ctermbg=235  cterm=bold
hi Folded         ctermfg=109  ctermbg=248  cterm=none
hi PreCondit      ctermfg=220  ctermbg=none cterm=none
hi TabLine        ctermfg=109  ctermbg=66   cterm=bold
hi TabLineFill    ctermfg=109  ctermbg=66   cterm=bold
hi TabLineSel     ctermfg=241  ctermbg=109  cterm=bold
hi Include        ctermfg=15   ctermbg=none cterm=none
hi StatusLineNC   ctermfg=109  ctermbg=66   cterm=bold
hi NonText        ctermfg=195  ctermbg=none cterm=none
hi DiffText       ctermfg=none ctermbg=52   cterm=none
hi ErrorMsg       ctermfg=195  ctermbg=88   cterm=none
hi Debug          ctermfg=220  ctermbg=none cterm=none
hi PMenuSbar      ctermfg=none ctermbg=102  cterm=none
hi SpecialChar    ctermfg=220  ctermbg=none cterm=none
hi StorageClass   ctermfg=111  ctermbg=none cterm=bold
hi Todo           ctermfg=229  ctermbg=109  cterm=bold
hi Special        ctermfg=120  ctermbg=none cterm=none
hi LineNr         ctermfg=109  ctermbg=none cterm=none
hi StatusLine     ctermfg=241  ctermbg=109  cterm=bold
hi Label          ctermfg=220  ctermbg=none cterm=bold
hi PMenuSel       ctermfg=109  ctermbg=1    cterm=none
hi Search         ctermfg=66   ctermbg=194  cterm=none
hi Delimiter      ctermfg=15   ctermbg=none cterm=none
hi Statement      ctermfg=229  ctermbg=none cterm=bold
hi SpellRare      ctermfg=189  ctermbg=235  cterm=underline
hi Operator       ctermfg=152  ctermbg=none cterm=bold
hi CursorLine     ctermfg=none ctermbg=none cterm=none
hi WarningMsg     ctermfg=195  ctermbg=88   cterm=none
hi VisualNOS      ctermfg=109  ctermbg=189  cterm=underline
hi DiffDelete     ctermfg=none ctermbg=235  cterm=none
hi ModeMsg        ctermfg=15   ctermbg=109  cterm=bold
hi CursorColumn   ctermfg=none ctermbg=236  cterm=none
hi Define         ctermfg=115  ctermbg=none cterm=none
hi FoldColumn     ctermfg=109  ctermbg=248  cterm=none
hi PreProc        ctermfg=229  ctermbg=none cterm=none
hi Visual         ctermfg=109  ctermbg=189  cterm=none
hi MoreMsg        ctermfg=220  ctermbg=none cterm=bold
hi SpellCap       ctermfg=189  ctermbg=235  cterm=underline
hi VertSplit      ctermfg=109  ctermbg=66   cterm=bold
hi Exception      ctermfg=220  ctermbg=none cterm=bold
hi Keyword        ctermfg=116  ctermbg=none cterm=bold
hi Type           ctermfg=121  ctermbg=none cterm=bold
hi DiffChange     ctermfg=none ctermbg=52   cterm=none
hi Cursor         ctermfg=109  ctermbg=15   cterm=none
hi SpellLocal     ctermfg=189  ctermbg=235  cterm=underline
hi Error          ctermfg=195  ctermbg=88   cterm=none
hi PMenu          ctermfg=109  ctermbg=66   cterm=none
hi SpecialKey     ctermfg=195  ctermbg=none cterm=none
hi Tag            ctermfg=112  ctermbg=none cterm=none
hi PMenuThumb     ctermfg=none ctermbg=248  cterm=none
hi MatchParen     ctermfg=16   ctermbg=15   cterm=bold
hi SpellBad       ctermfg=189  ctermbg=235  cterm=underline
hi Directory      ctermfg=116  ctermbg=none cterm=bold
hi Structure      ctermfg=111  ctermbg=none cterm=bold
hi Macro          ctermfg=220  ctermbg=none cterm=none
hi Underlined     ctermfg=189  ctermbg=235  cterm=underline
hi DiffAdd        ctermfg=none ctermbg=236  cterm=none
hi cursorim       ctermfg=109  ctermbg=60   cterm=none
hi EndOfBuffer    ctermfg=109  ctermbg=none cterm=none
hi CursorLineNR   ctermfg=109  ctermbg=none cterm=bold

hi htmlLink       ctermfg=15  ctermbg=none cterm=none
hi htmlH1         ctermfg=15  ctermbg=none cterm=none
hi htmlH2         ctermfg=15  ctermbg=none cterm=none
hi htmlH3         ctermfg=15  ctermbg=none cterm=none
hi htmlH4         ctermfg=15  ctermbg=none cterm=none
hi htmlH5         ctermfg=15  ctermbg=none cterm=none
hi htmlH6         ctermfg=15  ctermbg=none cterm=none

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --

"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --

