" File              : vim_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_vim') && g:CmptrClr_loaded_vim)
  finish | endif

let g:CmptrClr_loaded_vim       = get(g:, 'CmptrClr_loaded_vim', 1)
let g:CmptrClr_use_vim_options  = get(g:, 'CmptrClr_use_vim_options', 1)

if g:CmptrClr_use_vim_options
  setl ai
  setl et
  setl fenc=utf-8
  setl sw=2
  setl ts=2
  setl sts=2
  setl tw=79
endif

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]

  hi! link vimAugroupKey    vimCommand
  hi! link vimAutoCmd       vimCommand
  hi! link vimAutoEvent     event
  hi! link vimBracket       vimSep
  hi! link vimCmdSep        vimSep
  hi! link vimCommand       command
  hi! link vimComment       comment
  hi! link vimCommentString vimString
  hi! link vimCommentTitle  title

  " Might use specialChar
  hi! link vimContinue      special

  hi! link vimEchoHL        vimCommand

  " The highlighting for this group is very inconsistent.
  "    execute 'source' g:CmptrClr_user_hl'[&'filetype']'
  hi! link vimExecute       special
  hi! link vimFBVar         vimFuncVar
  hi! link vimFgBgAttrib    attribute
  hi! link vimFTCmd         vimCommand
  hi! link vimFTOption      vimOption

  " The highlighting for this group is very inconsistent.
  "  if g:CmptrClr_use_user_hl'[&'filetype']'
  hi! link vimFuncBody      special

  " May change this
  hi! link vimFuncKey       vimCommand

  hi! link vimFuncName      functionName
  hi! link vimFuncSID       constant
  hi! link vimFunction      functionName
  hi! link vimFuncVar       functionVariable
  hi! link vimGroup         constant
  hi! link vimHiAttrib      attribute
  hi! link vimHiBang        vimSpecial

  " hi 'clear' Normal
  hi! link vimHiClear       vimCommand
  hi! link vimHiCTerm       type
  hi! link vimHighlight     vimCommand
  hi! link vimHiGroup       constant
  hi! link vimHiGuiFgBg     type
  hi! link vimHiKeyList     vimOper
  hi! link vimIsCommand     vimCommand
  hi! link vimLet           vimCommand
  hi! link vimLineComment   vimComment
  hi! link vimMap           vimCommand
  hi! link vimMapLhs        vimMapRhs
  hi! link vimMapModKey     constant
  hi! link vimMapRhs        vimUserFunc
  hi! link vimNotFunc       conditional
  hi! link vimNotation      notation
  hi! link vimNumber        number
  hi! link vimOper          operator
  hi! link vimOperParen     globalVariable
  hi! link vimOption        option
  hi! link vimParenSep      vimSep
  hi! link vimSep           delimiter

  " The highlighting for this group is very inconsistent.
  hi! link vimSet           vimOper

  " The highlighting for this group is very inconsistent.
  hi! link vimSetEqual      vimOper

  " May use specialCharacter
  hi! link vimSetMod        special
  hi! link vimSetSep        vimSep
  hi! link vimString        string
  hi! link vimSyntax        vimCommand
  hi! link vimSynType       type
  hi! link vimUserAttrbKey  attribute
  hi! link vimUserCmd       vimSep

  " Might have this be its own group
  hi! link vimUserCommand   vimCommand

  hi! link vimUserFunc      functionName
  hi! link vimVar           globalVariable
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_vim = 1
