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

if has('gui_running') || &t_Co != 256
	finish
endif

let g:colors_name="heman"

" selfnote: 235=#262626
highlight Normal		ctermfg=253	ctermbg=235	cterm=none
hi LineNr			ctermfg=10	ctermbg=none	cterm=none

" visual
hi Todo				ctermfg=11	ctermbg=0	cterm=standout
hi Error			ctermfg=9	ctermbg=15	cterm=reverse

" variable types
hi Constant			ctermfg=69	ctermbg=none	cterm=none
hi String			ctermfg=93b4ff	ctermbg=none	cterm=none
hi Number			ctermfg=69	ctermbg=none	cterm=none

hi Function			ctermfg=171	ctermbg=none	cterm=bold

" language
" TODO: bash, java, ...
hi Statement			ctermfg=11	ctermbg=none	cterm=bold
hi Conditional			ctermfg=10	ctermbg=none	cterm=bold
hi Repeat			ctermfg=208	ctermbg=none	cterm=bold
hi Label			ctermfg=215	ctermbg=none	cterm=none
hi Comment			ctermfg=244	ctermbg=none	cterm=none

hi Special			ctermfg=51	ctermbg=none	cterm=none

" c
hi cPreCondit			ctermfg=201	ctermbg=none	cterm=none
hi cType			ctermfg=171	ctermbg=none	cterm=bold
hi cConstant			ctermfg=69	ctermbg=none	cterm=none
hi cIncluded			ctermfg=220	ctermbg=none	cterm=none
hi cInclude			ctermfg=208	ctermbg=none	cterm=bold
hi cDefine			ctermfg=10	ctermbg=none	cterm=bold
hi cNumbers			ctermfg=69	ctermbg=none	cterm=none
hi cNumber			ctermfg=69	ctermbg=none	cterm=none
hi cString			ctermfg=93b4ff	ctermbg=none	cterm=none
hi cFormat			ctermfg=201	ctermbg=none	cterm=none
hi cSpecial			ctermfg=51	ctermbg=none	cterm=none
hi cStructure			ctermfg=215	ctermbg=none	cterm=bold
hi cLabel			ctermfg=215	ctermbg=none	cterm=none
hi cStorageClass		ctermfg=9	ctermbg=none	cterm=none
hi cComment			ctermfg=244	ctermbg=none	cterm=none
hi cRepeat			ctermfg=208	ctermbg=none	cterm=bold
hi cConditional			ctermfg=10	ctermbg=none	cterm=bold
hi cStatement			ctermfg=11	ctermbg=none	cterm=bold
hi cTodo			ctermfg=11	ctermbg=0	cterm=standout

" ruby
hi rubyInclude			ctermfg=208	ctermbg=none	cterm=bold
hi rubyModule			ctermfg=10	ctermbg=none	cterm=bold
hi rubyClass			ctermfg=215	ctermbg=none	cterm=bold
hi rubyClassDeclaration		ctermfg=215	ctermbg=none	cterm=none
hi rubyModuleDeclaration	ctermfg=220	ctermbg=none	cterm=none
hi rubyConstant			ctermfg=69	ctermbg=none	cterm=none
hi rubyLocalVariableOrMethod	ctermfg=171	ctermbg=none	cterm=none
hi rubyRegexp			ctermfg=93b4ff	ctermbg=none	cterm=none
hi rubyRegexpAnchor		ctermfg=215	ctermbg=none	cterm=none
hi rubyRegexpCharClass		ctermfg=51	ctermbg=none	cterm=none
hi rubyBoolean			ctermfg=9	ctermbg=none	cterm=none
hi rubySymbol			ctermfg=201	ctermbg=none	cterm=none
hi rubyDefine			ctermfg=10	ctermbg=none	cterm=bold
hi rubyfloat			ctermfg=51	ctermbg=none	cterm=none
hi rubyCurlyBlock		ctermfg=215	ctermbg=none	cterm=none
hi rubyTodo			ctermfg=11	ctermbg=0	cterm=standout
hi rubyInteger			ctermfg=69	ctermbg=none	cterm=none
