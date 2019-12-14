" File: mono_red.vim
" Author: Michał Mikołajczyk
" Last Modified: December 13, 2019
"
" A simple monochrome colorscheme with red highlights.
"

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

set t_Co=256
let g:colors_name = "mono_sw_red_modified"

"hi Folded               -- no settings --
"hi StatusLineNC         -- no settings --
"hi CTagsMember          -- no settings --
"hi CTagsGlobalConstant  -- no settings --
"hi Ignore               -- no settings --
"hi StatusLine           -- no settings --
hi Normal                guifg=#8a8a8a  guibg=#1c1c1c  guisp=#1c1c1c  gui=NONE  ctermfg=245  ctermbg=234  cterm=NONE
"hi CTagsImport          -- no settings --
"hi CTagsGlobalVariable  -- no settings --
"hi SpellRare            -- no settings --
"hi EnumerationValue     -- no settings --
"hi TabLineSel           -- no settings --
"hi Union                -- no settings --
"hi TabLineFill          -- no settings --
"hi Question             -- no settings --
"hi WarningMsg           -- no settings --
"hi VisualNOS            -- no settings --
"hi ModeMsg              -- no settings --
"hi FoldColumn           -- no settings --
"hi EnumerationName      -- no settings --
"hi MoreMsg              -- no settings --
"hi SpellCap             -- no settings --
"hi SpellLocal           -- no settings --
"hi DefinedName          -- no settings --
"hi LocalVariable        -- no settings --
"hi SpellBad             -- no settings --
"hi CTagsClass           -- no settings --
"hi TabLine              -- no settings --
"hi clear                -- no settings --
hi IncSearch             guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi WildMenu              guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi SignColumn            guifg=#121212  guibg=#1c1c1c  guisp=#1c1c1c  gui=NONE            ctermfg=233   ctermbg=234   cterm=NONE
hi SpecialComment        guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi Typedef               guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Title                 guifg=#d70000  guibg=NONE     guisp=NONE     gui=bold            ctermfg=160   ctermbg=NONE  cterm=bold
hi PreCondit             guifg=#8a8a8a  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=245   ctermbg=NONE  cterm=NONE
hi Include               guifg=#dadada  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=253   ctermbg=NONE  cterm=NONE
hi Float                 guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi NonText               guifg=#626262  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=241   ctermbg=NONE  cterm=NONE
hi DiffText              guifg=#949494  guibg=#303030  guisp=#303030  gui=NONE            ctermfg=246   ctermbg=236   cterm=NONE
hi ErrorMsg              guifg=#c00000  guibg=NONE     guisp=NONE     gui=bold,underline  ctermfg=1     ctermbg=NONE  cterm=bold,underline
hi Debug                 guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi PMenuSbar             guifg=#bcbcbc  guibg=#585858  guisp=#585858  gui=NONE            ctermfg=250   ctermbg=240   cterm=NONE
hi Identifier            guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi SpecialChar           guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi Conditional           guifg=#dadada  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=253   ctermbg=NONE  cterm=NONE
hi StorageClass          guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Todo                  guifg=#ffaf00  guibg=NONE     guisp=NONE     gui=underline       ctermfg=214   ctermbg=NONE  cterm=underline
hi Special               guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi LineNr                guifg=#585858  guibg=#1c1c1c  guisp=#1c1c1c  gui=NONE            ctermfg=240   ctermbg=234   cterm=NONE
hi Label                 guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi PMenuSel              guifg=#d70000  guibg=#262626  guisp=#262626  gui=NONE            ctermfg=160   ctermbg=235   cterm=NONE
hi Search                guifg=#ffaf00  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=214   ctermbg=NONE  cterm=NONE
hi Delimiter             guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi Statement             guifg=#eeeeee  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=255   ctermbg=NONE  cterm=NONE
hi Comment               guifg=#444444  guibg=NONE     guisp=NONE     gui=bold,italic     ctermfg=238   ctermbg=NONE  cterm=bold
hi Character             guifg=#bcbcbc  guibg=#1c1c1c  guisp=#1c1c1c  gui=NONE            ctermfg=250   ctermbg=234   cterm=NONE
hi Number                guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi Boolean               guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Operator              guifg=#dadada  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=253   ctermbg=NONE  cterm=NONE
hi CursorLine            guifg=#bcbcbc  guibg=#121212  guisp=#121212  gui=NONE            ctermfg=250   ctermbg=233   cterm=NONE
hi DiffDelete            guifg=#af0000  guibg=#303030  guisp=#303030  gui=NONE            ctermfg=124   ctermbg=236   cterm=NONE
hi CursorColumn          guifg=#bcbcbc  guibg=#121212  guisp=#121212  gui=NONE            ctermfg=250   ctermbg=233   cterm=NONE
hi Define                guifg=#8a8a8a  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=245   ctermbg=NONE  cterm=NONE
hi Function              guifg=#eeeeee  guibg=NONE     guisp=NONE     gui=bold            ctermfg=255   ctermbg=NONE  cterm=bold
hi PreProc               guifg=#8a8a8a  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=245   ctermbg=NONE  cterm=NONE
hi Visual                guifg=#121212  guibg=#767676  guisp=#767676  gui=NONE            ctermfg=233   ctermbg=243   cterm=NONE
hi VertSplit             guifg=#121212  guibg=#1c1c1c  guisp=#1c1c1c  gui=NONE            ctermfg=233   ctermbg=234   cterm=NONE
hi Exception             guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Keyword               guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Type                  guifg=#eeeeee  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=255   ctermbg=NONE  cterm=NONE
hi DiffChange            guifg=#c6c6c6  guibg=#4e4e4e  guisp=#4e4e4e  gui=NONE            ctermfg=251   ctermbg=239   cterm=NONE
hi Cursor                guifg=#bcbcbc  guibg=#121212  guisp=#121212  gui=NONE            ctermfg=250   ctermbg=233   cterm=NONE
hi Error                 guifg=#c00000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=1     ctermbg=NONE  cterm=NONE
hi PMenu                 guifg=#bcbcbc  guibg=#121212  guisp=#121212  gui=NONE            ctermfg=250   ctermbg=233   cterm=NONE
hi SpecialKey            guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi Constant              guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Tag                   guifg=#d70000  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=160   ctermbg=NONE  cterm=NONE
hi String                guifg=#585858  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=240   ctermbg=NONE  cterm=NONE
hi PMenuThumb            guifg=#bcbcbc  guibg=#a8a8a8  guisp=#a8a8a8  gui=NONE            ctermfg=250   ctermbg=248   cterm=NONE
hi MatchParen            guifg=#bcbcbc  guibg=#8a8a8a  guisp=#8a8a8a  gui=NONE            ctermfg=250   ctermbg=245   cterm=NONE
hi Repeat                guifg=#dadada  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=253   ctermbg=NONE  cterm=NONE
hi Directory             guifg=#d70000  guibg=NONE     guisp=NONE     gui=bold            ctermfg=160   ctermbg=NONE  cterm=bold
hi Structure             guifg=#bcbcbc  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=250   ctermbg=NONE  cterm=NONE
hi Macro                 guifg=#8a8a8a  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=245   ctermbg=NONE  cterm=NONE
hi Underlined            guifg=#d70000  guibg=NONE     guisp=NONE     gui=underline       ctermfg=160   ctermbg=NONE  cterm=underline
hi DiffAdd               guifg=#008700  guibg=#303030  guisp=#303030  gui=NONE            ctermfg=28    ctermbg=236   cterm=NONE
hi pythonescape          guifg=#d70000  guibg=NONE     guisp=NONE     gui=bold            ctermfg=160   ctermbg=NONE  cterm=bold
hi htmltagname           guifg=#eeeeee  guibg=NONE     guisp=NONE     gui=NONE            ctermfg=255   ctermbg=NONE  cterm=NONE
hi colorcolumn           guifg=NONE  guibg=#303030     guisp=#303030  gui=NONE            ctermfg=NONE  ctermbg=236   cterm=NONE
hi cursorlinenr          guifg=#bcbcbc  guibg=#121212  guisp=#121212  gui=NONE            ctermfg=250   ctermbg=233   cterm=NONE
