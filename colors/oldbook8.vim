" Name:         Old Book 8
" Description:  Old Book by Karolis Koncevicius, rebuilt
" Author:       Karolis Koncevicius
" Maintainer:   Aramis Razzaghipour <aramisnoah@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sat  6 Apr 17:50:29 2019

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 16)
  echoerr '[Old Book 8] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'oldbook8'

hi Normal ctermfg=7 ctermbg=0 guifg=#d5d4d2 guibg=#3c4855 guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=0 ctermbg=10 guifg=#3c4855 guibg=#a5a6a4 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=11 ctermbg=0 guifg=#ddd668 guibg=#3c4855 guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=15 ctermbg=8 guifg=#626c77 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=15 ctermbg=8 guifg=#626c77 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=7 ctermbg=15 guifg=#d5d4d2 guibg=#626c77 guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=10 ctermbg=8 guifg=#a5a6a4 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=8 ctermbg=8 guifg=#445160 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=7 ctermbg=15 guifg=#d5d4d2 guibg=#626c77 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=15 ctermbg=15 guifg=#626c77 guibg=#626c77 guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=1 guifg=NONE guibg=#db6c6c guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=7 ctermbg=NONE guifg=#d5d4d2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=9 guifg=NONE guibg=#a78b78 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=0 ctermbg=6 guifg=#3c4855 guibg=#87d7ff guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=7 ctermbg=15 guifg=#d5d4d2 guibg=#626c77 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=15 ctermbg=8 guifg=#626c77 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=15 ctermbg=8 guifg=#626c77 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=15 ctermbg=8 guifg=#626c77 guibg=#445160 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=7 ctermbg=15 guifg=#d5d4d2 guibg=#626c77 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=7 ctermbg=5 guifg=#d5d4d2 guibg=#959089 guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=0 ctermbg=3 guifg=#3c4855 guibg=#d5bc02 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=0 ctermbg=11 guifg=#3c4855 guibg=#ddd668 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=0 ctermbg=6 guifg=#3c4855 guibg=#87d7ff guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi DiffAdd ctermfg=0 ctermbg=2 guifg=#3c4855 guibg=#5bb899 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=3 ctermbg=NONE guifg=#d5bc02 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=0 ctermbg=1 guifg=#3c4855 guibg=#db6c6c guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=0 ctermbg=3 guifg=#3c4855 guibg=#d5bc02 guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=5 ctermbg=NONE guifg=#959089 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=NONE ctermbg=1 guifg=NONE guibg=#db6c6c guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=7 ctermbg=NONE guifg=#d5d4d2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=12 ctermbg=NONE guifg=#90918f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=9 ctermbg=NONE guifg=#a78b78 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=12 ctermbg=NONE guifg=#90918f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=10 ctermbg=NONE guifg=#a5a6a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=4 ctermbg=NONE guifg=#85939b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=5 ctermbg=NONE guifg=#959089 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=10 ctermbg=NONE guifg=#a5a6a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=4 ctermbg=NONE guifg=#85939b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StringDelimiter ctermfg=15 ctermbg=NONE guifg=#626c77 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=7 ctermbg=NONE guifg=#d5d4d2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=7 ctermbg=NONE guifg=#d5d4d2 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=5 ctermbg=NONE guifg=#959089 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi markdownBold ctermfg=10 ctermbg=NONE guifg=#a5a6a4 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownItalic ctermfg=10 ctermbg=NONE guifg=#a5a6a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Boolean Constant
hi! link Character Constant
hi! link Float Constant
hi! link Number Constant
hi! link String Constant
hi! link Conditional Statement
hi! link Exception Statement
hi! link Keyword Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Repeat Statement
hi! link Define PreProc
hi! link Include PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
hi! link Debug Special
hi! link SpecialChar Special
hi! link Tag Special
hi! link Noise Delimiter
hi! link Searchlight IncSearch
hi! link Todo SpecialComment
hi! link bashSpecialVariables Identifier
hi! link colortemplateAttr Special
hi! link colortemplateColorDef Special
hi! link colortemplateHiGroup Statement
hi! link colortemplateKey Keyword
hi! link diffAdded DiffAdd
hi! link diffBDiffer WarningMsg
hi! link diffChanged DiffChange
hi! link diffCommon WarningMsg
hi! link diffDiffer WarningMsg
hi! link diffFile Directory
hi! link diffIdentical WarningMsg
hi! link diffIndexLine Number
hi! link diffIsA WarningMsg
hi! link diffNoEOL WarningMsg
hi! link diffOnly WarningMsg
hi! link diffRemoved DiffDelete
hi! link gitcommitOverflow Error
hi! link gitconfigAssignment Constant
hi! link gitconfigEscape Special
hi! link gitconfigNone Operator
hi! link htmlBold markdownBold
hi! link htmlEndTag Delimiter
hi! link htmlItalic markdownItalic
hi! link htmlLink Underlined
hi! link htmlSpecialTagName htmlTagName
hi! link htmlTag Delimiter
hi! link htmlTagName Statement
hi! link markdownLinkDelimiter Delimiter
hi! link markdownLinkTextDelimiter Delimiter
hi! link pythonBrackets Delimiter
hi! link pythonQuotes StringDelimiter
hi! link pythonTripleQuotes StringDelimiter
hi! link rubyBlockParameter Identifier
hi! link rubyBlockParameterList Delimiter
hi! link rubyCurlyBlockDelimiter Delimiter
hi! link rubyStringDelimiter StringDelimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shFor Identifier
hi! link shFunctionOne Statement
hi! link shIf Statement
hi! link shQuote StringDelimiter
hi! link shRange Delimiter
hi! link shSnglCase Delimiter
hi! link shTestOpr Special
hi! link shVarAssign Operator
hi! link tmuxFlags Special
hi! link vimAutoCmdSfxList Type
hi! link vimAutoEventList Identifier
hi! link vimBracket vimMapModKey
hi! link vimCmdSep Special
hi! link vimCommentTitle SpecialComment
hi! link vimHighlight Statement
hi! link vimMapMod vimMapModKey
hi! link vimOption Identifier
hi! link vimSet Constant
hi! link vimSetEqual Constant
hi! link xmlEndTag Delimiter
hi! link xmlTag Delimiter
hi! link xmlTagName Statement
hi! link zshDeref Identifier
hi! link zshOperator Operator
hi! link zshStringDelimiter StringDelimiter
hi! link zshSubst Identifier
hi! link zshSubstDelim Delimiter
hi! link zshVariableDef Identifier
finish

" Background:      dark
" Color: darker_blue #3c4855 ~ 0
" Color: dark_blue   #445160 ~ 8
" Color: medium_blue #626c77 ~ 15
" Color: white       #d5d4d2 ~ 7
" Color: light_blue  #85939b ~ 4
" Color: grey        #90918f ~ 12
" Color: dark_brown  #a78b78 ~ 9
" Color: brown       #959089 ~ 5
" Color: light_grey  #a5a6a4 ~ 10
" Color: dark_yellow #d5bc02 ~ 3
" Color: yellow      #ddd668 ~ 11
" Color: cyan        #87d7ff ~ 6
" Color: red         #db6c6c ~ 1
" Color: green       #5bb899 ~ 2
" Normal          white       darker_blue
" Cursor          darker_blue light_grey
" CursorLineNr    yellow      darker_blue
" FoldColumn      medium_blue dark_blue
" Folded          medium_blue dark_blue
" LineNr          medium_blue none
" MatchParen      white       medium_blue
" SignColumn      medium_blue none
" Conceal         medium_blue none
" Ignore          medium_blue none
" NonText         medium_blue none
" SpecialKey      medium_blue none
" EndOfBuffer     medium_blue none
" Pmenu           light_grey  dark_blue
" PmenuSbar       dark_blue   dark_blue
" PmenuSel        white       medium_blue
" PmenuThumb      medium_blue medium_blue
" ErrorMsg        none        red
" ModeMsg         medium_blue none
" MoreMsg         medium_blue none
" Question        white       none
" WarningMsg      none        dark_brown
" ColorColumn     none        dark_blue
" CursorColumn    none        dark_blue
" CursorLine      none        dark_blue
" QuickFixLine    darker_blue cyan
" StatusLine      white       medium_blue
" StatusLineNC    medium_blue dark_blue
" TabLine         medium_blue dark_blue
" TabLineFill     medium_blue dark_blue
" TabLineSel      white       medium_blue
" VertSplit       medium_blue none
" WildMenu        white       brown
" IncSearch       darker_blue dark_yellow
" Search          darker_blue yellow
" Visual          darker_blue cyan
" VisualNOS       none        none underline
" DiffAdd         darker_blue green
" DiffChange      dark_yellow none
" DiffDelete      darker_blue red
" DiffText        darker_blue dark_yellow
" Comment         medium_blue none
" Constant        brown       none
" Error           none        red
" Identifier      white       none
" PreProc         grey        none
" Special         dark_brown  none
" Statement       grey        none
" Type            light_grey  none
" Delimiter       light_blue  none
" Directory       brown       none
" Function        light_grey  none
" SpecialComment  light_blue  none
" StringDelimiter medium_blue none
" Title           white       none
" Todo            white       none bold
" Underlined      brown       none underline
" SpellBad        none        none undercurl
" SpellCap        none        none undercurl
" SpellLocal      none        none undercurl
" SpellRare       none        none undercurl
" markdownBold    light_grey  none bold
" markdownItalic  light_grey  none g=italic
" Terminal           -> Normal
" StatusLineTerm     -> StatusLine
" StatusLineTermNC   -> StatusLineNC
" Boolean                   -> Constant
" Character                 -> Constant
" Float                     -> Constant
" Number                    -> Constant
" String                    -> Constant
" Conditional               -> Statement
" Exception                 -> Statement
" Keyword                   -> Statement
" Label                     -> Statement
" Operator                  -> Statement
" Repeat                    -> Statement
" Define                    -> PreProc
" Include                   -> PreProc
" Macro                     -> PreProc
" PreCondit                 -> PreProc
" StorageClass              -> Type
" Structure                 -> Type
" Typedef                   -> Type
" Debug                     -> Special
" SpecialChar               -> Special
" Tag                       -> Special
" Noise                     -> Delimiter
" Searchlight               -> IncSearch
" Todo                      -> SpecialComment
" bashSpecialVariables      -> Identifier
" colortemplateAttr         -> Special
" colortemplateColorDef     -> Special
" colortemplateHiGroup      -> Statement
" colortemplateKey          -> Keyword
" diffAdded                 -> DiffAdd
" diffBDiffer               -> WarningMsg
" diffChanged               -> DiffChange
" diffCommon                -> WarningMsg
" diffDiffer                -> WarningMsg
" diffFile                  -> Directory
" diffIdentical             -> WarningMsg
" diffIndexLine             -> Number
" diffIsA                   -> WarningMsg
" diffNoEOL                 -> WarningMsg
" diffOnly                  -> WarningMsg
" diffRemoved               -> DiffDelete
" gitcommitOverflow         -> Error
" gitconfigAssignment       -> Constant
" gitconfigEscape           -> Special
" gitconfigNone             -> Operator
" htmlBold                  -> markdownBold
" htmlEndTag                -> Delimiter
" htmlItalic                -> markdownItalic
" htmlLink                  -> Underlined
" htmlSpecialTagName        -> htmlTagName
" htmlTag                   -> Delimiter
" htmlTagName               -> Statement
" markdownLinkDelimiter     -> Delimiter
" markdownLinkTextDelimiter -> Delimiter
" pythonBrackets            -> Delimiter
" pythonQuotes              -> StringDelimiter
" pythonTripleQuotes        -> StringDelimiter
" rubyBlockParameter        -> Identifier
" rubyBlockParameterList    -> Delimiter
" rubyCurlyBlockDelimiter   -> Delimiter
" rubyStringDelimiter       -> StringDelimiter
" shCmdSubRegion            -> Delimiter
" shDerefSimple             -> Identifier
" shFor                     -> Identifier
" shFunctionOne             -> Statement
" shIf                      -> Statement
" shQuote                   -> StringDelimiter
" shRange                   -> Delimiter
" shSnglCase                -> Delimiter
" shTestOpr                 -> Special
" shVarAssign               -> Operator
" tmuxFlags                 -> Special
" vimAutoCmdSfxList         -> Type
" vimAutoEventList          -> Identifier
" vimBracket                -> vimMapModKey
" vimCmdSep                 -> Special
" vimCommentTitle           -> SpecialComment
" vimHighlight              -> Statement
" vimMapMod                 -> vimMapModKey
" vimOption                 -> Identifier
" vimSet                    -> Constant
" vimSetEqual               -> Constant
" xmlEndTag                 -> Delimiter
" xmlTag                    -> Delimiter
" xmlTagName                -> Statement
" zshDeref                  -> Identifier
" zshOperator               -> Operator
" zshStringDelimiter        -> StringDelimiter
" zshSubst                  -> Identifier
" zshSubstDelim             -> Delimiter
" zshVariableDef            -> Identifier
