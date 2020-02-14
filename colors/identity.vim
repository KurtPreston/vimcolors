"-------------------------------------------------------------------------------
" identity.vim --- A simple colorscheme for vim/nvim
"
" Copyright (c) 2020 Jun Kato All Rights Reserved.
" Author: Jun Kato (junk-e) <junk05301996@gmail.com>
" URL: https://github.com/junk-e
" License: This software is released under the MIT License, see LICENSE.txt.
" Modified: 2020-02-14.
"-------------------------------------------------------------------------------

let g:colors_name = expand('<sfile>:t:r')
set background=dark
set termguicolors
highlight clear

" Color palette "{{{
"-------------------------------------------------------------------------------
let s:vmode  = "gui"
let s:base01 = "#000F13" " Background color
let s:base02 = "#001C22" " Sub-background
let s:base03 = "#00404D" " Comment-color
let s:base04 = "#002830" " NonText
let s:base05 = "#004653"
let s:blu00  = "#00ADD0"
let s:wht00  = "#6BE6FF"
let s:wht01  = "#95ECFF"
let s:red00  = "#D02300"
let s:red01  = "#FE4C36"
let s:yel00  = "#D0A600"
"}}}

let s:none = "NONE"
let s:reve = "reverse"

exe "let s:fmt_none = " . "s:vmode . '=' . s:none"
exe "let s:fmt_reve = " . "s:vmode . '=' . s:reve"
exe "let s:fg = " . "s:vmode . 'fg='"
exe "let s:bg = " . "s:vmode . 'bg='"

function Def_hi(group, fmt, fgcol, bgcol)
    return "hi! " . a:group . " " . a:fmt . " " . s:fg . a:fgcol . " " . s:bg . a:bgcol
endfunction

" Basic highlighting "{{{
"-------------------------------------------------------------------------------
"+---------+------------------------+-----------+---------+---------+
"|         | GROUP NAME             | FORMAT    | FGCOLOR | BGCOLOR |
"+---------+------------------------+-----------+---------+---------+
exe Def_hi( "Normal",                s:fmt_none, s:blu00,  s:base01)
exe Def_hi( "Comment",               s:fmt_none, s:base03, s:none  )
exe Def_hi( "Constant",              s:fmt_none, s:blu00,  s:none  )
exe Def_hi( "Identifier",            s:fmt_none, s:red01,  s:none  )
exe Def_hi( "Statement",             s:fmt_none, s:wht00,  s:none  )
exe Def_hi( "PreProc",               s:fmt_none, s:blu00,  s:none  )
exe Def_hi( "Type",                  s:fmt_none, s:blu00,  s:none  )
exe Def_hi( "Special",               s:fmt_none, s:blu00,  s:none  )
exe Def_hi( "Underlined",            s:fmt_none, s:none,   s:none  )
exe Def_hi( "Ignore",                s:fmt_none, s:none,   s:none  )
exe Def_hi( "Error",                 s:fmt_none, s:none,   s:none  )
exe Def_hi( "Todo",                  s:fmt_none, s:yel00,  s:base02)
"}}}

" Extended highlighting "{{{
"-------------------------------------------------------------------------------
" Look "{{{
"----------
"+---------+------------------------+-----------+---------+---------+
"|         | GROUP NAME             | FORMAT    | FGCOLOR | BGCOLOR |
"+---------+------------------------+-----------+---------+---------+
exe Def_hi( "NonText",               s:fmt_none, s:base04, s:base01)
exe Def_hi( "FoldColumn",            s:fmt_none, s:base03, s:base02)
exe Def_hi( "LineNr",                s:fmt_none, s:base03, s:base02)
exe Def_hi( "CursorLineNr",          s:fmt_none, s:base03, s:base02)
exe Def_hi( "ColorColumn",           s:fmt_reve, s:base01, s:red00 )
" NOTE: The background changes according to the text color (for discomfort)
exe Def_hi( "Folded",                s:fmt_none, s:base03, s:base02)

" Popup color
exe Def_hi( "Pmenu",                 s:fmt_none, s:base03, s:blu00 )
exe Def_hi( "PmenuSel",              s:fmt_none, s:base03, s:wht00 )
exe Def_hi( "PmenuSbar",             s:fmt_none, s:none,   s:base03)
exe Def_hi( "PmenuThumb",            s:fmt_none, s:none,   s:wht00 )
"}}}

" TODO: All of the following are NOT verified.
"+---------+------------------------+-----------+---------+---------+
"|         | GROUP NAME             | FORMAT    | FGCOLOR | BGCOLOR |
"+---------+------------------------+-----------+---------+---------+
exe Def_hi( "StatusLine",            s:fmt_none, s:none,   s:none  )
exe Def_hi( "StatusLineNC",          s:fmt_none, s:none,   s:none  )

exe Def_hi( "SpecialKey",            s:fmt_none, s:base04, s:none  )
exe Def_hi( "Visual",                s:fmt_none, s:base02, s:base05)
exe Def_hi( "Directory",             s:fmt_none, s:none,   s:none  )
exe Def_hi( "ErrorMsg",              s:fmt_none, s:red00,  s:none  )
exe Def_hi( "Search",                s:fmt_none, s:none,   s:none  )
"}}}

" link "{{{
"-------------------------------------------------------------------------------
"}}}

" Plugins (not recommended) "{{{
"-------------------------------------------------------------------------------
" indentLine
let g:indentLine_color_gui = s:base04
"}}}
