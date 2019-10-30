" File              : make_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_make') && g:CmptrClr_loaded_make)
  finish | endif

let g:CmptrClr_loaded_make = get(g:, 'CmptrClr_loaded_make', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link makeCmdNextLine  makeNextLine
  hi! link makeCommands     command
  hi! link makeComment      comment
  hi! link makeDefine       define
  hi! link makeDString      string
  hi! link makeIdent        identifier
  hi! link makeInclude      include
  hi! link makeNextLine     special
  hi! link makePreCondit    preCondit
  hi! link makeSpecial      special

  " TODO This may make sence to be something else
  hi! link makeSpecTarget   include

  hi! link makeStatement    statement

  " XXX It is kind of a label..
  hi! link makeTarget       label
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_make = 1
