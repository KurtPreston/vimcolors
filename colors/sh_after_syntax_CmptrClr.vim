" File              : sh_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_sh') && g:CmptrClr_loaded_sh)
  finish | endif

let g:CmptrClr_loaded_sh = get(g:, 'CmptrClr_loaded_sh', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  " TODO Change this
  hi! link kshSpecialVariable preProc

  " Fuck is this?..
  hi! link kshStatement   statement

  " TODO Figure out the fuck esac is..
  hi! link shCaseEsac     special

  hi! link shCaseIn       shConditional
  hi! link shCaseLabel    label

  " TODO Maybe change this
  hi! link shCmdSubRegion preProc

  " TODO Come up with something else
  hi! link shCommandSub   command

  hi! link shCommandSubBQ command
  hi! link shComment      comment
  hi! link shConditional  conditional

  " TODO Change this
  hi! link shDerefOp      operator

  " TODO Change this
  hi! link shDerefPattern special

  hi! link shDerefSimple  preProc

  " TODO Take a closer look at this
  hi! link shDerefVar     define

  hi! link shDoubleQuote  string

  " FIXME Make group for escape or atleast use something different
  hi! link shEscape       special

  " TODO This is probably something else
  hi! link shExpr         special

  hi! link shNumber       number
  hi! link shOperator     operator
  hi! link shOption       option

  " FIXME I want this to be something else
  hi! link shRange        shOperator

  hi! link shStatement    statement

  " TODO The previous blue that was used for preCondit, I think would match this
  " adequetly.
  hi! link shTestOpr      preCondit

  " TODO Possibly something else
  hi! link shVarAssign    shOperator

  " TODO Does global make sence?
  hi! link shVariable     globalVariable

  " TODO May make this something else
  hi! link shQuote        noise

  " This probably makes sense...
  hi! link shSet          command

  " TODO I feel like this would make more sence for type..  But definitly
  " something else
  hi! link shSetList      identifier

  hi! link shSingleQuote  string
  hi! link shSnglCase     statement
  hi! link shSpecial      special
  hi! link shTestOper     preCondit

  " TODO Chnage this
  hi! link shTestPattern  special

  " TODO Change this
  hi! link shVar          preProc
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_sh = 1
