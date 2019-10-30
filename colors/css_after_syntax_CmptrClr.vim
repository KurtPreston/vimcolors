" File              : css_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_css') && g:CmptrClr_loaded_css)
  finish | endif

let g:CmptrClr_loaded_css = get(g:, 'CmptrClr_loaded_css', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link cssAtRule          PreProc
  hi! link cssAttrComma       delimiter
  hi! link cssBackgroundProp  cssProp
  hi! link cssBorderAttr      cssConstant
  hi! link cssBorderProp      cssProp
  hi! link cssBoxProp         cssProp
  hi! link cssBraces          delimiter

  hi! link cssClassName       class

  hi! link cssClassNameDot    delimiter
  hi! link cssComment         comment
  hi! link cssConstant        constant
  hi! link cssFontAttr        constant
  hi! link cssFontProp        cssProp
  hi! link cssIdentifier      identifier
  hi! link cssMediaType       command
  hi! link cssNoise           noise
  hi! link cssPositioningProp cssProp
  hi! link cssProp            argument
  hi! link cssTagName         tagName
  hi! link cssTextProp        cssProp
  hi! link cssUnitDecorators  special
  hi! link cssValueLength     number
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_css = 1
