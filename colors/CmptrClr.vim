" File              : CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

" Version 8 and higher has the option 'termguicolors'
if v:version < 800
  echohl error | echomsg
        \ "This plugin requires Vim to be of version '8' or higher" .
        \ '  Current version: ' . v:version | echohl None
  finish | endif

" This bothers me how the continue line is not aligned with the rest..
if exists('g:loaded_CmptrClr')
      \ || (exists('g:CmptrClr_enabled') && !g:CmptrClr_enabled)
  finish | endif

let g:CmptrClr_enabled  = get(g:, 'CmptrClr_enabled', 1)

if &compatible
  echohl warningMsg | echomsg "This plugin requires 'nocompatible' to be set."
  echohl None | finish | endif

if !has("gui_running")
  if !has('termguicolors')
    echohl error | echomsg "This plugin requires the feature 'termguicolors'."
    echohl None | finish | endif

  if !(&termguicolors)
    echohl error | echomsg "This plugin requires 'termguicolors' to be set."
    echohl None | finish | endif
endif
let g:CmptrClr_use_default_hl = get(g:, 'CmptrClr_use_default_hl', {})

" TODO Create a variable for each language.  I have tested this using 'execute'
" and it does work.  The only problem is that I'm not able to figure out how I
" could have the variable itself be the same as what it would be in the dict.
" Yes I can use the variable in the dict (I think), but what if the dict is
" modified, leaving the variable unmodified?
"
" These languages are currently supported by default
let s:CmptrClr_use_default_hl = {
      \ 'abap'        : 1,
      \ 'ada'         : 1,
      \ 'c'           : 1,
      \ 'conf'        : 1,
      \ 'cpp'         : 1,
      \ 'cs'          : 1,
      \ 'css'         : 1,
      \ 'debsources'  : 1,
      \ 'dosbatch'    : 1,
      \ 'dosini'      : 1,
      \ 'fortran'     : 1,
      \ 'gitconfig'   : 1,
      \ 'go'          : 1,
      \ 'gtkrc'       : 1,
      \ 'haskell'     : 1,
      \ 'help'        : 1,
      \ 'html'        : 1,
      \ 'java'        : 1,
      \ 'json'        : 1,
      \ 'm4'          : 1,
      \ 'make'        : 1,
      \ 'markdown'    : 1,
      \ 'perl'        : 1,
      \ 'perl6'       : 1,
      \ 'postscr'     : 1,
      \ 'python'      : 1,
      \ 'rst'         : 1,
      \ 'ruby'        : 1,
      \ 'scala'       : 1,
      \ 'sh'          : 1,
      \ 'tags'        : 1,
      \ 'vim'         : 1,
      \ 'viminfo'     : 1,
      \ 'xml'         : 1,
      \ 'yaml'        : 1,
      \ }

" This make sure that the default kes are present in the dictinary.
for [k, v] in items(s:CmptrClr_use_default_hl)
  let g:CmptrClr_use_default_hl[k] = get(g:CmptrClr_use_default_hl, k, v)
endfor

let g:CmptrClr_use_user_hl = get(g:, 'CmptrClr_use_user_hl', {})
let g:CmptrClr_user_hl = get(g:, 'CmptrClr_user_hl', {})

" TODO Only supports specifiying one file for each languagee.
" This is to only be used interanlly which is why this isn't defined in
" autoload.
function! s:ParseHlDict()
  for [k, v] in items(g:CmptrClr_user_hl)
    " I only want default values to be set in 'g:CmptrClr_use_user_hl' only if
    " the file is present.  That way there isn't a little bit of memory
    " wasited.
    if !filereadable(v)
      echohl warningMsg | echomsg v . ' does not exists.' | echohl None
      unlet g:CmptrClr_user_hl[k]
      if has_key(g:CmptrClr_use_user_hl, k)
        unlet g:CmptrClr_use_user_hl[k]
      endif | continue | endif

    let g:CmptrClr_use_user_hl[k] = get(g:CmptrClr_use_user_hl, k, 1)
  endfor
endfunction

if !empty(g:CmptrClr_user_hl) | call s:ParseHlDict() | endif


" TODO I want to implement the option to specify directories for user created
" highlight groups.  They will be sourced after the main highlight group files
" so it will override the defaults.

" TODO I want to implement autocmds so that only the languages that have been
" opened, have their corresponding highlight groups files sourced.  This may
" save a little bit of memory, and also be less cpu intensive.
let g:loaded_CmptrClr = 1

command! CmptrClrReload call CmptrClr#ReloadSyn()
