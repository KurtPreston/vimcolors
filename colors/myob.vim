" Vim color scheme
"
" Name:        myob.vim
" Maintainer:  Edouard Poor
" License:     Apache License 2.0
"
" myob_gray_1         #1b2830
" myob_gray_2         #2e3e4f
" myob_gray_3         #3d5269
" myob_gray_4         #515b64
" myob_gray_5         #687480
" myob_gray_6         #969ea7
" myob_gray_7         #acb4bc
" myob_gray_8         #c5cace
"                     #dcdfe1
"                     #e8eaec
" myob_gray_9         #f3f4f5
"
" myob_regal          #6100a5
" myob_dusk           #8241aa
" myob_rouge          #b93499
" myob_candy          #ec0677
" myob_golf           #00aa65
" myob_azure          #2b74df
" myob_popcorn        #ffdc4b
" myob_cabana         #77dfe7

" myob_warning        #e6c543
" myob_danger         #ce2554


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "myob"


" Base Colours
" ------------
hi Normal                    guifg=#acb4bc guibg=#1b2830
hi Cursor                    guifg=#000000 guibg=#FFFFFF
hi CursorLine                              guibg=#2e3e4f
hi CursorLineNr              guifg=#ffdc4b guibg=#2e3e4f
hi CursorColumn                            guibg=#2e3e4f
hi Search                                  guibg=#77dfe7
hi Visual                                  guibg=#515b64
hi LineNr                    guifg=#515b64
hi StatusLine                guifg=#c5cace guibg=#1b2830
hi StatusLineNC                            guibg=#414243
hi VertSplit                 guifg=#c5cace guibg=#1b2830
hi ColorColumn                             guibg=#ce2554


" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#969ea7 guibg=#3d5269
hi FoldColumn                guifg=#687480 guibg=#3d5269


" Signs
" -----
" Colours used for signs
hi SignColumn                guifg=#c5cace guibg=#2e3e4f


" Invisible Characters
" ------------------
hi NonText                   guifg=#3d5269
hi SpecialKey                guifg=#3d5269


" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#2b74df


" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE


hi Comment                   guifg=#969ea7 gui=italic
hi Todo                      guifg=#687480 gui=italic
hi Constant                  guifg=#2b74df
hi Define                    guifg=#8241aa
hi Delimiter                 guifg=#00aa65
hi Function                  guifg=#b93499
hi Identifier                guifg=#8241aa

hi Include                   guifg=#c5cace
hi Keyword                   guifg=#8241aa
hi Macro                     guifg=#b93499
hi Number                    guifg=#2b74df
hi PreCondit                 guifg=#c5cace
hi PreProc                   guifg=#c5cace
hi Statement                 guifg=#ec0677
hi String                    guifg=#00aa65
hi Type                      guifg=#b93499

hi Title                     guifg=#f3f4f5
hi Error                     guifg=#f3f4f5 guibg=#ce2554



" Diff Support
" ------------
hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffChange                guifg=#E6E1DC guibg=#553355
hi DiffText                  guifg=#E6E1DC guibg=#bb33bb
hi DiffDelete                guifg=#552222 guibg=#552222


" XML/HTML Support
" ----------------
hi xmlTag                    guifg=#2b74df
hi xmlTagName                guifg=#2b74df
hi xmlEndTag                 guifg=#2b74df

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag


" GitGutter
" ---------
highlight GitGutterAdd          guifg=Green  guibg=#2e3e4f
highlight GitGutterChange       guifg=Orange guibg=#2e3e4f
highlight GitGutterDelete       guifg=Red    guibg=#2e3e4f
highlight GitGutterChangeDelete guifg=Red    guibg=#2e3e4f


" Matchmaker
" ----------
highlight Matchmaker guibg=#6100a5


" Vim-Signature
" -------------
highlight SignatureMarkText guifg=#ffdc4b guibg=#2e3e4f


" Terminal (make it stand out a little)
" --------
highlight Terminal guibg=#2e3e4f


" NERDTree
" --------
highlight link NERDTreeOpenable Normal
highlight link NERDTreeClosable Normal
highlight link NERDTreeCWD Keyword
highlight link NERDTreeUp SpecialKey
highlight link NERDTreeHelp SpecialKey
highlight NERDTreeDirSlash guifg=#444444
