" Vim color file - magicka
" See interactive colorscheme editors:
" http://bytefluent.com/vivify
" https://terminal.sexy

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "magicka"

"hi TabLineSel
"hi SpellRare
"hi Float
"hi Union
"hi TabLineFill
"hi CursorLine
"hi CursorColumn
"hi EnumerationName
"hi SpellCap
"hi SpellLocal
"hi DefinedName
"hi MatchParen
"hi LocalVariable
"hi SpellBad
"hi TabLine
"hi clear
" hi Normal guifg=#deceb9 guibg=#012c33 guisp=#012c33 gui=NONE ctermfg=187 ctermbg=23 cterm=NONE
" reds #c6a3b5 #9c6e80 #a6556a
hi Normal guifg=#d6bc9f guibg=#002b33 guisp=#002b33 gui=NONE ctermfg=180 ctermbg=23 cterm=NONE
hi CTagsMember guifg=#d6bc9f guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE

hi IncSearch guifg=#000000 guibg=#a6556a guisp=#a6556a gui=bold,underline ctermfg=66 ctermbg=189 cterm=NONE
hi WildMenu guifg=#000000 guibg=#804000 guisp=#804000 gui=NONE ctermfg=NONE ctermbg=3 cterm=NONE
hi SpecialComment guifg=#556065 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi Title guifg=#60b0ea guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi Folded guifg=#BBDDCC guibg=#4a4f4d guisp=#4a4f4d gui=NONE ctermfg=151 ctermbg=239 cterm=NONE

hi Statement guifg=#ffffff guibg=NONE guisp=NONE gui=none ctermfg=15 ctermbg=NONE cterm=NONE
" hi Repeat guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi Label guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi Operator guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi Conditional guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi Exception guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE

" hi Identifier guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Function guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi CTagsFunction guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
hi Structure guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi Tag guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE


hi PreProc guifg=#aa7065 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
" hi PreCondit guifg=#aa7065 guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
" hi Include guifg=#aa7065 guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
" hi Define guifg=#aa7065 guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
" hi Macro guifg=#aa7065 guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi CTagsImport guifg=#aa7065 guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE

hi CTagsGlobalConstant guifg=#f0aaaa guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
hi CTagsGlobalVariable guifg=#f0aaaa guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
hi CTagsDefinedName guifg=#f0aaaa guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE

hi Type guifg=#b0eddd guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
hi CTagsClass guifg=#b0eddd guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
hi CTagsStructure guifg=#b0eddd guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
hi CTagsNamespace guifg=#b0eddd guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
" hi StorageClass guifg=#90c7a2 guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi StorageClass guifg=#e0baaa guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
" hi EnumerationValue guifg=#e0baaa guibg=NONE guisp=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE

hi Constant guifg=#79def2 guibg=NONE guisp=NONE gui=NONE ctermfg=70 ctermbg=NONE cterm=NONE
" hi String guifg=#25bbcf guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
" hi Character guifg=#25bbcf guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
" hi SpecialChar guifg=#775779 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
" hi Boolean guifg=#79def2 guibg=NONE guisp=NONE gui=NONE ctermfg=224 ctermbg=NONE cterm=NONE
" hi Constant guifg=#90c7a2 guibg=NONE guisp=NONE gui=NONE ctermfg=115 ctermbg=NONE cterm=NONE
" hi Number guifg=#79def2 guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
" hi Number guifg=#9eab4b guibg=NONE guisp=NONE gui=NONE ctermfg=143 ctermbg=NONE cterm=NONE

hi Todo guifg=#000000 guibg=#e0e0b8 guisp=#12e63c gui=NONE ctermfg=NONE ctermbg=40 cterm=NONE

hi Comment guifg=#12e63c guibg=NONE guisp=NONE gui=NONE ctermfg=40 ctermbg=NONE cterm=NONE
hi NonText guifg=#382920 guibg=#1c3447 guisp=#1c3447 gui=NONE ctermfg=237 ctermbg=23 cterm=NONE
hi DiffText guifg=NONE guibg=#c00000 guisp=#c00000 gui=bold ctermfg=NONE ctermbg=1 cterm=bold
hi ErrorMsg guifg=#c0c0c0 guibg=#c00000 guisp=#c00000 gui=bold ctermfg=7 ctermbg=1 cterm=bold
hi Ignore guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi Debug guifg=#556065 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#153040 guisp=#153040 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi Special guifg=#839196 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#102015 guibg=#d0a59a guisp=#d0a59a gui=NONE ctermfg=234 ctermbg=181 cterm=NONE
hi Search guifg=#000000 guibg=#a6556a guisp=#a6556a gui=bold,underline ctermfg=146 ctermbg=66 cterm=NONE
hi Delimiter guifg=#556065 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi Question guifg=#AABBCC guibg=NONE guisp=NONE gui=NONE ctermfg=146 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#fa8072 guibg=NONE guisp=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi DiffDelete guifg=#0000c0 guibg=#008080 guisp=#008080 gui=bold ctermfg=4 ctermbg=6 cterm=bold
hi ModeMsg guifg=#00AACC guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#00CCFF guibg=#3a4a5a guisp=#3a4a5a gui=NONE ctermfg=45 ctermbg=60 cterm=NONE
hi MoreMsg guifg=#2e8b57 guibg=NONE guisp=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE
hi Keyword guifg=#7dcfff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#c000c0 guisp=#c000c0 gui=NONE ctermfg=NONE ctermbg=5 cterm=NONE
hi Error guifg=NONE guibg=#e04462 guisp=#e04462 gui=NONE ctermfg=NONE ctermbg=168 cterm=NONE
hi PMenu guifg=#373334 guibg=#937b7a guisp=#937b7a gui=NONE ctermfg=237 ctermbg=95 cterm=NONE
hi SpecialKey guifg=#90703B guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
" hi Tag guifg=#556065 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#804000 guisp=#804000 gui=NONE ctermfg=NONE ctermbg=3 cterm=NONE
hi Directory guifg=#bbd0df guibg=NONE guisp=NONE gui=NONE ctermfg=152 ctermbg=NONE cterm=NONE
hi Underlined guifg=#80aae0 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#0000c0 guisp=#0000c0 gui=NONE ctermfg=NONE ctermbg=4 cterm=NONE

hi ColorColumn guibg=#000000 ctermbg=0
hi LineNr guifg=#e0e0b8 guibg=#000000 guisp=#000000 gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#e0e0b8 guisp=#d0a59a gui=NONE ctermfg=234 ctermbg=181 cterm=NONE
hi StatusLineNC guifg=#e0e0b8 guibg=#000000 guisp=#937b7a gui=NONE ctermfg=237 ctermbg=95 cterm=NONE
hi VertSplit guifg=#000000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=8 ctermbg=187 cterm=NONE
hi Visual guifg=#000000 guibg=#33dfef guisp=#33dfef gui=NONE ctermfg=4 ctermbg=87 cterm=NONE
hi SignColumn guibg=#000000 ctermbg=0
hi Cursor guifg=#000000 guibg=#33dfef guisp=#33dfef gui=NONE ctermfg=109 ctermbg=23 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi CursorLineNR guifg=#000000 guibg=#e0e0b8 guisp=#e0e0b8 gui=bold ctermfg=109 ctermbg=23 cterm=NONE
"hi CursorLine
"hi CursorColumn


" http://vimdoc.sourceforge.net/htmldoc/syntax.html#group-name
	" *Comment	any comment
    "
	" *Constant	any constant
	"  String		a string constant: "this is a string"
	"  Character	a character constant: 'c', '\n'
	"  Number		a number constant: 234, 0xff
	"  Boolean	a boolean constant: TRUE, false
	"  Float		a floating point constant: 2.3e10
    "
	" *Identifier	any variable name
	"  Function	function name (also: methods for classes)
    "
	" *Statement	any statement
	"  Conditional	if, then, else, endif, switch, etc.
	"  Repeat		for, do, while, etc.
	"  Label		case, default, etc.
	"  Operator	"sizeof", "+", "*", etc.
	"  Keyword	any other keyword
	"  Exception	try, catch, throw
    "
	" *PreProc	generic Preprocessor
	"  Include	preprocessor #include
	"  Define		preprocessor #define
	"  Macro		same as Define
	"  PreCondit	preprocessor #if, #else, #endif, etc.
    "
	" *Type		int, long, char, etc.
	"  StorageClass	static, register, volatile, const, inline, etc.
	"  Structure	struct, union, enum, etc.
	"  Typedef	A typedef
    "
	" *Special	any special symbol
	"  SpecialChar	special character in a constant
	"  Tag		you can use CTRL-] on this
	"  Delimiter	character that needs attention
	"  SpecialComment	special things inside a comment
	"  Debug		debugging statements
    "
	" *Underlined	text that stands out, HTML links
    "
	" *Ignore		left blank, hidden  |hl-Ignore|
    "
	" *Error		any erroneous construct
    "
	" *Todo		anything that needs extra attention; mostly the
	" 		keywords TODO FIXME and XXX
