" File              : cmptrclr.vim
" Author            : Francesco Magliocco
" Date              : 12/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

hi clear Normal
set bg&

hi clear
if exists('syntax_on') | syn reset | endif

" These are not set as I believe they are colored with airline.
" statusLine, statusLineNC, statusLineTerm, statusLineTermNC, tabLine,
" tabLineFill, tabLineSel

" The termainal color, I'm guessing is just the color of the background or
" something?..  I don't know

" TODO It may be best to put all cTags* groups in the main colorScheme.

" TODO Need to implement visualNOS, scrollBar, toolTip

" TODO Use a different color for 'statement'.  The current blue is to hard to
" see.

"08
"10
"18
"20
"28
"30
"38
"40
"48
"50
"58
"60
"68
"70
"78
"80
"88
"90
"98
"A0
"A8
"B0
"B8
"C0
"C8
"D0
"D8
"E0
"E8
"F0
"F8
let g:colors_name = 'cmptrclr'

hi argument         guifg=#8000A8 guibg=NONE    cterm=none
hi attribute        guifg=#00B0F0 guibg=NONE    cterm=none

" TODO Link all groups that have to do with bold to this
hi bold             guifg=#F8F8F8 guibg=NONE    cterm=bold

" I think using the color of a string except having it be bold rather than not
" would be the best choice for this.
hi character        guifg=#A048A0 guibg=NONE    cterm=bold
hi class            guifg=#00E800 guibg=NONE    cterm=none
hi colorColumn      guifg=NONE    guibg=#202020 cterm=none
hi command          guifg=#0080F8 guibg=NONE    cterm=none
hi comment          guifg=#505050 guibg=NONE    cterm=none
hi conceal          guifg=#101010 guibg=NONE    cterm=none
hi conditional      guifg=#8000A8 guibg=NONE    cterm=none
hi constant         guifg=#F8D000 guibg=NONE    cterm=none
hi cTagsDefinedName guifg=#C000C0 guibg=NONE    cterm=none
hi cursorColumn     guifg=NONE    guibg=#181818 cterm=none
hi cursorLine       guifg=NONE    guibg=#181818 cterm=none
hi cursorLineNr     guifg=#F80000 guibg=#000000 cterm=none

" FIXME I feel like a dark purpilsh, redish would be better suited for this.
" The purplish color is used too much elsewhere.  I believe I have used a good
" color in the dev script.
hi define           guifg=#800080 guibg=NONE    cterm=none

hi delimiter        guifg=#A80000 guibg=NONE    cterm=bold
hi enumName         guifg=#408000 guibg=NONE    cterm=none
hi enumValue        guifg=#800040 guibg=NONE    cterm=none
hi errorMsg         guifg=#F8F8F8 guibg=#F00000 cterm=none

" FIXME This is pretty much the same color as a class, so for something that is
"   class.event, they are the same color.  Lets temporarily use yellow
hi event            guifg=#F8F800 guibg=NONE    cterm=none
hi exception        guifg=#F0A800 guibg=NONE    cterm=none

" What is foldColumn?
hi folded           guifg=#F80000 guibg=#202020 cterm=none

" This is the same as specialChar..
hi format           guifg=#800000 guibg=NONE    cterm=underline

hi functionName     guifg=#008048 guibg=NONE    cterm=none
hi functionVariable guifg=#F8F800 guibg=NONE    cterm=none

" TODO Maybe check if gitGutter is installed before highlighting for these
hi gitGutterAdd           guifg=#00F800 guibg=NONE    cterm=none
hi gitGutterChange        guifg=#F8F800 guibg=NONE    cterm=none
hi gitGutterDelete        guifg=#F80000 guibg=NONE    cterm=none

" FIXME I want a color that makes more sense to be used in that it incorporate
" the change and delete colors
hi gitGutterChangeDelete  guifg=#F8A800 guibg=NONE  cterm=none

hi globalVariable         guifg=#00F8F8 guibg=NONE    cterm=none
hi identifier             guifg=#008000 guibg=NONE    cterm=none
hi include                guifg=#e800a0 guibg=NONE    cterm=none
hi infoMsg                guifg=#F8F800 guibg=NONE    cterm=none

" TODO Maybe set the fg and bg to none, so the color is kept?
hi italic                 guifg=#F8F8F8 guibg=NONE    cterm=italic

hi label                  guifg=#a88000 guibg=NONE    cterm=none
hi lineNR                 guifg=#F80000 guibg=#202020 cterm=none
hi localVariable          guifg=#F8F800 guibg=NONE    cterm=none
hi matchParen             guifg=#F8F800 guibg=NONE    cterm=bold,underline
hi member                 guifg=#F8B800 guibg=NONE    cterm=none
hi method                 guifg=#00A068 guibg=NONE    cterm=none

" TODO Check the appearance
hi menu                   guifg=#F8F8F8 guibg=#282828 cterm=none

hi modeMsg                guifg=#F8F8F8 guibg=NONE    cterm=bold
hi moreMsg                guifg=#009000 guibg=NONE    cterm=bold

" namespace is 'kind' of like a class, so using the same color as class, except
" making it bold.
" TODO Check appearance
hi namespace              guifg=#00E800 guibg=NONE    cterm=bold

" This is the same as operator
hi noise                  guifg=#F8F8F8 guibg=NONE    cterm=bold
hi normal                 guifg=#E8E8E8 guibg=NONE    cterm=none
hi notation               guifg=#F8A800 guibg=NONE    cterm=none
hi number                 guifg=#F80000 guibg=NONE    cterm=none

" This is the same as noise
hi operator               guifg=#F8F8F8 guibg=NONE    cterm=bold
hi option                 guifg=#A80080 guibg=NONE    cterm=none

" COMBAK I want the background to be a bit lighter than 'colorColumn', I'm not
" sure that this will be light enough though.
hi pMenu                  guifg=#F8F8F8 guibg=#282828 cterm=none

" COMBAK Check if this looks good
hi pMenuSel               guifg=#F8F8F8 guibg=#680000 cterm=none

" COMBAK I'm not sure how this will look.
hi pMenuSBar              guifg=#181818 guibg=#202020 cterm=none

" FIXME I have a very bad feeling that this will look like shit, and will be
" hard to distinguish.
hi pMenuThumb             guifg=#101010 guibg=#080808 cterm=none

" TODO I'm starting to like the blue that I had previously.  It would match
" other places that this is used for, and it would help distinguish from
" regular conditionals.
hi preCondit              guifg=#8000c0 guibg=NONE    cterm=none
"hi preCondit           guifg=#004868   guibg=NONE    cterm=none

hi preProc                guifg=#F800F8 guibg=NONE    cterm=none

" COMBAK This may be better to be bold..  I think
hi question               guifg=#F8F000 guibg=NONE    cterm=none

" COMBAK I don't know what this is exactly, so check and come back.
hi quickFixLine           guifg=#F80000 guibg=#00F000 cterm=none

hi repeat                 guifg=#8060A8 guibg=NONE    cterm=none
hi search                 guifg=#F8F8F8 guibg=#F8F800 cterm=none

" TODO Check the appearance of this
hi signColumn             guifg=NONE    guibg=#000000 cterm=none

hi special                guifg=#800000 guibg=NONE    cterm=none
hi specialChar            guifg=#800000 guibg=NONE    cterm=bold

" COMBAK I don't know what this is either..
hi specialKey             guifg=#F000F0 guibg=#00F8F8 cterm=none

hi spellBad               guifg=#F80000 guibg=NONE    cterm=undercurl

" I'm hoping that only the letter that needs to be capitalized is highlighted.
hi spellCap               guifg=#F80000 guibg=NONE    cterm=bold,undercurl

" TODO Check the appearance
hi spellLocal             guifg=#F8F800 guibg=NONE    cterm=underline

" TODO Check appearance
hi spellRare              guifg=#F80000 guibg=NONE    cterm=bold,italic,undercurl

hi statement              guifg=#0000F8 guibg=NONE    cterm=none
hi storageClass           guifg=#F85858 guibg=NONE    cterm=none
hi string                 guifg=#A048A0 guibg=NONE    cterm=none
hi structure              guifg=#f88000 guibg=NONE    cterm=none
hi title                  guifg=#00F800 guibg=NONE    cterm=none
hi todo                   guifg=#F84800 guibg=NONE    cterm=none
hi type                   guifg=#F86800 guibg=NONE    cterm=none
hi underlined             guifg=#0080F8 guibg=NONE    cterm=underline
hi vertSplit              guifg=#800000 guibg=#202020 cterm=none
hi visual                 guifg=#F8F8F8 guibg=#F88000 cterm=none
hi warningMsg             guifg=#F84800 guibg=NONE    cterm=bold
hi wildMenu               guifg=#F8F8F8 guibg=#800000 cterm=none

hi! link cTagsClass           class
hi! link cTagsConstant        constant

" FIXME This is probably inaccurate
" In Java, this is highlighting 'true' and 'false'
hi! link cTagsField           member

hi! link cTagsFunction        functionName
hi! link cTagsGlobalVariable  globalVariable
hi! link cTagsLocalVariable   localVariable
hi! link cTagsMember          member
hi! link cTagsMethod          method
hi! link cTagsModule          class
hi! link cTagsPackage         namespace
hi! link cTagsSubroutine      functionName
hi! link cTagsType            type

hi! link error                errorMsg
" FIXME THis should probably have it's own color
hi! link field                member
" TODO Lookk more into this
hi! link property             globalVariable
hi! link tagName              notation

" Linking to cTagsDefined name as that's what c uses.
hi! link boolean              cTagsDefinedName

hi! link variable             cTagsGlobalVariable
hi! link float                number

hi! link using                namespace

" This was first seen in a cpp (cc) file.
hi! link angleBracketContents delimiter
