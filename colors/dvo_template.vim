# vim: ft=colortemplate fdm=marker

# Information {{{
# Mandatory
Full name:   Dvo
Short name:  dvo
Author:      Gil Goncalves @lurst
Maintainer:  Gil Goncalves @lurst
# Optional
Website: https://github.com/LuRsT/dvo.vim
Description: A simple two color colorscheme for vim
License: MIT License
Terminal Colors: 256
Option Prefix: dark
# }}}

Background: dark

# Color palette {{{
# Color name                GUI                  Base256    Base16 (optional)
Color: black         #101010 ~
Color: white         #f7f7f7 ~

# }}}

# Default highlight groups {{{
verbatim
if !has('gui_running') && get(g:, '@optionprefix_transp_bg', 0)
endverbatim
    # Transparent background
    Normal           white             none
    # See `:help terminal-size-color`
    Terminal         white             none
verbatim
else
endverbatim
    # Opaque background
    Normal           white             black
    Terminal         white             black
verbatim
endif
endverbatim

# Group              Foreground        Background        Attributes
ColorColumn          fg                 black
Conceal              none               none
Cursor               white              black
CursorColumn         white              black
CursorLine           white              black
CursorLineNr         white              black
DiffAdd              white              black             reverse
DiffChange           white              black             reverse
DiffDelete           white              black             reverse
DiffText             white              black             bold,reverse
Directory            white              black
EndOfBuffer          white              black
ErrorMsg             white              black             reverse
FoldColumn           white              black
Folded               white              black             italic
IncSearch            white              black             bold
LineNr               white              black
MatchParen           white              black
ModeMsg              white              black
MoreMsg              white              black
NonText              white              none
Pmenu                white              black
PmenuSbar            white              black
PmenuSel             white              black
PmenuThumb           white              black
Question             white              black
QuickFixLine     ->  Search
Search               white              black
SignColumn           white              black
SpecialKey           white              black
SpellBad             white              black             s=white
SpellCap             white              black             s=white
SpellLocal           white              black             s=white
SpellRare            white              black             s=white reverse
StatusLine           white              black
StatusLineNC         white              black
StatusLineTerm    -> StatusLine
StatusLineTermNC  -> StatusLineNC
TabLine              white              black
TabLineFill          white              black
TabLineSel           white              black
Title                white              black
VertSplit            black              black
Visual               white              black
VisualNOS            white              black
WarningMsg           white              black
WildMenu             white              black
# Other conventional group names (see `:help group-name`)
Boolean           -> Constant
Character         -> Constant
Comment              white              none              italic
Conditional       -> Statement
Constant             white              none              italic
Define            -> PreProc
Debug             -> Special
Delimiter         -> Special
Error                white              black             reverse
Exception         -> Statement
Float             -> Constant
Function          -> Identifier
Identifier           white              none
Ignore               white              none
Include           -> PreProc
Keyword           -> Statement
Label             -> Statement
Macro             -> PreProc
Number            -> Constant
Operator          -> Statement
PreCondit         -> PreProc
PreProc              white              none
Repeat            -> Statement
Special              white              none
SpecialChar       -> Special
SpecialComment    -> Special
Statement            white              none
StorageClass      -> Type
String            -> Constant
Structure         -> Type
Tag               -> Special
Todo                 white              none
Type                 white              none
Typedef           -> Type
Underlined           white              none
# See `:help lCursor`
lCursor           -> Cursor
# See `:help CursorIM`
CursorIM             none              fg
# See `:help window-toolbar`
ToolbarLine          none               black
ToolbarButton        white              black             bold
# }}}

# Additional highlight groups {{{

# Git Commit specific
diffAdded           white               black
diffRemoved         white               black

# Ctrl-p specific
CtrlPPrtText        white               black
CtrlPMatch          white               black
CtrlPPrtBase        white               black
CtrlPLinePre        white               black
CtrlPPrtCursor      white               black

# Markdown specific
mkdItalic           white               black
mkdCode             white               black
mkdSnippetSH        white               black

# NERDTree specific
NERDTreeFile        white               black
NERDTreeExecFile    white               black

### Python Specific
# False None True
# lambda nonlocal pass print return with yield
# class def nextgroup=pythonFunction skipwhite
# as assert break continue del exec global
pythonStatement     white              black             bold
# elif else if
pythonConditional   white              black             bold
# for while
pythonRepeat        white              black             bold
# and in is not or
pythonOperator      white              black             bold
# except finally raise try
pythonException     white              black             bold
# from import
pythonInclude       white              black             bold
# async await
pythonAsync         white              black             bold
# \
pythonEscape        white              black             bold
#
pythonBuiltin       white              black             bold
pythonFunction      white              black             bold

# }}}
