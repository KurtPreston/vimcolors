" File              : go_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_go') && g:CmptrClr_loaded_go)
  finish | endif

let g:CmptrClr_loaded_go = get(g:, 'CmptrClr_loaded_go', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link goBuiltins             functionName
  hi! link goComment              comment
  hi! link goConditional          conditional
  hi! link goDecimalInt           number

  " TODO This definitly needs to be something else, maybe not linked to 'type',
  " but something else, or even make something else.
  hi! link goDeclaration          type

  " Is this accurate?
  hi! link goDeclType             storageClass

  hi! link goFloats               float
  hi! link goFormatSpecifier      format
  hi! link goImport               include
  hi! link goLabel                label

  " TODO Not sure if would be accurate as there is an import as well
  " I'm thinking this would be better as a namspace
  hi! link goPackage              include

  hi! link goPredefinedIdentifier cTagsDefinedName
  hi! link goRepeat               repeat
  hi! link goStatement            statement
  hi! link goSignedInts           type
  hi! link goString               string
  hi! link goTodo                 todo
  hi! link goType                 type

  " TODO Could the word 'var' be considered as a type?
  hi! link goVar                  type
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_go = 1
