" File              : java_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019 21:24:55
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_java') && g:CmptrClr_loaded_java)
  finish | endif

let g:CmptrClr_loaded_java = get(g:, 'CmptrClr_loaded_java', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  " Maybe use something else?  Like special?  preProc does kind of make sence.
  hi! link javaAnnotation   preProc

  " This was linked to conditional and was the word 'break;' for s switch machine
  hi! link javaBranch       statement
  hi! link javaClassDecl    storageClass
  hi! link javaCommentTitle title
  hi! link javaConditional  conditional
  hi! link javaConstant     constant
  hi! link javaDocComment   comment
  hi! link javaExceptions   exception
  hi! link javaExternal     include
  hi! link javaLabel        label
  hi! link javaLineComment  comment
  hi! link javaNumber       number
  hi! link javaOperator     operator
  hi! link javaParen        delimiter
  hi! link javaParen1       javaParen
  hi! link javaRepeat       repeat
  hi! link javaStatement    statement

  hi! link javaScopeDecl    attribute

  hi! link javaSpecialChar  specialChar
  hi! link javaString       string

  hi! link javaTodo         todo
  hi! link javaType         type
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_java = 1
