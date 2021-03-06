" Name:    Elrodeo (based on github.com/MvanDiemen/ghostbuster)
" Author:  Christian Müller
" License: MIT
" Version: 4.0.3

" Global setup =============================================================={{{

hi clear
syntax reset
let g:colors_name = 'elrodeo'

if has('gui_running') 
  " Utility functions -------------------------------------------------------{{{
  " sets the highlighting for the given group
  fun <SID>X(group, fg, bg, attr)
    let l:attr = 'none'
    if a:fg !=? ''
      exec 'hi ' . a:group . ' guifg=#' . a:fg
    endif
    if a:bg !=? ''
      exec 'hi ' . a:group . ' guibg=#' . a:bg
    endif
    if a:attr !=? ''
      exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
  endfun

  "}}}

  " Color definition --------------------------------------------------------{{{
  let s:violet_0 = '835fdd'
  let s:blue_1 = '4C7290'
  let s:blue_2 = 'A9BFD1'
  let s:blue_3 = '347BB2'
  let s:blue_4 = '8FBADB'

  let s:green_0 = '20b070'
  let s:green_1 = '82cdc0'
  let s:green_2 = '2d9885'
  let s:green_3 = '156d62'
  let s:green_4 = '96bdb4'


  if &background ==? 'light'
    let s:duo_1 = s:green_2
    let s:duo_2 = s:green_3
    let s:duo_3 = s:green_2

    let s:uno_1 = s:violet_0
    let s:uno_2 = s:blue_1
    let s:uno_3 = s:blue_3
    let s:uno_4 = s:blue_3

    let s:trio_1 = s:green_2
    let s:trio_2 = s:green_2
    let s:trio_3 = s:green_1

    let s:syntax_fg               = '505050'
    let s:syntax_bg               = 'd0d5d5'
    let s:syntax_accent           = s:blue_3
    let s:syntax_gutter           = '636d83'
    let s:syntax_fold_bg          = '778ca9'
    let s:syntax_cursor_line      = 'b8bfbf'
    let s:string = '335588'
  else
    let s:duo_1 = s:green_2
    let s:duo_2 = s:green_0
    let s:duo_3 = s:green_1

    let s:uno_1 = s:violet_0
    let s:uno_2 = s:blue_1
    let s:uno_3 = s:blue_2
    let s:uno_4 = s:blue_3

    let s:trio_1 = s:green_2
    let s:trio_2 = s:green_3
    let s:trio_3 = s:green_4

    let s:syntax_fg               = 'b0b0b0'
    let s:syntax_bg               = '333a3a'
    let s:syntax_accent           = s:blue_4
    let s:syntax_gutter           = '636d83'
    let s:syntax_fold_bg          = '576c89'
    let s:syntax_cursor_line      = '232a2a'
    let s:string = '99bbdd'
  endif

let s:syntax_color_renamed  = '33a0ff'
let s:syntax_color_added    = s:duo_2
let s:syntax_color_modified = s:uno_1
let s:syntax_color_removed  = 'e05252'


  "}}}

  " Vim editor color --------------------------------------------------------{{{
  call <sid>X('bold',         '',               '',                   'bold')
  call <sid>X('ColorColumn',  '',               s:syntax_cursor_line, '')
  call <sid>X('Conceal',      '',               '',                   '')
  call <sid>X('Cursor',       s:syntax_bg,      s:syntax_fg,          '')
  call <sid>X('CursorIM',     '',               '',                   '')
  call <sid>X('CursorColumn', '',               s:syntax_cursor_line, '')
  call <sid>X('CursorLine',   '',               s:syntax_cursor_line, '')
  call <sid>X('Directory',    s:duo_2,          '',                   '')
  call <sid>X('ErrorMsg',     s:syntax_accent,  s:syntax_bg,          'none')
  call <sid>X('VertSplit',    s:syntax_fold_bg, '',                   'none')
  call <sid>X('Folded',       s:syntax_bg,      s:syntax_fold_bg,     '')
  call <sid>X('FoldColumn',   '',               s:uno_4,              '')
  call <sid>X('IncSearch',    s:syntax_bg,      s:uno_4,              '')
  call <sid>X('LineNr',       s:syntax_gutter, s:syntax_cursor_line,  '')
  call <sid>X('CursorLineNr', s:uno_3,          s:syntax_cursor_line, 'none')
  call <sid>X('MatchParen',   s:syntax_bg,      s:green_2,            '')
  call <sid>X('none',         '',               '',                   'none')
  call <sid>X('ModeMsg',      s:syntax_fg,      '',                   '')
  call <sid>X('MoreMsg',      s:syntax_fg,      '',                   '')
  call <sid>X('NonText',      s:uno_4,          '',                   '')
  call <sid>X('PMenu',        '',               s:syntax_cursor_line, '')
  call <sid>X('PMenuSel',     '',               s:syntax_bg,          '')
  call <sid>X('PMenuSbar',    '',               s:syntax_bg,          '')
  call <sid>X('PMenuThumb',   '',               s:uno_1,              '')
  call <sid>X('Question',     s:syntax_accent,  '',                   '')
  call <sid>X('Search',       s:syntax_bg,      s:duo_1,              '')
  call <sid>X('SpecialKey',   s:syntax_fold_bg, '',                   '')
  call <sid>X('StatusLine',   s:syntax_fg,      s:syntax_cursor_line, 'none')
  call <sid>X('StatusLineNC', s:uno_4,          '',                   '')
  call <sid>X('TabLine',      s:uno_4,          '',                   '')
  call <sid>X('TabLineFill',  '',               '',                   'none')
  call <sid>X('TabLineSel',   s:syntax_fg,      '',                   '')
  call <sid>X('Title',        s:duo_2,          '',                   'bold')
  call <sid>X('Visual',       '',               s:syntax_cursor_line, '')
  call <sid>X('VisualNOS',    '',               s:syntax_cursor_line, '')
  call <sid>X('WarningMsg',   s:syntax_accent,  '',                   '')
  call <sid>X('TooLong',      s:syntax_accent,  '',                   '')
  call <sid>X('WildMenu',     s:syntax_fg,      s:uno_4,              '')
  call <sid>X('Normal',       s:syntax_fg,      s:syntax_bg,          '')
  call <sid>X('SignColumn',   '',               s:uno_4,              '')
  call <sid>X('Special',      s:duo_1,          '',                   '')
  " }}}

  " Standard syntax highlighting --------------------------------------------{{{
  call <sid>X('Comment',        s:syntax_fold_bg,'',          'none')
  call <sid>X('Constant',       s:trio_2,        '',          '')
  call <sid>X('String',         s:string,        '',          'none')
  call <sid>X('Character',      s:duo_2,         '',          '')
  call <sid>X('Number',         s:duo_1,         '',          '')
  call <sid>X('Boolean',        s:violet_0,      '',          '')
  call <sid>X('Float',          s:duo_2,         '',          '')
  call <sid>X('Identifier',     s:uno_3,         '',          '')
  call <sid>X('Function',       s:uno_2,         '',          'bold')
  call <sid>X('Statement',      s:duo_2,         '',          '')
  call <sid>X('Conditional',    s:syntax_accent, '',          'bold')
  call <sid>X('Repeat',         s:duo_2,         '',          '')
  call <sid>X('Label',          s:uno_1,         '',          'bold')
  call <sid>X('Operator',       s:uno_2,         '',          'none')
  call <sid>X('Keyword',        s:uno_1,         '',          '')
  call <sid>X('Exception',      s:uno_1,         '',          '')
  call <sid>X('PreProc',        s:uno_1,         '',          '')
  call <sid>X('Include',        s:duo_2,         '',          '')
  call <sid>X('Define',         s:duo_1,         '',          'none')
  call <sid>X('Macro',          s:uno_3,         '',          '')
  call <sid>X('PreCondit',      s:duo_3,        '',          '')
  call <sid>X('Type',           s:duo_1,         '',          'bold')
  call <sid>X('StorageClass',   s:duo_2,         '',          '')
  call <sid>X('Structure',      s:uno_1,         '',          '')
  call <sid>X('Typedef',        s:uno_1,         '',          '')
  call <sid>X('Special',        s:uno_3,         '',          '')
  call <sid>X('SpecialChar',    '',              '',          '')
  call <sid>X('Tag',            '',              '',          '')
  call <sid>X('Delimiter',      s:uno_1,         '',          '')
  call <sid>X('SpecialComment', '',              '',          '')
  call <sid>X('Debug',          '',              '',          '')
  call <sid>X('Underlined',     s:duo_1,         '',          'underline')
  call <sid>X('Ignore',         '',              '',          '')
  call <sid>X('Error',          s:syntax_accent, s:syntax_bg, 'bold')
  call <sid>X('Todo',           s:duo_2,         s:syntax_bg, '')
  " }}}

  " Diff highlighting -------------------------------------------------------{{{
  call <sid>X('DiffAdd',     s:syntax_color_added,    s:syntax_cursor_line, '')
  call <sid>X('DiffChange',  s:syntax_color_modified, s:syntax_cursor_line, '')
  call <sid>X('DiffDelete',  s:syntax_color_removed,  s:syntax_cursor_line, '')
  call <sid>X('DiffText',    s:uno_3,                 s:syntax_cursor_line, '')
  call <sid>X('DiffAdded',   s:duo_2,                 s:syntax_cursor_line, '')
  call <sid>X('DiffFile',    s:syntax_accent,         s:syntax_cursor_line, '')
  call <sid>X('DiffNewFile', s:duo_2,                 s:syntax_cursor_line, '')
  call <sid>X('DiffLine',    s:uno_2,                 s:syntax_cursor_line, '')
  call <sid>X('DiffRemoved', s:syntax_accent,         s:syntax_cursor_line, '')
  " }}}

  " Asciidoc highlighting ---------------------------------------------------{{{
  call <sid>X('asciidocListingBlock',   s:uno_2,  '', '')
  " }}}

  " C/C++ and other languages like that -------------------------------------{{{
  "call <sid>X('cCustomParen',           s:uno_4,         '', '')
  " }}}

  " CSS/Sass highlighting ---------------------------------------------------{{{
  call <sid>X('cssAttrComma',           s:duo_3,         '', '')
  call <sid>X('cssAttributeSelector',   s:duo_2,         '', '')
  call <sid>X('cssBraces',              s:uno_4,         '', '')
  call <sid>X('cssClassName',           s:uno_1,         '', '')
  call <sid>X('cssClassNameDot',        s:uno_1,         '', '')
  call <sid>X('cssDefinition',          s:duo_3,         '', '')
  call <sid>X('cssFlexibleBoxAttr',     s:duo_1,         '', '')
  call <sid>X('cssBorderAttr',          s:duo_1,         '', '')
  call <sid>X('cssPositioningAttr',     s:duo_1,         '', '')
  call <sid>X('cssTransitionAttr',      s:duo_1,         '', '')
  call <sid>X('cssCommonAttr',          s:duo_1,         '', '')
  call <sid>X('cssBoxAttr',             s:duo_1,         '', '')
  call <sid>X('cssFontAttr',            s:duo_1,         '', '')
  call <sid>X('cssTextAttr',            s:duo_1,         '', '')
  call <sid>X('cssFontDescriptor',      s:uno_1,         '', '')
  call <sid>X('cssFunctionName',        s:uno_3,         '', '')
  call <sid>X('cssIdentifier',          s:duo_1,         '', '')
  call <sid>X('cssImportant',           s:duo_1,         '', '')
  call <sid>X('cssUnitDecorators',      s:duo_2,         '', '')
  call <sid>X('cssInclude',             s:uno_1,         '', '')
  call <sid>X('cssIncludeKeyword',      s:duo_3,         '', '')
  call <sid>X('cssMediaType',           s:uno_1,         '', '')
  call <sid>X('cssProp',                s:uno_3,         '', '')
  call <sid>X('cssPseudoClassId',       s:uno_1,         '', '')
  call <sid>X('cssSelectorOp',          s:duo_3,         '', '')
  call <sid>X('cssSelectorOp2',         s:duo_3,         '', '')
  call <sid>X('cssStringQ',             s:duo_1,         '', '')
  call <sid>X('cssStringQQ',            s:duo_1,         '', '')
  call <sid>X('cssTagName',             s:uno_1,         '', '')
  call <sid>X('cssClassNameDot',        s:uno_4,         '', '')
  call <sid>X('cssValueNumber',         s:duo_1,         '', '')

  " }}}

  " Go highlighting ---------------------------------------------------------{{{
  call <sid>X('goDeclaration',         s:duo_3, '', '')
  " }}}

  " Git and git related plugins highlighting --------------------------------{{{
  call <sid>X('gitcommitComment',       s:uno_4,         '', '')
  call <sid>X('gitcommitUnmerged',      s:duo_2,         '', '')
  call <sid>X('gitcommitOnBranch',      '',              '', '')
  call <sid>X('gitcommitBranch',        s:duo_3,         '', '')
  call <sid>X('gitcommitDiscardedType', s:syntax_accent, '', '')
  call <sid>X('gitcommitSelectedType',  s:duo_2,         '', '')
  call <sid>X('gitcommitHeader',        '',              '', '')
  call <sid>X('gitcommitUntrackedFile', s:duo_2,         '', '')
  call <sid>X('gitcommitDiscardedFile', s:syntax_accent, '', '')
  call <sid>X('gitcommitSelectedFile',  s:duo_2,         '', '')
  call <sid>X('gitcommitUnmergedFile',  s:uno_1,         '', '')
  call <sid>X('gitcommitFile',          '',              '', '')
  hi link gitcommitNoBranch       gitcommitBranch
  hi link gitcommitUntracked      gitcommitComment
  hi link gitcommitDiscarded      gitcommitComment
  hi link gitcommitSelected       gitcommitComment
  hi link gitcommitDiscardedArrow gitcommitDiscardedFile
  hi link gitcommitSelectedArrow  gitcommitSelectedFile
  hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

  call <sid>X('SignifySignAdd',    s:duo_2,         '', '')
  call <sid>X('SignifySignChange', s:uno_1,         '', '')
  call <sid>X('SignifySignDelete', s:syntax_accent, '', '')
  hi link GitGutterAdd    SignifySignAdd
  hi link GitGutterChange SignifySignChange
  hi link GitGutterDelete SignifySignDelete
  call <sid>X('diffAdded',   s:duo_2,         '', '')
  call <sid>X('diffRemoved', s:syntax_accent, '', '')
  " }}}

  " HTML highlighting -------------------------------------------------------{{{
  call <sid>X('htmlArg',            s:uno_2, '', '')
  call <sid>X('htmlTagName',        s:uno_1, '', '')
  call <sid>X('htmlSpecialTagName', s:uno_1, '', '')
  call <sid>X('htmlTag',            s:uno_4, '', '')

  call <sid>X('liquidDelimiter',    s:uno_4, '', '')
  call <sid>X('liquidKeyword',      s:uno_3, '', '')
  " }}}

  " JavaScript highlighting -------------------------------------------------{{{
  call <sid>X('coffeeString',           s:duo_2,         '', '')

  call <sid>X('javaScriptBraces',       s:uno_4,         '', '')
  call <sid>X('javaScriptFunction',     s:duo_3,         '', '')
  call <sid>X('javaScriptIdentifier',   s:duo_3,         '', '')
  call <sid>X('javaScriptNull',         s:uno_1,         '', '')
  call <sid>X('javaScriptNumber',       s:uno_1,         '', '')
  call <sid>X('javaScriptRequire',      s:duo_2,         '', '')
  call <sid>X('javaScriptReserved',     s:duo_3,         '', '')
  " https://github.com/pangloss/vim-javascript
  call <sid>X('jsArrowFunction',        s:duo_3,         '', '')
  call <sid>X('jsClassKeywords',        s:duo_3,         '', '')
  call <sid>X('jsDocParam',             s:duo_2,         '', '')
  call <sid>X('jsDocTags',              s:duo_3,         '', '')
  call <sid>X('jsFuncCall',             s:duo_2,         '', '')
  call <sid>X('jsFunction',             s:duo_3,         '', '')
  call <sid>X('jsGlobalObjects',        s:uno_1,         '', '')
  call <sid>X('jsModuleWords',          s:duo_3,         '', '')
  call <sid>X('jsModules',              s:duo_3,         '', '')
  call <sid>X('jsNull',                 s:uno_1,         '', '')
  call <sid>X('jsOperator',             s:duo_3,         '', '')
  call <sid>X('jsStorageClass',         s:duo_3,         '', '')
  call <sid>X('jsTemplateBraces',       s:syntax_accent, '', '')
  call <sid>X('jsTemplateVar',          s:duo_2,         '', '')
  call <sid>X('jsThis',                 s:syntax_accent, '', '')
  call <sid>X('jsUndefined',            s:uno_1,         '', '')
  " https://github.com/othree/yajs.vim
  call <sid>X('javascriptArrowFunc',    s:duo_3,         '', '')
  call <sid>X('javascriptClassExtends', s:duo_3,         '', '')
  call <sid>X('javascriptClassKeyword', s:duo_3,         '', '')
  call <sid>X('javascriptDocNotation',  s:duo_3,         '', '')
  call <sid>X('javascriptDocParamName', s:duo_2,         '', '')
  call <sid>X('javascriptDocTags',      s:duo_3,         '', '')
  call <sid>X('javascriptEndColons',    s:uno_4,         '', '')
  call <sid>X('javascriptExport',       s:duo_3,         '', '')
  call <sid>X('javascriptFuncArg',      s:uno_1,         '', '')
  call <sid>X('javascriptFuncKeyword',  s:duo_3,         '', '')
  call <sid>X('javascriptIdentifier',   s:syntax_accent, '', '')
  call <sid>X('javascriptImport',       s:duo_3,         '', '')
  call <sid>X('javascriptObjectLabel',  s:uno_1,         '', '')
  call <sid>X('javascriptOpSymbol',     s:duo_2,         '', '')
  call <sid>X('javascriptOpSymbols',    s:duo_2,         '', '')
  call <sid>X('javascriptPropertyName', s:duo_2,         '', '')
  call <sid>X('javascriptTemplateSB',   s:syntax_accent, '', '')
  call <sid>X('javascriptVariable',     s:duo_3,         '', '')
  " }}}

  " JSON highlighting -------------------------------------------------------{{{
  call <sid>X('jsonCommentError',      s:uno_1,         '', ''        )
  call <sid>X('jsonKeyword',           s:uno_2,         '', ''        )
  call <sid>X('jsonQuote',             s:uno_4,         '', ''        )
  call <sid>X('jsonMissingCommaError', s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonNoQuotesError',     s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonNumError',          s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonString',            s:duo_2,         '', ''        )
  call <sid>X('jsonStringSQError',     s:syntax_accent, '', 'reverse' )
  call <sid>X('jsonSemicolonError',    s:syntax_accent, '', 'reverse' )
  " }}}

  " Markdown highlighting ---------------------------------------------------{{{
  call <sid>X('markdownUrl',              s:duo_3, '', '')
  call <sid>X('markdownCode',             s:duo_1, '', '')
  call <sid>X('markdownHeadingDelimiter', s:duo_3, '', '')
  call <sid>X('markdownListMarker',       s:duo_3, '', '')
  " }}}

  " NERDTree highlighting ---------------------------------------------------{{{
  call <sid>X('NERDTreeExecFile',      s:duo_1, '', '')
  " }}}

  " Spelling highlighting ---------------------------------------------------{{{
  call <sid>X('SpellBad',     '', s:syntax_bg, 'undercurl')
  call <sid>X('SpellLocal',   '', s:syntax_bg, 'undercurl')
  call <sid>X('SpellCap',     '', s:syntax_bg, 'undercurl')
  call <sid>X('SpellRare',    '', s:syntax_bg, 'undercurl')
  " }}}

  " Vim highlighting --------------------------------------------------------{{{
  call <sid>X('vimHighlight',    s:duo_2, '', '')
  call <sid>X('vimLineComment',  s:uno_4, '', 'none')
  call <sid>X('vimCommentTitle', s:uno_4, '', 'bold')
  call <sid>X('vimCommand',      s:uno_1, '', '')
  call <sid>X('vimVar',          s:duo_2, '', '')
  call <sid>X('vimEnvVar',       s:duo_3, '', '')

  " Vim Help highlights
  call <sid>X('helpHyperTextJump', s:duo_1, '', '')
  call <sid>X('helpSpecial',       s:duo_2, '', '')

  " }}}

  " XML highlighting --------------------------------------------------------{{{
  call <sid>X('xmlAttrib',  s:uno_1,         '', '')
  call <sid>X('xmlEndTag',  s:syntax_accent, '', '')
  call <sid>X('xmlTag',     s:syntax_accent, '', '')
  call <sid>X('xmlTagName', s:syntax_accent, '', '')
  " }}}

  " YAML highlighting -------------------------------------------------------{{{
  call <sid>X('yamlKey',         s:duo_2, '', '')
  call <sid>X('yamlOperator',    s:uno_4, '', '')

  call <sid>X('liquidDelimiter', s:uno_4, '', '')
  call <sid>X('liquidKeyword',   s:uno_3, '', '')
  " }}}

  delf <SID>X
else
    colorscheme default
endif
"}}}


