"-------------------------------------------------------------------------------
" identity.vim --- A simple colorscheme for vim/nvim
"
" Copyright (c) 2020 Jun Kato All Rights Reserved.
" Author: Jun Kato (junk-e) <junk05301996@gmail.com>
" URL: https://github.com/junk-e
" License: This software is released under the MIT License, see LICENSE.txt.
" Modified: 2020-02-13.
"-------------------------------------------------------------------------------

" NOTE: Keys
" term    : 白黒端末での属性
" cterm   : カラー端末での属性(termguicolorsで使用される)
" ctermfg : カラー端末での文字色
" ctermbg : カラー端末での背景色
" gui     : GUIでの属性
" guifg   : GUIでの文字色(termguicolorsで使用される)
" guibg   : GUIでの背景色(termguicolorsで使用される)
" guisp   : GUIでの波線色(termguicolorsで使用される)

let g:colors_name = expand('<sfile>:t:r')
set background=dark
set termguicolors
highlight clear

" Color palette "{{{
"-------------------------------------------------------------------------------

let s:vmode = "gui"
let s:base01 = "#000F13" " Background color
let s:base02 = "#001C22" " Sub-background
let s:base03 = "#00404D" " Comment-color
let s:blue00 = "#00ADD0"
let s:white  = "#6BE6FF"
let s:red    = "#D02300"
let s:orange = "#FE4C36"
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
exe Def_hi( "Normal",                s:fmt_none, s:blue00, s:base01)
exe Def_hi( "FoldColumn",            s:fmt_none, s:base03, s:base02)
exe Def_hi( "LineNr",                s:fmt_none, s:base03, s:base02)
exe Def_hi( "CursorLineNr",          s:fmt_none, s:base03, s:base02)
exe Def_hi( "ColorColumn",           s:fmt_reve, s:base01, s:red   )
"NOTE: For discomfort

exe Def_hi( "Comment",               s:fmt_none, s:base03, s:none  )
exe Def_hi( "Constant",              s:fmt_none, s:blue00, s:none  )
exe Def_hi( "Identifier",            s:fmt_none, s:orange, s:none  )
exe Def_hi( "Statement",             s:fmt_none, s:white , s:none  )
exe Def_hi( "PreProc",               s:fmt_none, s:blue00, s:none  )
exe Def_hi( "Type",                  s:fmt_none, s:blue00, s:none  )
exe Def_hi( "Special",               s:fmt_none, s:blue00, s:none  )

exe Def_hi( "Todo",                  s:fmt_none, s:base03, s:none  )

exe Def_hi( "Folded",                s:fmt_none, s:base03, s:base02)
"}}}

" Extended highlighting "{{{
"-------------------------------------------------------------------------------
"+---------+------------------------+-----------+---------+---------+
"|         | GROUP NAME             | FORMAT    | FGCOLOR | BGCOLOR |
"+---------+------------------------+-----------+---------+---------+
"}}}

" link "{{{
"-------------------------------------------------------------------------------
hi! link vimCommentTitle Todo
"}}}


"hi! Comment gui=underline ctermfg=242 guifg=#898223
"hi! Constant ctermfg=140 guifg=#a093c7
"hi! Delimiter ctermfg=252 guifg=#c6c8d1
"hi! DiffAdd ctermbg=29 ctermfg=158 guibg=#45493e guifg=#c0c5b9
"hi! DiffChange ctermbg=23 ctermfg=159 guibg=#384851 guifg=#b3c3cc
"hi! DiffDelete ctermbg=95 ctermfg=224 guibg=#53343b guifg=#ceb0b6
"hi! DiffText cterm=NONE ctermbg=30 ctermfg=195 gui=NONE guibg=#5b7881 guifg=#c6c8d1
"hi! Directory ctermfg=109 guifg=#89b8c2
"hi! Error ctermbg=234 ctermfg=203 guibg=#161821 guifg=#e27878
"hi! ErrorMsg ctermbg=234 ctermfg=203 guibg=#161821 guifg=#e27878
"hi! WarningMsg ctermbg=234 ctermfg=203 guibg=#161821 guifg=#e27878
"hi! EndOfBuffer ctermbg=234 ctermfg=236 guibg=#161821 guifg=#242940
"hi! NonText ctermbg=234 ctermfg=236 guibg=#161821 guifg=#242940
"hi! SpecialKey ctermbg=234 ctermfg=236 guibg=#161821 guifg=#242940
"hi! Folded ctermbg=235 ctermfg=245 guibg=#1e2132 guifg=#686f9a
"hi! Function ctermfg=110 guifg=#84a0c6
"hi! Identifier cterm=NONE ctermfg=109 guifg=#89b8c2
"hi! Include ctermfg=110 guifg=#84a0c6
"hi! MatchParen ctermbg=237 ctermfg=255 guibg=#3e445e guifg=#ffffff
"hi! MoreMsg ctermfg=150 guifg=#b4be82
"hi! Operator ctermfg=110 guifg=#84a0c6
"hi! Pmenu ctermbg=236 ctermfg=251 guibg=#3d425b guifg=#c6c8d1
"hi! PmenuSbar ctermbg=236 guibg=#3d425b
"hi! PmenuSel ctermbg=240 ctermfg=255 guibg=#5b6389 guifg=#eff0f4
"hi! PmenuThumb ctermbg=251 guibg=#c6c8d1
"hi! PreProc ctermfg=150 guifg=#b4be82
"hi! Question ctermfg=150 guifg=#b4be82
"hi! QuickFixLine ctermbg=236 ctermfg=252 guibg=#272c42 guifg=#c6c8d1
"hi! Search ctermbg=216 ctermfg=234 guibg=#e4aa80 guifg=#392313
"hi! SignColumn ctermbg=235 ctermfg=239 guibg=#1e2132 guifg=#444b71
"hi! Special ctermfg=150 guifg=#b4be82
"hi! SpellBad ctermbg=95 ctermfg=252 gui=undercurl guisp=#e27878
"hi! SpellCap ctermbg=24 ctermfg=252 gui=undercurl guisp=#84a0c6
"hi! SpellLocal ctermbg=23 ctermfg=252 gui=undercurl guisp=#89b8c2
"hi! SpellRare ctermbg=97 ctermfg=252 gui=undercurl guisp=#a093c7
"hi! Statement ctermfg=110 gui=NONE guifg=#84a0c6
"hi! StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#17171b guifg=#818596 term=reverse
"hi! StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#17171b guifg=#818596 term=reverse
"hi! StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#3e445e guifg=#0f1117
"hi! StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#3e445e guifg=#0f1117
"hi! StorageClass ctermfg=110 guifg=#84a0c6
"hi! Structure ctermfg=110 guifg=#84a0c6
"hi! TabLine cterm=NONE ctermbg=233 ctermfg=238 gui=NONE guibg=#0f1117 guifg=#3e445e
"hi! TabLineFill cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#3e445e guifg=#0f1117
"hi! TabLineSel cterm=NONE ctermbg=234 ctermfg=252 gui=NONE guibg=#161821 guifg=#9a9ca5
"hi! TermCursorNC ctermbg=242 ctermfg=234 guibg=#6b7089 guifg=#161821
"hi! Title ctermfg=216 gui=NONE guifg=#e2a478
"hi! Type ctermfg=110 gui=NONE guifg=#84a0c6
"hi! Underlined cterm=underline ctermfg=110 gui=underline guifg=#84a0c6 term=underline
"hi! VertSplit cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#0f1117 guifg=#0f1117
"hi! Visual ctermbg=236 guibg=#272c42
"hi! WildMenu ctermbg=255 ctermfg=234 guibg=#d4d5db guifg=#17171b
"hi! diffAdded ctermfg=150 guifg=#b4be82
"hi! diffRemoved ctermfg=203 guifg=#e27878
"hi! ALEErrorSign ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
"hi! ALEWarningSign ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
"hi! ALEVirtualTextError ctermfg=203 guifg=#e27878
"hi! ALEVirtualTextWarning ctermfg=216 guifg=#e2a478
"hi! CtrlPMode1 ctermbg=236 ctermfg=242 guibg=#2e313f guifg=#6b7089
"hi! EasyMotionShade ctermfg=239 guifg=#3d425b
"hi! EasyMotionTarget ctermfg=150 guifg=#b4be82
"hi! EasyMotionTarget2First ctermfg=216 guifg=#e2a478
"hi! EasyMotionTarget2Second ctermfg=216 guifg=#e2a478
"hi! GitGutterAdd ctermbg=235 ctermfg=150 guibg=#1e2132 guifg=#b4be82
"hi! GitGutterChange ctermbg=235 ctermfg=109 guibg=#1e2132 guifg=#89b8c2
"hi! GitGutterChangeDelete ctermbg=235 ctermfg=109 guibg=#1e2132 guifg=#89b8c2
"hi! GitGutterDelete ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
"hi! gitmessengerEndOfBuffer ctermbg=235 ctermfg=239 guibg=#1e2132 guifg=#444b71
"hi! gitmessengerPopupNormal ctermbg=235 ctermfg=252 guibg=#1e2132 guifg=#c6c8d1
"hi! Sneak ctermbg=140 ctermfg=234 guibg=#a093c7 guifg=#161821
"hi! SneakScope ctermbg=236 ctermfg=242 guibg=#272c42 guifg=#6b7089
"hi! SyntasticErrorSign ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
"hi! SyntasticStyleErrorSign ctermbg=235 ctermfg=203 guibg=#1e2132 guifg=#e27878
"hi! SyntasticStyleWarningSign ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
"hi! SyntasticWarningSign ctermbg=235 ctermfg=216 guibg=#1e2132 guifg=#e2a478
"hi! ZenSpace ctermbg=203 guibg=#e27878
"hi! icebergALAccentRed ctermfg=203 guifg=#e27878
