" File              : perl6_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 11/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_perl6') && g:CmptrClr_loaded_perl6)
  finish | endif

let g:CmptrClr_loaded_perl6 = get(g:, 'CmptrClr_loaded_perl6', 1)

" FIXME When performing a replace, literally every single perl was replaced, so
" most likely in comments where it says perl6, I probably just perl.

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]

  " COMBAK Maybe link this to the other perl6 syntax
  hi! link p6Conditional  conditional

  " TODO This should probably be something else
  hi! link p6DeclareRoutine statement

  hi! link p6Escape       specialChar

  " TODO Figure out what this means..
  " The perl6 syntax file has something similar to this.
  hi! link p6FlowControl  statement
  hi! link p6Include      include
  hi! link p6Key          string

  " TODO THis should probably be something else as well
  hi! link p6Normal       normal

  hi! link p6Number       number
  hi! link p6Operator     operator

  " TODO Maybe make this a special
  hi! link p6PodPrefix    statement

  " TODO This seems more like a keyword which I would consider..ish to be a
  " statement.
  hi! link p6PodType      type

  " TODO I think I have something for this
  hi! link p6Property     special

  " TODO Braces are also highlighed with this
  hi! link p6Quote        delimiter

  hi! link p6Repeat       repeat

  " TODO Figure out what this is
  " So I think routine is kind of like functions or methods or whatever the
  " equvilent to what the substring in string.substring would be called.
  hi! link p6Routine      identifier

  hi! link p6ReverseCrossOp operator

  " TODO I forget if I have a variable group
  " The @ sign and $ sign before a variable name, seem to be actually what is
  " supposed to be in this group
  " TODO Reword this
  hi! link p6Variable     special

  " TODO Use a different group
  hi! link p6VarName      cTagsGlobalVariable

  " TODO Should this be highlighted as a variable?
  hi! link p6VarStorage   storageClass

  " TODO maybe use somethinng different
  " This is the letter v, not the actuaully version number
  hi! link p6Version        number

  hi! link p6VersionNum     number

  hi! link p6StringAngle  string
  hi! link p6StringSQ     string

  " TODO What in the fuck is a twigil...
  hi! link p6Twigil       special
  hi! link p6Type         type

  " TODO This doesn't seem right
  hi! link p6TypeConstraint preCondit
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_perl6 = 1
