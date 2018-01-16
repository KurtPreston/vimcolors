" Name:			heman.vim
" Version:		0.1
" Maintainer: 	<https://github.com/rstdnull>
" Notes: To check the meaning of the highlight groups, ':highlight'

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

" TODO: check for 256 colors
set t_Co=256

let g:colors_name="heman"

" selfnote: 235=#262626
hi Normal          ctermfg=253		ctermbg=235
hi LineNr          ctermfg=10

" visual
hi Todo            ctermfg=11    ctermbg=0    cterm=standout
hi Error           ctermfg=9    ctermbg=15    cterm=reverse

" variable types
hi Constant        ctermfg=69    ctermbg=none    cterm=none
hi String          ctermfg=93b4ff    ctermbg=none    cterm=none
hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none
hi Character       ctermfg=none    ctermbg=none    cterm=none
hi Number          ctermfg=69    ctermbg=none    cterm=none
hi Boolean         ctermfg=none    ctermbg=none    cterm=none
hi Float           ctermfg=none    ctermbg=none    cterm=none

hi Identifier      ctermfg=none    ctermbg=none    cterm=none
hi Function        ctermfg=171    ctermbg=none    cterm=bold

" language
" TODO: bash, java, ... 
hi Statement       ctermfg=11    ctermbg=none    cterm=bold
hi Conditional     ctermfg=10    ctermbg=none    cterm=bold
hi Repeat          ctermfg=208    ctermbg=none    cterm=bold
hi Label           ctermfg=215    ctermbg=none    cterm=none
hi Operator        ctermfg=none    ctermbg=none    cterm=none
hi Keyword         ctermfg=none    ctermbg=none    cterm=none
hi Exception       ctermfg=none    ctermbg=none    cterm=none
hi Comment         ctermfg=244   ctermbg=none    cterm=none

hi Special         ctermfg=51    ctermbg=none    cterm=none
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

" c
hi cPreCondit		ctermfg=201
hi cType			ctermfg=171		cterm=bold
hi cConstant		ctermfg=69
hi cIncluded		ctermfg=220
hi cInclude         ctermfg=208		cterm=bold
hi cDefine          ctermfg=10		cterm=bold
hi cNumbers			ctermfg=69
hi cNumber			ctermfg=69
hi cString			ctermfg=93b4ff
hi cFormat			ctermfg=201
hi cSpecial			ctermfg=51
hi cStructure		ctermfg=215		cterm=bold
hi cLabel			ctermfg=215
hi cStorageClass	ctermfg=9
hi cComment			ctermfg=244
hi cRepeat			ctermfg=208		cterm=bold
hi cConditional		ctermfg=10		cterm=bold
hi cStatement		ctermfg=11		cterm=bold
hi cTodo            ctermfg=11		ctermbg=0		cterm=standout

" ruby
hi rubyInclude      ctermfg=208     cterm=bold
hi rubyModule       ctermfg=10      cterm=bold
hi rubyClass        ctermfg=215     cterm=bold
hi rubyClassDeclaration     ctermfg=215
hi rubyModuleDeclaration        ctermfg=220
hi rubyConstant     ctermfg=69
hi rubyLocalVariableOrMethod        ctermfg=171
hi rubyRegexp       ctermfg=93b4ff
hi rubyRegexpAnchor     ctermfg=215
hi rubyRegexpCharClass      ctermfg=51
hi rubyBoolean      ctermfg=9
hi rubySymbol       ctermfg=201
hi rubyDefine       ctermfg=10      cterm=bold
hi rubyfloat        ctermfg=51
hi rubyCurlyBlock       ctermfg=215
hi rubyTodo     ctermfg=11      ctermbg=0       cterm=standout
hi rubyInteger      ctermfg=69

