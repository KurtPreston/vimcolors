" Name:			heman.vim
" Version:		0.1
" Maintainer: 	<https://github.com/rstdnull>
" Notes: To check the meaning of the highlight groups, ':highlight'

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


hi Normal			ctermfg=253	ctermbg=235	cterm=NONE	guifg=#dadada	guibg=#262626	gui=NONE
hi LineNr			ctermfg=10	ctermbg=NONE	cterm=NONE	guifg=#00ff00	guibg=NONE	gui=NONE

hi Statement			ctermfg=220	ctermbg=NONE	cterm=bold	guifg=#ffd700	guibg=NONE	gui=bold
hi Conditional			ctermfg=10	ctermbg=NONE	cterm=bold	guifg=#00ff00	guibg=NONE	gui=bold
hi Repeat			ctermfg=208	ctermbg=NONE	cterm=bold	guifg=#ff8700	guibg=NONE	gui=bold
hi Include			ctermfg=208	ctermbg=NONE	cterm=NONE	guifg=#ff8700	guibg=NONE	gui=NONE
hi Constant			ctermfg=69	ctermbg=NONE	cterm=NONE	guifg=#5f87ff	guibg=NONE	gui=NONE
hi PreProc			ctermfg=201	ctermbg=NONE	cterm=NONE	guifg=#ff00ff	guibg=NONE	gui=NONE
hi Special			ctermfg=51	ctermbg=NONE	cterm=NONE	guifg=#00ffff	guibg=NONE	gui=NONE
hi Label			ctermfg=215	ctermbg=NONE	cterm=NONE	guifg=#ffaf5f	guibg=NONE	gui=NONE
hi StorageClass			ctermfg=9	ctermbg=NONE	cterm=NONE	guifg=#ff0000	guibg=NONE	gui=NONE
hi Structure			ctermfg=215	ctermbg=NONE	cterm=bold	guifg=#ffaf5f	guibg=NONE	gui=bold
hi Todo				ctermfg=220	ctermbg=0	cterm=standout	guifg=#ffd700	guibg=#000000	gui=standout
hi Comment			ctermfg=244	ctermbg=NONE	cterm=italic	guifg=#808080	guibg=NONE	gui=italic
hi type				ctermfg=171	ctermbg=NONE	cterm=bold	guifg=#d75fff	guibg=NONE	gui=bold
hi String			ctermfg=93	ctermbg=NONE	cterm=NONE	guifg=#8700ff	guibg=NONE	gui=NONE


" sets the color of ^I and $ when :set list is active
hi SpecialKey			ctermfg=white	ctermbg=NONE	cterm=NONE	guifg=#ffffff	guibg=NONE	gui=NONE
hi NonText			ctermfg=white	ctermbg=NONE	cterm=NONE	guifg=#ffffff	guibg=NONE	gui=NONE


" c
hi cIncluded			ctermfg=220	ctermbg=NONE	cterm=bold	guifg=#ffd700	guibg=NONE	gui=bold
hi cDefine			ctermfg=10	ctermbg=NONE	cterm=bold	guifg=#00ff00	guibg=NONE	gui=bold


" links
hi link cConditional		Conditional
hi link cStatement		Statement
hi link cRepeat			Repeat
hi link cInclude		Include
hi link cConstant		Constant
hi link cType			Type
hi link cString			String
hi link cPreCondit		PreProc
hi link Format			PreProc
hi link cFormat			Format
hi link cSpecial		Special
hi link cLabel			Label
hi link cNumber			Constant
hi link cNumbers		Constant
hi link cStructure		Structure
hi link cStorageClass		StorageClass
hi link cTodo			Todo
hi link cComment		Comment

" TODO: update ruby support
" minor support for rupy mostly for presentation at vimcolors.com
hi link rubyInclude		Include
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
