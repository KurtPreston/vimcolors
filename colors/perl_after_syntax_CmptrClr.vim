" File              : perl_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_perl') && g:CmptrClr_loaded_perl)
  finish | endif

let g:CmptrClr_loaded_perl = get(g:, 'CmptrClr_loaded_perl', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link perlComment            comment
  hi! link perlConditional        conditional
  hi! link perlControl            preProc

  hi! link perlFloat              float

  " XXX Despite the name, it's more like a keyword from the example that was
  " given.
  hi! link perlFunction           statement

  " TODO Figure out what ths is
  hi! link perIQQ                 string

  " In other syntax files, match is linked to special.
  hi! link perlMatch              special

  " TODO Depnding on exactly what is highlighed, `specialChar` may be used.  
  hi! link perlMatchStartEnd      special

  " TODO I should make a method group
  hi! link perlMethod             functionName

  hi! link perlNumber             number
  hi! link perlOperator           operator

  " FIXME Would this be more of an identifier because a reference is simiular to
  " an identifier?
  hi! link perlPackagedRef        type

  hi! link perlRepeat             repeat

  hi! link perlSharpBang          specialChar

  hi! link perlSpecialMatch       special
  hi! link perlSpecialString      special
  hi! link perlStatementControl   statement

  " FIXME This is a hard one because the example that was given was print, so
  " that makes me think of functions.
  " TODO Learn more about perl so more accurate choices can be made
  hi! link perlStatementFiledesc  functionName

  hi! link perlStatementFlow      statement
  hi! link perlStatementHash      statement
  hi! link perlStatementInclude   include
  hi! link perlStatementIndirObj  statement
  hi! link perlStatementList      statement
  hi! link perlStatementScalar    statement
  hi! link perlStatementStorage   storageClass
  hi! link perlString             string

  " TODO Know more about perl to see if this is something that is important that
  " is of a string quote.
  hi! link perlStringStartEnd     perlString

  hi! link perlStringUnexpanded   perlString

  hi! link perlSubName            functionName

  " TODO Look into this more
  hi! link perlVarNotInMatches    special
  hi! link perlVarPlain           localVariable

  " TODO Might have this one of the other variable colors or of its own.
  hi! link perlVarPlain2          perlVarPlain

  " TODO Is this accruate to me an identifier
  hi! link perlVarSimpleMember    identifier

  " TODO Look into this more
  hi! link perlVarSimpleMemberName  string
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_perl = 1
