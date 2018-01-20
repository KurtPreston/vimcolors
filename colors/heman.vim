me:			heman.vim
" Version:		0.2
" Maintainer:		<https://github.com/rstdnull>


set background=dark

if version > 580
	highlight clear		" reset syntax highlighting system to default state
	if exists("syntax_on")
		syntax reset
	endif
endif

if !has('gui_running') && &t_Co != 256
	finish
endif

let g:colors_name="heman"


hi Normal			ctermfg=253	ctermbg=235	cterm=NONE	guifg=#dadada	guibg=#2b2836	gui=NONE
hi EndOfBuffer			ctermfg=253	ctermbg=235	cterm=NONE	guifg=#dadada	guibg=#2b2836	gui=NONE
hi LineNr			ctermfg=244	ctermbg=NONE	cterm=NONE	guifg=#808080	guibg=NONE	gui=NONE

hi String			ctermfg=171	ctermbg=NONE	cterm=NONE	guifg=#d75fff	guibg=NONE	gui=NONE
hi Define			ctermfg=118	ctermbg=NONE	cterm=NONE	guifg=#87ff00	guibg=NONE	gui=NONE
hi Statement			ctermfg=220	ctermbg=NONE	cterm=bold	guifg=#ffd700	guibg=NONE	gui=bold
hi Conditional			ctermfg=118	ctermbg=NONE	cterm=bold	guifg=#87ff00	guibg=NONE	gui=bold
hi Repeat			ctermfg=208	ctermbg=NONE	cterm=bold	guifg=#ff8700	guibg=NONE	gui=bold
hi Include			ctermfg=208	ctermbg=NONE	cterm=NONE	guifg=#ff8700	guibg=NONE	gui=NONE
hi Constant			ctermfg=75	ctermbg=NONE	cterm=NONE	guifg=#5fafff	guibg=NONE	gui=NONE
hi PreProc			ctermfg=220	ctermbg=NONE	cterm=NONE	guifg=#ffd700	guibg=NONE	gui=NONE
hi Special			ctermfg=123	ctermbg=NONE	cterm=NONE	guifg=#87ffff	guibg=NONE	gui=NONE
hi Label			ctermfg=215	ctermbg=NONE	cterm=NONE	guifg=#ffaf5f	guibg=NONE	gui=NONE
hi StorageClass			ctermfg=141	ctermbg=NONE	cterm=bold	guifg=#af87ff	guibg=NONE	gui=bold
hi Structure			ctermfg=217	ctermbg=NONE	cterm=bold	guifg=#ffafaf	guibg=NONE	gui=bold
hi Todo				ctermfg=220	ctermbg=0	cterm=standout	guifg=#ffd700	guibg=#000000	gui=standout
hi Comment			ctermfg=244	ctermbg=NONE	cterm=italic	guifg=#808080	guibg=NONE	gui=italic
hi Type				ctermfg=217	ctermbg=NONE	cterm=bold	guifg=#ffafaf	guibg=NONE	gui=bold
hi Character			ctermfg=201	ctermbg=NONE	cterm=NONE	guifg=#ff00ff	guibg=NONE	gui=NONE
hi Float			ctermfg=229	ctermbg=NONE	cterm=NONE	guifg=#ffffaf	guibg=NONE	gui=NONE
hi Identifier			ctermfg=123	ctermbg=NONE	cterm=NONE	guifg=#87ffff	guibg=NONE	gui=NONE


" sets the color of ^I and $ when :set list is active
hi SpecialKey			ctermfg=9	ctermbg=NONE	cterm=NONE	guifg=#ff0000	guibg=NONE	gui=NONE
hi NonText			ctermfg=9	ctermbg=NONE	cterm=NONE	guifg=#ff0000	guibg=NONE	gui=NONE


" c
hi cIncluded			ctermfg=220	ctermbg=NONE	cterm=bold	guifg=#ffd700	guibg=NONE	gui=bold


" links
hi link Operator		Define

" c-links
hi link cConditional		Conditional
hi link cStatement		Statement
hi link cRepeat			Repeat
hi link cInclude		Include
hi link cDefine			Define
hi link cConstant		Constant
hi link cType			Type
hi link cString			String
hi link cPreCondit		PreProc
hi link cFormat			Character
hi link cSpecial		Special
hi link cLabel			Label
hi link cNumber			Constant
hi link cNumbers		Constant
hi link cStructure		StorageClass
hi link cStorageClass		StorageClass
hi link cTodo			Todo
hi link cComment		Comment
hi link cFloat			Float


" css
hi cssBraces			ctermfg=253	ctermbg=NONE	cterm=NONE	guifg=#dadada	guibg=NONE	gui=NONE

" TODO: update css"
" css-links
hi link cssTagName		Float
hi link cssIncludeKeyword	StorageClass
hi link cssMediaType		cIncluded
hi link cssUnitDecorators	Character
hi link cssClassName		Type
hi link cssClassNamedot		Type
hi link cssAttrRegion		Character
hi link cssIdentifier		Repeat
hi link cssPseudoClass		cIncluded
hi link cssPseudoClassId	cIncluded
hi link cssPseudoClassFn	cIncluded

hi link cssProp			String


" TODO: update ruby
" ruby-links
hi link rubyInclude		Include
hi link rubyDefine		Conditional
hi link rubyModule		Conditional
hi link rubyClass		Structure
hi link rubyClassDeclaration	Constant
hi link rubyConstant		Constant
hi link rubyRegexp		String
hi link rubyEgexpAnchor		Structure
hi link rubyRegexpCharClass	Special
hi link rubyBoolean		StorageClass
hi link rubySymbol		PreProc
hi link rubyDefine		cDefine
hi link rubyFloat		Special
hi link rubyCurlyBlock		Structure
hi link rubyTodo		Todo
hi link rubyInteger		Constant
hi link rubyFunction		Type
hi link rubyInstanceVariable	Identifier
hi link rubyFloat		Float
hi link rubyBoolean		Constant
hi link rubySymbol		Character
hi link rubyRegexpBrackets	Constant
hi link rubyRegexpCharClass	Character
hi link rubyRegexpDelimeter	Constant
