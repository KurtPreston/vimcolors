" LAEDERON: a Vim colorscheme largely inspired by Bad Wolf from Steve Losh
" (http://stevelosh.com/projects/badwolf/)
"
" Name {{{
"
" Laederon is inspired by the cold forest's colours of the north: taiga, 
" tundra and in general unsaturated, cold colours on a white background.
" This theme's name also comes from Steven Erikson's Malazan world where 
" Laederon is a land of pine woods, lakes and snow. So, lots of 
" greys, greens, violets  and all sorts of blue/azure colours.
"
" }}}
"
" Credits {{{
"
" Maintainer:	Gianluca Fiore <forod.g@gmail.com>
" Inspiration:	https://github.com/sjl/badwolf/
" Last Change:	April 2019
" License:		MIT
"
" }}}

" Supporting code -------------------------------------------------------------
" Preamble {{{

if !has("gui_running") && &t_Co != 88 && &t_Co != 256
    finish
endif

set background=light

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
		syntax reset
endif

let g:colors_name="laederon"

if !exists("g:laederon_html_link_underline") " {{{
    let g:laederon_html_link_underline = 1
endif " }}}

if !exists("g:laederon_css_props_highlight") " {{{
    let g:laederon_css_props_highlight = 0
endif " }}}

" }}}
" Palette {{{

let s:lac = {}

" The most basic of all our colors is a slightly tweaked version of the Molokai
" Normal text.
let s:lac.plain					= ['f8f6f2', 15]
" Pure and simple.
let s:lac.snow					= ['ffffff', 15]
let s:lac.coal					= ['000000', 16]
" Some versions of grays
let s:lac.overcast				= ['f1f1f2', 252]
let s:lac.lavendergray			= ['9a9eab', 247]
let s:lac.graybark				= ['5d535e', 245]
let s:lac.graypine				= ['324851', 244]
let s:lac.shadow				= ['2a3132', 241]
let s:lac.blackbark				= ['2e2300', 234]
" Water-like, light blues
let s:lac.deeplake				= ['08457e', 19]
let s:lac.glacierblue			= ['1995ad', 39]
let s:lac.mist					= ['0b7d84', 73]
" Actually, a purple kind of a immatureberry
let s:lac.immatureberry			= ['a49774', 131]
" Not exactly like the fruit but close
let s:lac.plum					= ['824275', 171]
" Imagine a very pale, bleak, trunk
let s:lac.bleaktrunk			= ['645240', 94]
" A leaf on acids. Don't ask...
let s:lac.acidleaf				= ['8c8127', 100]
" A couple more of green variations
let s:lac.youngleaf				= ['8fa476', 72]
let s:lac.darkmoss				= ['4a5d23', 64]
" Like the flower, just less saturated
let s:lac.periwinkle			= ['d0e1f9', 183]
" Quite bright purple sky
let s:lac.purplesky				= ['6633cc', 99]
" Like a blueberry if it were violet
let s:lac.violetberry			= ['336b87', 61]

" }}}
" Highlighting Function {{{

function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:lac, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:lac, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:lac, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif

    " echom histring

    execute histring
endfunction

" }}}
" Configuration Options {{{

if exists('g:laederon_darkgutter') && g:laederon_darkgutter
    let s:gutter = 'blackbark'
else
    let s:gutter = 'blackbark'
endif

" }}}

" Actual colorscheme ----------------------------------------------------------

" General/UI {{{

call s:HL('Normal', 'blackbark', 'plain')

call s:HL('Folded', 'snow', 'lavendergray', 'none')

call s:HL('VertSplit', 'lavendergray', 'graybark', 'none')

call s:HL('CursorLine',   '', 'overcast', 'none')
call s:HL('CursorColumn', '', 'shadow')
call s:HL('ColorColumn',  '', 'shadow')

call s:HL('MatchParen', 'glacierblue', 'overcast', 'bold')

call s:HL('NonText',    'graypine', 'bg')
call s:HL('SpecialKey', 'graypine', 'bg')

call s:HL('Visual',    'glacierblue',  'graypine')
call s:HL('VisualNOS', 'glacierblue',  'graypine')

call s:HL('Search',    'coal', 'immatureberry', 'bold')
call s:HL('IncSearch', 'coal', 'plum',    'bold')

call s:HL('Underlined', 'fg', '', 'underline')

call s:HL('StatusLine',   'snow', 'graypine',     'bold')
call s:HL('StatusLineNC', 'graypine', 'overcast', 'bold')

call s:HL('Directory', 'youngleaf', '', 'bold')

call s:HL('Title', 'glacierblue')

call s:HL('ErrorMsg',   'snow',        'immatureberry', 'bold')
call s:HL('MoreMsg',    'immatureberry',   '',   'bold')
call s:HL('ModeMsg',    'youngleaf', '',   'bold')
call s:HL('Question',   'youngleaf', '',   'bold')
call s:HL('WarningMsg', 'purplesky',       '',   'bold')

call s:HL('TabLine', 'immatureberry', 'coal')
call s:HL('TabLineFill', 'immatureberry', 'coal')
call s:HL('TabLineSel', 'glacierblue', 'coal', 'bold')

call s:HL('QuickFixLine', 'snow', 'blackbark')

" This is a ctags tag, not an HTML one.  'Something you can use c-] on'.
call s:HL('Tag', '', '', 'bold')

" }}}
" Gutter {{{

call s:HL('LineNr',     'graypine', 'plain', 'none')
call s:HL('SignColumn', 'graypine', 'overcast', 'none')
call s:HL('FoldColumn', 'graypine', 'overcast', 'none')

" }}}
" Cursor {{{

call s:HL('Cursor',  'coal', 'plum', 'bold')
call s:HL('vCursor', 'coal', 'plum', 'bold')
call s:HL('iCursor', 'coal', 'plum', 'none')
call s:HL('CursorLineNr', 'coal', 'plum', 'none')
call s:HL('CursorIM', 'coal', 'plum', 'none')

" }}}
" Syntax highlighting {{{

" Start with a simple base.
call s:HL('Special', 'youngleaf')

" Comments are slightly brighter than folds, to make 'headers' easier to see.
call s:HL('Comment',        'graybark')
call s:HL('Todo',           'snow',        'plum', 'bold')
call s:HL('SpecialComment', 'glacierblue', 'bg', 'bold')

call s:HL('String', 'bleaktrunk')

" Control flow stuff is darkmoss.
call s:HL('Statement',   'darkmoss', '', 'bold')
call s:HL('Keyword',     'darkmoss', '', 'bold')
call s:HL('Conditional', 'darkmoss', '', 'bold')
call s:HL('Operator',    'darkmoss', '', 'none')
call s:HL('Label',       'darkmoss', '', 'none')
call s:HL('Repeat',      'darkmoss', '', 'none')

" Functions and variable declarations are acidleaf
call s:HL('Identifier', 'acidleaf', '', 'bold')
call s:HL('Function',   'acidleaf', '', 'bold')

" Preprocessor stuff is glacierblue, to make it pop.
"
" This includes imports in any given language, because they should usually be
" grouped together at the beginning of a file.  If they're in the middle of some
" other code they should stand out, because something tricky is
" probably going on.
call s:HL('PreProc',   'deeplake', '', 'bold')
call s:HL('Macro',     'deeplake', '', 'bold')
call s:HL('Define',    'deeplake', '', 'bold')
call s:HL('PreCondit', 'deeplake', '', 'bold')

" Constants of all kinds are colored together.
call s:HL('Constant',  'purplesky', '', 'bold')
call s:HL('Character', 'purplesky', '', 'bold')
call s:HL('Boolean',   'purplesky', '', 'bold')
call s:HL('Number', 'purplesky', '', 'bold')
call s:HL('Float',  'purplesky', '', 'bold')

" Not sure what 'special character in a constant' means, but let's make it pop.
call s:HL('SpecialChar', 'purplesky', '', 'bold')

call s:HL('Type', 'violetberry', '', 'none')
call s:HL('StorageClass', 'mist', '', 'none')
call s:HL('Structure', 'mist', '', 'none')
call s:HL('Typedef', 'mist', '', 'bold')

" Make try/catch blocks stand out.
call s:HL('Exception', 'glacierblue', '', 'bold')

" Misc
call s:HL('Error',  'snow',   'immatureberry', 'bold')
call s:HL('Debug',  'snow',   'blackbark', 'bold')
call s:HL('Ignore', 'graybark', '',      '')

" }}}
" Completion Menu {{{

call s:HL('Pmenu', 'plain', 'shadow')
call s:HL('PmenuSel', 'coal', 'plum', 'bold')
call s:HL('PmenuSbar', '', 'shadow')
call s:HL('PmenuThumb', 'overcast')

" }}}
" Diffs {{{

call s:HL('DiffDelete', 'glacierblue', 'coal')
call s:HL('DiffAdd',    'mist',     'shadow')
call s:HL('DiffChange', 'darkmoss',     'shadow')
call s:HL('DiffText',   'snow', 'shadow', 'bold')

" }}}
" Spelling {{{

if has("spell")
    call s:HL('SpellCap', 'immatureberry', 'bg', 'undercurl,bold', 'immatureberry')
    call s:HL('SpellBad', '', '', '', 'immatureberry')
    call s:HL('SpellLocal', '', '', '', 'immatureberry')
    call s:HL('SpellRare', '', '', '', 'immatureberry')
endif

" }}}

" }}}
" Plugins {{{

" Airline {{{
if exists('g:airline_theme')
	" vim-airline installed, enable the colors

	" Visual mode
	let s:lac.V1 = [ '#a49774', '#2e2300','131','234']
	let s:lac.V2 = [ '#2e2300', '#a49774','234','131']
	let s:lac.V3 = [ '#824275', '#f8f6f2','171','15']

	" Replace mode
	let s:lac.R1 = [ '#336b87' , '#f8f6f2','61','15']
	let s:lac.R2 = [ '#6633cc' , '#f1f1f2','99','252']
	let s:lac.R3 = [ '#f8f6f2' , '#336b87','15','61']

	let g:airline#themes#laederon#palette = {}

	let s:StatusLine = airline#themes#get_highlight('StatusLine')
	let s:StatusLineNC = airline#themes#get_highlight('StatusLineNC')
	let s:lac.I1 = [ '#4a5d23', '#f8f6f2','64','15']
	let s:lac.I2 = [ '#f8f6f2', '#4a5d23','15','64']
	let s:lac.I3 = [ '#8c8127', '#f8f6f2','100','15']

	" Normal mode
	let s:lac.N1 = [ '#08457e' , '#f8f6f2','19','15']
	let s:lac.N2 = [ '#000000' , '#1995ad','16','39']
	let s:lac.N3 = s:StatusLine

	let g:airline#themes#laederon#palette.normal = airline#themes#generate_color_map(s:lac.N1, s:lac.N2, s:lac.N3)
	let g:airline#themes#laederon#palette.visual = airline#themes#generate_color_map(s:lac.V1, s:lac.V2, s:lac.V3)
	let g:airline#themes#laederon#palette.insert = airline#themes#generate_color_map(s:lac.I1, s:lac.I2, s:lac.I3)
	let g:airline#themes#laederon#palette.replace = airline#themes#generate_color_map(s:lac.R1, s:lac.R2, s:lac.R3)

	" Inactive Mode
	let s:IA = airline#themes#get_highlight('StatusLineNC')
	let g:airline#themes#laederon#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
	let g:airline#themes#laederon#palette.inactive_modified = {'airline_c':  ['#4a5d23', s:IA[1],'64',s:IA[3]]}
endif

" CtrlP {{{

    " the message when no match is found
    call s:HL('CtrlPNoEntries', 'snow', 'mist', 'bold')

    " the matched pattern
    call s:HL('CtrlPMatch', 'darkmoss', 'bg', 'none')

    " the line prefix '>' in the match window
    call s:HL('CtrlPLinePre', 'graypine', 'bg', 'none')

    " the prompt’s base
    call s:HL('CtrlPPrtBase', 'graypine', 'bg', 'none')

    " the prompt’s text
    call s:HL('CtrlPPrtText', 'plain', 'bg', 'none')

    " the prompt’s cursor when moving over the text
    call s:HL('CtrlPPrtCursor', 'coal', 'plum', 'bold')

    " 'prt' or 'win', also for 'regex'
    call s:HL('CtrlPMode1', 'coal', 'plum', 'bold')

    " 'file' or 'path', also for the local working dir
    call s:HL('CtrlPMode2', 'coal', 'plum', 'bold')

    " the scanning status
    call s:HL('CtrlPStats', 'coal', 'plum', 'bold')

" }}}
" EasyMotion {{{

call s:HL('EasyMotionTarget', 'plum',     'bg', 'bold')
call s:HL('EasyMotionShade',  'graypine', 'bg')

" }}}
" ShowMarks {{{

call s:HL('ShowMarksHLl', 'plum', 'blackbark')
call s:HL('ShowMarksHLu', 'plum', 'blackbark')
call s:HL('ShowMarksHLo', 'plum', 'blackbark')
call s:HL('ShowMarksHLm', 'plum', 'blackbark')

" }}}
" Filetype-specific {{{

" C {{{

call s:HL('cType', 'immatureberry', 'bg')
call s:HL('cStructure', 'darkmoss', 'bg')
call s:HL('cConstant', 'purplesky', 'bg')
call s:HL('cStatement', 'youngleaf', 'bg')
call s:HL('cConditional', 'plum', 'bg', 'bold')
call s:HL('cRepeat', 'graybark', 'bg', 'bold')

" }}}
" Clojure {{{

call s:HL('clojureSpecial',  'mist', '', '')
call s:HL('clojureDefn',     'mist', '', '')
call s:HL('clojureDefMacro', 'mist', '', '')
call s:HL('clojureDefine',   'mist', '', '')
call s:HL('clojureMacro',    'mist', '', '')
call s:HL('clojureCond',     'mist', '', '')

call s:HL('clojureKeyword', 'darkmoss', '', 'none')

call s:HL('clojureFunc',   'purplesky', '', 'none')
call s:HL('clojureRepeat', 'purplesky', '', 'none')

call s:HL('clojureParen0', 'lavendergray', '', 'none')

call s:HL('clojureAnonArg', 'youngleaf', '', 'bold')

" }}}
" CSS {{{

if g:laederon_css_props_highlight
    call s:HL('cssColorProp', 'youngleaf', '', 'none')
    call s:HL('cssBoxProp', 'youngleaf', '', 'none')
    call s:HL('cssTextProp', 'youngleaf', '', 'none')
    call s:HL('cssRenderProp', 'youngleaf', '', 'none')
    call s:HL('cssGeneratedContentProp', 'youngleaf', '', 'none')
else
    call s:HL('cssColorProp', 'fg', '', 'none')
    call s:HL('cssBoxProp', 'fg', '', 'none')
    call s:HL('cssTextProp', 'fg', '', 'none')
    call s:HL('cssRenderProp', 'fg', '', 'none')
    call s:HL('cssGeneratedContentProp', 'fg', '', 'none')
end

call s:HL('cssValueLength', 'bleaktrunk', '', 'bold')
call s:HL('cssColor', 'bleaktrunk', '', 'bold')
call s:HL('cssBraces', 'lavendergray', '', 'none')
call s:HL('cssIdentifier', 'darkmoss', '', 'bold')
call s:HL('cssClassName', 'darkmoss', '', 'none')
call s:HL('cssImportant', 'immatureberry', '', 'bold')

" }}}
" Crontab {{{

call s:HL('crontabMin', 'graybark', '')
call s:HL('crontabHr', 'glacierblue', '')
call s:HL('crontabDay', 'bleaktrunk', '')
call s:HL('crontabMnth', 'purplesky', '')
call s:HL('crontabMnth12', 'purplesky', '')
call s:HL('crontabDow', 'acidleaf', '')
call s:HL('crontabDow7', 'acidleaf', '')
call s:HL('crontabCmd', 'youngleaf', '')

" }}}
" Diff {{{

call s:HL('gitDiff', 'lavendergray', '',)

call s:HL('diffRemoved', 'purplesky', '',)
call s:HL('diffAdded', 'glacierblue', '',)
call s:HL('diffFile', 'coal', 'mist', 'bold')
call s:HL('diffNewFile', 'coal', 'mist', 'bold')

call s:HL('diffLine', 'coal', 'darkmoss', 'bold')
call s:HL('diffSubname', 'darkmoss', '', 'none')

" }}}
" Django Templates {{{

call s:HL('djangoArgument', 'youngleaf', '',)
call s:HL('djangoTagBlock', 'darkmoss', '')
call s:HL('djangoVarBlock', 'darkmoss', '')

" }}}
" Fstab {{{

call s:HL('fsOptionsGeneral', 'periwinkle', '')
call s:HL('fsOptionsKeywords', 'periwinkle', '')
call s:HL('fsTypeKeyword', 'mist', '')
call s:HL('fsMountPoint', 'glacierblue', '')

" }}}
" Go {{{
call s:HL('goType', 'acidleaf', '')
call s:HL('goDeclaration', 'youngleaf', '')
call s:HL('goStatement', 'immatureberry', '')
call s:HL('goDirective', 'plum', '')

" }}}
" Haskell {{{

call s:HL('hsVarSym', 'glacierblue', '')
call s:HL('hsConSym', 'glacierblue', '')
call s:HL('hsStatement', 'immatureberry', '')
call s:HL('hsConditional', 'youngleaf', '')
call s:HL('hsTypedef', 'youngleaf', '')
call s:HL('hsStructure', 'youngleaf', '')
call s:HL('hsType', 'deeplake', '')
call s:HL('hsMaybe', 'deeplake', '')
call s:HL('hsBoolean', 'deeplake', '')
call s:HL('hsExitCode', 'deeplake', '')
call s:HL('hsOrdering', 'deeplake', '')
call s:HL('hsDebug', 'deeplake', '')

" }}}
" HTML {{{

call s:HL('htmlString',	'bleaktrunk', 'bg', 'none')
call s:HL('htmlValue',	'bleaktrunk', 'bg', 'none')

" Punctuation
call s:HL('htmlTag',    'glacierblue', 'bg', 'none')
call s:HL('htmlEndTag', 'glacierblue', 'bg', 'none')

" Tag names
call s:HL('htmlTagName',        'darkmoss', '', 'bold')
call s:HL('htmlSpecialTagName', 'darkmoss', '', 'bold')
call s:HL('htmlSpecialChar',    'glacierblue',   '', 'none')

" Attributes
call s:HL('htmlArg', 'youngleaf', '', 'none')

" Stuff inside an <a> tag

if g:laederon_html_link_underline
    call s:HL('htmlLink', 'lavendergray', '', 'underline')
else
    call s:HL('htmlLink', 'lavendergray', '', 'none')
endif

" }}}
" Java {{{

call s:HL('javaClassDecl', 'mist', '', 'bold')
call s:HL('javaScopeDecl', 'mist', '', 'bold')
call s:HL('javaCommentTitle', 'graybark', '')
call s:HL('javaDocTags', 'lavendergray', '', 'none')
call s:HL('javaDocParam', 'immatureberry', '', '')

" }}}
" JavaScript {{{
call s:HL('javascriptStatement', 'immatureberry', '', '')
call s:HL('javaScriptStringD', 'graypine', '')
call s:HL('javaScriptStringS', 'graypine', '')
call s:HL('javaScriptBoolean', 'acidleaf', '')
call s:HL('javaScriptNull', 'plum', '')
call s:HL('javaScriptFunction', 'purplesky', '')
call s:HL('javaScriptIdentifier', 'youngleaf', '')
call s:HL('javaScriptBranch', 'purplesky', '')
call s:HL('javaScriptConditional', 'immatureberry', '', 'bold')

" }}}
" Json {{{

call s:HL('jsonString', 'periwinkle', '', '')
call s:HL('jsonNumber', 'lavendergray', '', '')
call s:HL('jsonBoolean', 'acidleaf', '', '')
call s:HL('jsonNull', 'mist', '', 'bold')

" }}}
" LaTex {{{

call s:HL('textStatement', 'mist', '', 'none')
call s:HL('texMathZoneX', 'periwinkle', '', 'none')
call s:HL('texMathZoneA', 'periwinkle', '', 'none')
call s:HL('texMathZoneB', 'periwinkle', '', 'none')
call s:HL('texMathZoneC', 'periwinkle', '', 'none')
call s:HL('texMathZoneD', 'periwinkle', '', 'none')
call s:HL('texMathZoneE', 'periwinkle', '', 'none')
call s:HL('texMathZoneV', 'periwinkle', '', 'none')
call s:HL('texMathZoneX', 'periwinkle', '', 'none')
call s:HL('texMath', 'periwinkle', '', 'none')
call s:HL('texMathMatcher', 'periwinkle', '', 'none')
call s:HL('texRefLabel', 'lavendergray', '', 'none')
call s:HL('texRefZone', 'glacierblue', '', 'none')
call s:HL('texComment', 'immatureberry', '', 'none')
call s:HL('texDelimiter', 'periwinkle', '', 'none')
call s:HL('texZone', 'graybark', '', 'none')

augroup laederon_tex
    au!

    au BufRead,BufNewFile *.tex syn region texMathZoneV start="\\(" end="\\)\|%stopzone\>" keepend contains=@texMathZoneGroup
    au BufRead,BufNewFile *.tex syn region texMathZoneX start="\$" skip="\\\\\|\\\$" end="\$\|%stopzone\>" keepend contains=@texMathZoneGroup
augroup END

" }}}
" LessCSS {{{

call s:HL('lessVariable', 'glacierblue', '', 'none')

" }}}
" Lua {{{

call s:HL('luaFunc', 'purplesky', '')
call s:HL('luaStatement', 'immatureberry', '')
call s:HL('luaConstant', 'plum', '', 'bold')

" }}}
" Mail {{{

call s:HL('mailSubject', 'darkmoss', '', 'bold')
call s:HL('mailHeader', 'lavendergray', '', '')
call s:HL('mailHeaderKey', 'lavendergray', '', '')
call s:HL('mailHeaderEmail', 'periwinkle', '', '')
call s:HL('mailURL', 'bleaktrunk', '', 'underline')
call s:HL('mailSignature', 'graybark', '', 'none')

call s:HL('mailQuoted1', 'graybark', '', 'none')
call s:HL('mailQuoted2', 'youngleaf', '', 'none')
call s:HL('mailQuoted3', 'periwinkle', '', 'none')
call s:HL('mailQuoted4', 'violetberry', '', 'none')
call s:HL('mailQuoted5', 'bleaktrunk', '', 'none')
call s:HL('mailQuoted6', 'shadow', '', 'none')

" }}}
" Mailcap {{{

call s:HL('mailcapTypeField', 'violetberry', '')
call s:HL('mailcapFlag', 'periwinkle', '')

" }}}
" Markdown {{{

call s:HL('markdownHeadingRule', 'lavendergray', '', 'bold')
call s:HL('markdownHeadingDelimiter', 'lavendergray', '', 'bold')
call s:HL('markdownOrderedListMarker', 'periwinkle', '', 'bold')
call s:HL('markdownListMarker', 'periwinkle', '', 'bold')
call s:HL('markdownItalic', 'glacierblue', '', '')
call s:HL('markdownBold', 'immatureberry', '', 'bold')
call s:HL('markdownH1', 'acidleaf', '', 'bold')
call s:HL('markdownH2', 'immatureberry', '', 'bold')
call s:HL('markdownH3', 'immatureberry', '', 'none')
call s:HL('markdownH4', 'immatureberry', '', 'none')
call s:HL('markdownH5', 'immatureberry', '', 'none')
call s:HL('markdownH6', 'immatureberry', '', 'none')
call s:HL('markdownIdDeclaration', 'bleaktrunk')
call s:HL('markdownAutomaticLink', 'bleaktrunk', '', 'bold')
call s:HL('markdownUrl', 'bleaktrunk', '', 'bold')
call s:HL('markdownUrlDelimiter', 'lavendergray', '', 'bold')
call s:HL('markdownLinkText', 'immatureberry', '', 'underline')
call s:HL('markdownLinkDelimiter', 'lavendergray', '', 'bold')
call s:HL('markdownLinkTextDelimiter', 'lavendergray', '', 'bold')
call s:HL('markdownCodeDelimiter', 'plum', '', 'bold')
call s:HL('markdownCode', 'plum', '', 'none')
call s:HL('markdownCodeBlock', 'plum', '', 'none')

" }}}
" MySQL {{{

call s:HL('mysqlSpecial', 'purplesky', '', 'bold')

" }}}
" Neovim {{{

call s:HL('EndOfBuffer', 'plum', '')
call s:HL('TermCursor', 'acidleaf', '')
call s:HL('TermCursorNC', 'plum', '')

" }}}
" Python {{{

hi def link pythonOperator Operator
call s:HL('pythonBuiltin',     'periwinkle')
call s:HL('pythonBuiltinObj',  'periwinkle')
call s:HL('pythonBuiltinFunc', 'periwinkle')
call s:HL('pythonEscape',      'periwinkle')
call s:HL('pythonException',   'purplesky', '', 'bold')
call s:HL('pythonExceptions',  'purplesky', '', 'none')
call s:HL('pythonPrecondit',   'purplesky', '', 'none')
call s:HL('pythonInclude',	   'deeplake', '', 'none')
call s:HL('pythonDecorator',   'deeplake', '', 'none')
call s:HL('pythonRun',         'graybark', '', 'bold')
call s:HL('pythonCoding',      'graybark', '', 'bold')
call s:HL('pythonString',	   'bleaktrunk', '', 'none')
call s:HL('pythonStatement',   'acidleaf', '', 'bold')
call s:HL('pythonFunction',		'deeplake', '', 'bold')

" }}}
" SLIMV {{{

" Rainbow parentheses
call s:HL('hlLevel0', 'graybark')
call s:HL('hlLevel1', 'darkmoss')
call s:HL('hlLevel2', 'graybark')
call s:HL('hlLevel3', 'purplesky')
call s:HL('hlLevel4', 'periwinkle')
call s:HL('hlLevel5', 'youngleaf')
call s:HL('hlLevel6', 'darkmoss')
call s:HL('hlLevel7', 'graybark')
call s:HL('hlLevel8', 'purplesky')
call s:HL('hlLevel9', 'periwinkle')

" }}}
" Vim {{{

call s:HL('VimCommentTitle', 'lavendergray', '', 'bold')

call s:HL('VimMapMod',    'mist', '', 'none')
call s:HL('VimMapModKey', 'mist', '', 'none')
call s:HL('VimNotation', 'mist', '', 'none')
call s:HL('VimBracket', 'mist', '', 'none')

endif
" }}}

unlet s:lac
