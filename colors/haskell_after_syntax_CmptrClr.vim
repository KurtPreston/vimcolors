" File              : haskell_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_haskell') && g:CmptrClr_loaded_haskell)
  finish | endif

let g:CmptrClr_loaded_haskell = get(g:, 'CmptrClr_loaded_haskell', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link haskellBlockComment    comment

  " TODO This is content inside of a []
  hi! link haskellBrackets        special

  hi! link haskellChar            character

  " This was strcuture
  hi! link haskellDecl            structure

  " THis was prebviously structure
  hi! link haskellDeclKeyword     statement
  hi! link haskellDelimiter       delimiter
  hi! link haskellIdentifier      identifier
  hi! link haskellImportKeywords  include
  hi! link haskellKeyword         statement

  " This was previously strcuture, but I don't think command would suffice here.
  hi! link haskellLet             command
  hi! link haskellNumber          number
  hi! link haskellOperators       operator
  hi! link haskellParens          special
  hi! link haskellSeparator       delimiter
  hi! link haskellString          string
  hi! link haskellType            type

  " This was previsouly structure again
  hi! link haskellWhere           statement
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_haskell = 1
