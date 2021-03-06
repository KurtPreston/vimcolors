" Name:         Blaaark
" Description:  Monosvkem + constants
" Author:       neutaaaaan
" Maintainer:   neutaaaaan
" Website:      https://github.com/neutaaaaan/blaaark
" License:      Public domain
" Last Updated: Thu 16 Jan 2020 03:51:36 PM CET

" Generated by Colortemplate v2.0.0

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'Blaaark'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')) && !has('iOS'))

hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Normal
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link debugBreakpoint ModeMsg
hi! link debugPC CursorLine

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#121212', '#d13a6f', '#11c98e', '#d08928',
        \ '#5e90b7', '#a76fcb', '#20aabb', '#dddddd', '#707070', '#d13a6f',
        \ '#11c98e', '#d08928', '#5e90b7', '#a76fcb', '#20aabb', '#ffffff']
  if get(g:, 'Blaaark_transp_bg', 0) && !has('gui_running')
    hi Normal guifg=#dddddd guibg=NONE guisp=NONE gui=NONE cterm=NONE
    hi Terminal guifg=#dddddd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
    hi Terminal guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  endif
  hi ColorColumn guifg=NONE guibg=#080808 guisp=NONE gui=NONE cterm=NONE
  hi Conceal guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE guisp=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi CursorColumn guifg=NONE guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#20bbfc guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=#40bb40 guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi DiffChange guifg=#80aacc guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi DiffDelete guifg=#cc4040 guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi DiffText guifg=#d496d7 guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi Directory guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#dddddd guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi FoldColumn guifg=#dddddd guibg=#080808 guisp=NONE gui=NONE cterm=NONE
  hi Folded guifg=#dddddd guibg=#121212 guisp=NONE gui=italic cterm=italic
  hi IncSearch guifg=#fcbb20 guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi LineNr guifg=#404040 guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#fc20bb guibg=#121212 guisp=NONE gui=bold cterm=bold
  hi ModeMsg guifg=#dddddd guibg=#121212 guisp=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi NonText guifg=#707070 guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#121212 guibg=#80aacc guisp=NONE gui=NONE cterm=NONE
  hi PmenuSbar guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi PmenuSel guifg=#121212 guibg=#d496d7 guisp=NONE gui=NONE cterm=NONE
  hi PmenuThumb guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi Question guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi Search guifg=#20bbfc guibg=#121212 guisp=NONE gui=reverse cterm=reverse
  hi SignColumn guifg=#dddddd guibg=#080808 guisp=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#fc20bb guibg=#121212 guisp=NONE gui=underline cterm=underline
  hi SpellCap guifg=#20bbfc guibg=#121212 guisp=NONE gui=underline cterm=underline
  hi SpellLocal guifg=#bb20fc guibg=#121212 guisp=NONE gui=underline cterm=underline
  hi SpellRare guifg=#20fcbb guibg=#121212 guisp=NONE gui=underline cterm=underline
  hi StatusLine guifg=#dddddd guibg=#303030 guisp=NONE gui=bold cterm=bold
  hi StatusLineNC guifg=#505050 guibg=#080808 guisp=NONE gui=NONE cterm=NONE
  hi TabLine guifg=#dddddd guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi TabLineFill guifg=#dddddd guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#dddddd guibg=#505050 guisp=NONE gui=NONE cterm=NONE
  hi Title guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#505050 guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#dddddd guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#20bbfc guibg=#303030 guisp=NONE gui=NONE cterm=NONE
  hi Comment guifg=#707070 guibg=NONE guisp=NONE gui=italic cterm=italic
  hi Constant guifg=#11c98e guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Error guifg=#ff2040 guibg=#121212 guisp=NONE gui=bold,reverse cterm=bold,reverse
  hi Identifier guifg=#dddddd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#dddddd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#dddddd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Special guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Statement guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi String guifg=#5e90b7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Todo guifg=#20fcbb guibg=NONE guisp=NONE gui=bold,reverse cterm=bold,reverse
  hi Type guifg=#dddddd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#dddddd guibg=NONE guisp=NONE gui=underline cterm=underline
  hi CursorIM guifg=#121212 guibg=#bbfc20 guisp=NONE gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=#121212 guisp=NONE gui=NONE cterm=NONE
  hi ToolbarButton guifg=#dddddd guibg=#121212 guisp=NONE gui=bold cterm=bold
  hi markdownH1 guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownH2 guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownH3 guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownH4 guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownH5 guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownH6 guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownLinkTextDelimiter guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownLinkDelimiter guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownListMarker guifg=#d13a6f guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownLinkText guifg=#57aadd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownUrl guifg=#505050 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownRule guifg=#d13a6f guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownId guifg=#a76fcb guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownIdDeclaration guifg=#a76fcb guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownBold guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi markdownItalic guifg=#dddddd guibg=NONE guisp=NONE gui=italic cterm=italic
  hi markdownBoldItalic guifg=#dddddd guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
  hi markdownBoldDelimiter guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownItalicDelimiter guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownBoldItalicDelimiter guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi rstSections guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi rstEmphasis guifg=#dddddd guibg=NONE guisp=NONE gui=italic cterm=italic
  hi rstStrongEmphasis guifg=#dddddd guibg=NONE guisp=NONE gui=bold cterm=bold
  hi rstInterpretedTextOrHyperlinkReference guifg=#a76fcb guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi rstStandAloneHyperlink guifg=#57aadd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi rstHyperlinktarget guifg=#57aadd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi rstCitationReference guifg=#a76fcb guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi diffFile guifg=#5e90b7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi diffAdded guifg=#11c98e guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi diffRemoved guifg=#d13a6f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi diffLine guifg=#a76fcb guibg=NONE guisp=NONE gui=NONE cterm=NONE
  if !s:italics
    hi Folded gui=NONE cterm=NONE
    hi Comment gui=NONE cterm=NONE
    hi markdownItalic gui=NONE cterm=NONE
    hi markdownBoldItalic gui=bold cterm=bold
    hi rstEmphasis gui=NONE cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 256
  if get(g:, 'Blaaark_transp_bg', 0)
    hi Normal ctermfg=253 ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=253 ctermbg=NONE cterm=NONE
  else
    hi Normal ctermfg=253 ctermbg=233 cterm=NONE
    if !has('patch-8.0.0616') " Fix for Vim bug
      set background=dark
    endif
    hi Terminal ctermfg=253 ctermbg=233 cterm=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=232 cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorLineNr ctermfg=39 ctermbg=233 cterm=NONE
  hi DiffAdd ctermfg=34 ctermbg=233 cterm=reverse
  hi DiffChange ctermfg=110 ctermbg=233 cterm=reverse
  hi DiffDelete ctermfg=167 ctermbg=233 cterm=reverse
  hi DiffText ctermfg=176 ctermbg=233 cterm=reverse
  hi Directory ctermfg=253 ctermbg=233 cterm=NONE
  hi EndOfBuffer ctermfg=253 ctermbg=233 cterm=NONE
  hi ErrorMsg ctermfg=253 ctermbg=233 cterm=reverse
  hi FoldColumn ctermfg=253 ctermbg=232 cterm=NONE
  hi Folded ctermfg=253 ctermbg=233 cterm=italic
  hi IncSearch ctermfg=214 ctermbg=233 cterm=reverse
  hi LineNr ctermfg=238 ctermbg=233 cterm=NONE
  hi MatchParen ctermfg=199 ctermbg=233 cterm=bold
  hi ModeMsg ctermfg=253 ctermbg=233 cterm=bold
  hi MoreMsg ctermfg=253 ctermbg=233 cterm=NONE
  hi NonText ctermfg=242 ctermbg=233 cterm=NONE
  hi Pmenu ctermfg=233 ctermbg=110 cterm=NONE
  hi PmenuSbar ctermfg=253 ctermbg=233 cterm=NONE
  hi PmenuSel ctermfg=233 ctermbg=176 cterm=NONE
  hi PmenuThumb ctermfg=253 ctermbg=233 cterm=NONE
  hi Question ctermfg=253 ctermbg=233 cterm=NONE
  hi Search ctermfg=39 ctermbg=233 cterm=reverse
  hi SignColumn ctermfg=253 ctermbg=232 cterm=NONE
  hi SpecialKey ctermfg=253 ctermbg=233 cterm=NONE
  hi SpellBad ctermfg=199 ctermbg=233 cterm=underline
  hi SpellCap ctermfg=39 ctermbg=233 cterm=underline
  hi SpellLocal ctermfg=129 ctermbg=233 cterm=underline
  hi SpellRare ctermfg=49 ctermbg=233 cterm=underline
  hi StatusLine ctermfg=253 ctermbg=236 cterm=bold
  hi StatusLineNC ctermfg=239 ctermbg=232 cterm=NONE
  hi TabLine ctermfg=253 ctermbg=236 cterm=NONE
  hi TabLineFill ctermfg=253 ctermbg=236 cterm=NONE
  hi TabLineSel ctermfg=253 ctermbg=239 cterm=NONE
  hi Title ctermfg=253 ctermbg=233 cterm=NONE
  hi VertSplit ctermfg=239 ctermbg=233 cterm=NONE
  hi Visual ctermfg=NONE ctermbg=236 cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=236 cterm=NONE
  hi WarningMsg ctermfg=253 ctermbg=233 cterm=NONE
  hi WildMenu ctermfg=39 ctermbg=236 cterm=NONE
  hi Comment ctermfg=242 ctermbg=NONE cterm=italic
  hi Constant ctermfg=42 ctermbg=NONE cterm=NONE
  hi Error ctermfg=197 ctermbg=233 cterm=bold,reverse
  hi Identifier ctermfg=253 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=253 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=253 ctermbg=NONE cterm=NONE
  hi Special ctermfg=161 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=253 ctermbg=NONE cterm=bold
  hi String ctermfg=67 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=49 ctermbg=NONE cterm=bold,reverse
  hi Type ctermfg=253 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=253 ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=233 ctermbg=154 cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=233 cterm=NONE
  hi ToolbarButton ctermfg=253 ctermbg=233 cterm=bold
  hi markdownH1 ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownH2 ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownH3 ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownH4 ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownH5 ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownH6 ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownLinkTextDelimiter ctermfg=161 ctermbg=NONE cterm=NONE
  hi markdownLinkDelimiter ctermfg=161 ctermbg=NONE cterm=NONE
  hi markdownListMarker ctermfg=161 ctermbg=NONE cterm=bold
  hi markdownLinkText ctermfg=74 ctermbg=NONE cterm=NONE
  hi markdownUrl ctermfg=239 ctermbg=NONE cterm=NONE
  hi markdownRule ctermfg=161 ctermbg=NONE cterm=bold
  hi markdownId ctermfg=134 ctermbg=NONE cterm=NONE
  hi markdownIdDeclaration ctermfg=134 ctermbg=NONE cterm=NONE
  hi markdownBold ctermfg=253 ctermbg=NONE cterm=bold
  hi markdownItalic ctermfg=253 ctermbg=NONE cterm=italic
  hi markdownBoldItalic ctermfg=253 ctermbg=NONE cterm=bold,italic
  hi markdownBoldDelimiter ctermfg=161 ctermbg=NONE cterm=NONE
  hi markdownItalicDelimiter ctermfg=161 ctermbg=NONE cterm=NONE
  hi markdownBoldItalicDelimiter ctermfg=161 ctermbg=NONE cterm=NONE
  hi rstSections ctermfg=253 ctermbg=NONE cterm=bold
  hi rstEmphasis ctermfg=253 ctermbg=NONE cterm=italic
  hi rstStrongEmphasis ctermfg=253 ctermbg=NONE cterm=bold
  hi rstInterpretedTextOrHyperlinkReference ctermfg=134 ctermbg=NONE cterm=NONE
  hi rstStandAloneHyperlink ctermfg=74 ctermbg=NONE cterm=NONE
  hi rstHyperlinktarget ctermfg=74 ctermbg=NONE cterm=NONE
  hi rstCitationReference ctermfg=134 ctermbg=NONE cterm=NONE
  hi diffFile ctermfg=67 ctermbg=NONE cterm=NONE
  hi diffAdded ctermfg=42 ctermbg=NONE cterm=NONE
  hi diffRemoved ctermfg=161 ctermbg=NONE cterm=NONE
  hi diffLine ctermfg=134 ctermbg=NONE cterm=NONE
  if !s:italics
    hi Folded cterm=NONE
    hi Comment cterm=NONE
    hi markdownItalic cterm=NONE
    hi markdownBoldItalic cterm=bold
    hi rstEmphasis cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 2
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=NONE
  hi CursorColumn term=reverse
  hi CursorLine term=underline
  hi CursorLineNr term=bold,reverse
  hi DiffAdd term=reverse
  hi DiffChange term=reverse
  hi DiffDelete term=reverse
  hi DiffText term=bold
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,italic,reverse
  hi FoldColumn term=reverse
  hi Folded term=italic
  hi IncSearch term=bold,italic,reverse
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=NONE
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=NONE
  hi PmenuSel term=NONE
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=bold,italic,underline
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=italic,underline
  hi SpellCap term=italic,underline
  hi SpellLocal term=italic,underline
  hi SpellRare term=italic,underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=underline
  hi TabLine term=NONE
  hi TabLineFill term=NONE
  hi TabLineSel term=bold
  hi Title term=bold
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi Comment term=bold
  hi Constant term=NONE
  hi Error term=bold,reverse
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi PreProc term=NONE
  hi Special term=NONE
  hi Statement term=NONE
  hi Todo term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  if !s:italics
    hi ErrorMsg term=bold,reverse
    hi Folded term=NONE
    hi IncSearch term=bold,reverse
    hi Search term=bold,underline
    hi SpellBad term=underline
    hi SpellCap term=underline
    hi SpellLocal term=underline
    hi SpellRare term=underline
  endif
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: black                #121212                ~          
" Color: linenrblack          #404040                ~          
" Color: greyblack            #505050                ~          
" Color: brightblack          #707070                ~          
" Color: white                #dddddd                ~          
" Color: brightwhite          #ffffff                ~          
" Color: red                  #d13a6f                ~   
" Color: green                #11c98e                ~   
" Color: yellow               #d08928                ~   
" Color: blue                 #5e90b7                ~   
" Color: monoblue             #57aadd                ~   
" Color: purple               #a76fcb                ~   
" Color: greyblue             #5e90b7                ~   
" Color: teal                 #20aabb                ~   
" Color: diffred              #cc4040                ~          
" Color: diffgreen            #40bb40                ~          
" Color: diffblue             #80aacc                ~          
" Color: diffpink 	          #d496d7                ~
" Color: uipink               #fc20bb                ~          
" Color: uilime               #bbfc20                ~          
" Color: uiteal               #20fcbb                ~                                      
" Color: uiblue               #20bbfc                ~          
" Color: uipurple             #bb20fc                ~          
" Color: uiamber              #fcbb20                ~          
" Color: uiblack              #303030                ~          
" Color: vantablack           #080808                ~
" Color: errorred             #ff2040               197          
" Term colors: black red green yellow blue purple teal white
" Term colors: brightblack red green yellow blue purple teal brightwhite
" vim: et ts=2 sw=2
