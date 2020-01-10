" dogrun: Take a sweet dog with you.
"
" Author: wadackel
" License: MIT

if &background !=# 'dark'
  set background=dark
endif

if exists('g:colors_name')
  hi clear
endif

if exists('g:syntax_on')
  syntax reset
endif

let g:colors_name = 'dogrun'

hi Normal guifg=#9ea3c0 ctermfg=146 guibg=#222433 ctermbg=235
hi Delimiter guifg=#8085a6 ctermfg=103
hi NonText guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE
hi VertSplit guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#363859 ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Comment guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Cursor guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi CursorIM guifg=#222433 ctermfg=235 guibg=#9ea3c0 ctermbg=146
hi SignColumn guifg=#545c8c ctermfg=60 guibg=NONE ctermbg=NONE
hi ColorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#535f98 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#c2968c ctermfg=138 guibg=#222433 ctermbg=235 gui=NONE cterm=NONE
hi NormalFloat guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237 gui=NONE cterm=NONE
hi Folded guifg=#666c99 ctermfg=60 guibg=#32364c ctermbg=237 gui=NONE cterm=NONE
hi FoldColumn guifg=#32364c ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guibg=#2f3147 ctermbg=236
hi Directory guifg=#b5ae7d ctermfg=144
hi Underlined gui=underline cterm=underline
hi String guifg=#7cbe8c ctermfg=108
hi Statement guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Label guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Function guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Constant guifg=#73c1a9 ctermfg=79
hi Boolean guifg=#73c1a9 ctermfg=79
hi Number guifg=#73c1a9 ctermfg=79
hi Float guifg=#73c1a9 ctermfg=79
hi Title guifg=#b5ae7d ctermfg=144 gui=bold cterm=bold
hi Keyword guifg=#c2968c ctermfg=138
hi Identifier guifg=#c2968c ctermfg=138
hi Exception guifg=#b5ae7d ctermfg=144
hi Type guifg=#b5ae7d ctermfg=144 gui=NONE cterm=NONE
hi TypeDef guifg=#b5ae7d ctermfg=144 gui=NONE cterm=NONE
hi PreProc guifg=#c173c1 ctermfg=170
hi Special guifg=#c173c1 ctermfg=170
hi SpecialKey guifg=#c173c1 ctermfg=170
hi SpecialChar guifg=#c173c1 ctermfg=170
hi SpecialComment guifg=#c173c1 ctermfg=170
hi Error guifg=#f56574 ctermfg=204 guibg=#222433 ctermbg=235 gui=bold cterm=bold
hi ErrorMsg guifg=#f56574 ctermfg=204 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#c2968c ctermfg=138 gui=bold cterm=bold
hi MoreMsg guifg=#73c1a9 ctermfg=79
hi Todo guifg=#b5ae7d ctermfg=144 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Pmenu guifg=#9ea3c0 ctermfg=146 guibg=#32364c ctermbg=237
hi PmenuSel guifg=#9ea3c0 ctermfg=146 guibg=#424865 ctermbg=60
hi PmenuSbar guibg=#292c3f ctermbg=236
hi PmenuThumb guibg=#464f7f ctermbg=60
hi Visual guibg=#363e7f ctermbg=61 gui=NONE cterm=NONE
hi Search guifg=#494f8b ctermfg=60 guibg=#5d6ad8 ctermbg=62
hi IncSearch guifg=#494f8b ctermfg=60 guibg=#5d6ad8 ctermbg=62
hi Question guifg=#73c1a9 ctermfg=79 gui=bold cterm=bold
hi WildMenu guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104
hi SpellBad guifg=#f56574 ctermfg=204 gui=underline cterm=underline
hi SpellCap gui=underline cterm=underline
hi SpellLocal guifg=#f56574 ctermfg=204 gui=underline cterm=underline
hi SpellRare guifg=#b5ae7d ctermfg=144 gui=underline cterm=underline
hi DiffAdd guibg=#3d5843 ctermbg=23 gui=bold cterm=bold
hi DiffChange guibg=#35332b ctermbg=236 gui=bold cterm=bold
hi DiffDelete guifg=#d2d9ff ctermfg=189 guibg=#674267 ctermbg=96 gui=bold cterm=bold
hi DiffText guibg=#685f3f ctermbg=58 gui=NONE cterm=NONE
hi QuickFixLine guifg=#9ea3c0 ctermfg=146 guibg=#363e7f ctermbg=61
hi StatusLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineTerm guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=bold cterm=bold
hi StatusLineNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#4b4e6d ctermfg=60 guibg=#282a3a ctermbg=235 gui=NONE cterm=NONE
hi TabLine guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineFill guifg=#757aa5 ctermfg=103 guibg=#2a2c3f ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel guifg=#222433 ctermfg=235 guibg=#929be5 ctermbg=104 gui=bold cterm=bold
hi qfFileName guifg=#73c1a9 ctermfg=79
hi qfLineNr guifg=#545c8c ctermfg=60
hi htmlTag guifg=#8085a6 ctermfg=103
hi htmlEndTag guifg=#8085a6 ctermfg=103
hi htmlSpecialTagName guifg=#c2968c ctermfg=138
hi htmlArg guifg=#8085a6 ctermfg=103
hi yamlBlockMappingKey guifg=#929be5 ctermfg=104
hi yamlAnchor guifg=#c173c1 ctermfg=170
hi mkdHeading guifg=#545c8c ctermfg=60
hi mkdLink guifg=#929be5 ctermfg=104
hi mkdCode guifg=#929be5 ctermfg=104
hi mkdCodeStart guifg=#929be5 ctermfg=104
hi mkdCodeEnd guifg=#929be5 ctermfg=104
hi mkdCodeDelimiter guifg=#929be5 ctermfg=104
hi typescriptImport guifg=#929be5 ctermfg=104
hi mkdHeading guifg=#545c8c ctermfg=60
hi mkdLink guifg=#929be5 ctermfg=104
hi mkdCode guifg=#929be5 ctermfg=104
hi mkdCodeStart guifg=#929be5 ctermfg=104
hi mkdCodeEnd guifg=#929be5 ctermfg=104
hi mkdCodeDelimiter guifg=#929be5 ctermfg=104
hi tomlTable guifg=#929be5 ctermfg=104
hi rustModPath guifg=#929be5 ctermfg=104
hi rustTypedef guifg=#929be5 ctermfg=104
hi rustStructure guifg=#929be5 ctermfg=104
hi rustMacro guifg=#929be5 ctermfg=104
hi rustExternCrate guifg=#929be5 ctermfg=104
hi vimfilerOpenedFile guifg=#6f78be ctermfg=104
hi vimfilerClosedFile guifg=#6f78be ctermfg=104
hi vimfilerNonMark guifg=#73c1a9 ctermfg=79
hi vimfilerLeaf guifg=#73c1a9 ctermfg=79
hi DefxIconsMarkIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsDirectory guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsParentDirectory guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsSymlinkDirectory guifg=#73c1a9 ctermfg=79 gui=NONE cterm=NONE
hi DefxIconsOpenedTreeIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsNestedTreeIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi DefxIconsClosedTreeIcon guifg=#6f78be ctermfg=104 gui=NONE cterm=NONE
hi Defx_git_Untracked guifg=#929be5 ctermfg=104 gui=NONE cterm=NONE
hi Defx_git_Ignored guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Defx_git_Unknown guifg=#545c8c ctermfg=60 gui=NONE cterm=NONE
hi Defx_git_Renamed guifg=#35332b ctermfg=236
hi Defx_git_Modified guifg=#35332b ctermfg=236
hi Defx_git_Unmerged guifg=#c173c1 ctermfg=170
hi Defx_git_Deleted guifg=#674267 ctermfg=96
hi Defx_git_Staged guifg=#73c1a9 ctermfg=79
hi GitGutterAdd guifg=#7cbe8c ctermfg=108
hi GitGutterChange guifg=#b5ae7d ctermfg=144
hi GitGutterDelete guifg=#c173c1 ctermfg=170
hi GitGutterChangeDelete guifg=#685f3f ctermfg=58
hi ALEWarningSign guifg=#c2968c ctermfg=138 gui=bold cterm=bold
hi ALEInfoSign guifg=#82dabf ctermfg=115 gui=NONE cterm=NONE
hi CleverFChar guifg=#494f8b ctermfg=60 guibg=#5d6ad8 ctermbg=62 gui=underline cterm=underline
hi EasyMotionTarget guifg=#b5ae7d ctermfg=144 gui=bold cterm=bold
hi EasyMotionShade guifg=#545c8c ctermfg=60 guibg=#222433 ctermbg=235
hi EasyMotionIncCursor guifg=#9ea3c0 ctermfg=146 guibg=#222433 ctermbg=235
if has("nvim")
  let g:terminal_color_0 = '#111219'
  let g:terminal_color_1 = '#db5966'
  let g:terminal_color_2 = '#7cbe8c'
  let g:terminal_color_3 = '#9b956b'
  let g:terminal_color_4 = '#2994c6'
  let g:terminal_color_5 = '#6c75cb'
  let g:terminal_color_6 = '#73c1a9'
  let g:terminal_color_7 = '#9ea3c0'
  let g:terminal_color_8 = '#545c8c'
  let g:terminal_color_9 = '#c173c1'
  let g:terminal_color_10 = '#7cbe8c'
  let g:terminal_color_11 = '#b5ae7d'
  let g:terminal_color_12 = '#31a9e0'
  let g:terminal_color_13 = '#929be5'
  let g:terminal_color_14 = '#2aacbd'
  let g:terminal_color_15 = '#9ea3c0'
let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif
let g:defx_icons_gui_colors = {
  \ 'brown': 'c22838',
  \ 'aqua': '3495a3',
  \ 'blue': '3e9ac6',
  \ 'darkBlue': '4282a0',
  \ 'purple': '6f78be',
  \ 'lightPurple': '959acb',
  \ 'red': 'db5966',
  \ 'beige': '757367',
  \ 'yellow': '9b956b',
  \ 'orange': 'dba99e',
  \ 'darkOrange': '8f6258',
  \ 'pink': 'a763a7',
  \ 'salmon': 'b459b4',
  \ 'green': '63976f',
  \ 'lightGreen': '5aa46c',
  \ 'white': '898da6',
  \}
let g:defx_icons_term_colors = {
  \ 'brown': 160,
  \ 'aqua': 30,
  \ 'blue': 74,
  \ 'darkBlue': 31,
  \ 'purple': 104,
  \ 'lightPurple': 103,
  \ 'red': 167,
  \ 'beige': 243,
  \ 'yellow': 101,
  \ 'orange': 181,
  \ 'darkOrange': 95,
  \ 'pink': 133,
  \ 'salmon': 133,
  \ 'green': 65,
  \ 'lightGreen': 71,
  \ 'white': 103,
  \}
