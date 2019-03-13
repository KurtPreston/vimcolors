" === Potato Colors ====================================================
" Colors fit for a potato.
"
" And by "a potato", I mean me.  This is a colorscheme tuned (to the
" best of my ability) to what I personally think looks pretty good.
"
" potato.vim currently only works in 256-color terminals and in the gui.
" In terminals without 256-color support, potato falls back to murphy, a
" decent looking colorscheme that ships with vim.

if !has('gui_running') && &t_Co < 256
    colorscheme murphy
    finish
endif

set background=dark
highlight clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'potato'

" Defines some useful mappings for working on potato.
let s:DEBUG_MODE = 0

" --- Utility Functions ------------------------------------------------
" {{{
" These functions make it a little easier to highlight stuff.
" Originally, I just used :hi directly, but color reuse soon became very
" confusing, and it was annoying to have to reset the default colors.
" Making the :hi command into a function allows colors to be set as
" variables and it also allows the default style to be completely
" overriden (by setting everything to NONE by default).

function! s:attr_list(list)
    if empty(a:list)
        return 'NONE'
    else
        return join(a:list, ",")
    endif
endfunc

function! s:HL(group, args)
    " fg and bg keys set both gui and cterm
    let [guifg, ctermfg] = get(a:args, 'fg', ['NONE', 'NONE'])
    let [guibg, ctermbg] = get(a:args, 'bg', ['NONE', 'NONE'])
    " fg and bg can be overridden by gui/cterm specific keys
    let guifg = get(a:args, 'guifg', guifg)
    let ctermfg = get(a:args, 'ctermfg', ctermfg)
    let guibg = get(a:args, 'guibg', guibg)
    let ctermbg = get(a:args, 'ctermbg', ctermbg)
    let guisp = get(a:args, 'guisp', 'NONE')

    " attr-lists for all interfaces can be set with all
    let all = get(a:args, 'all', [])
    " additional interface specific attributes can also be added
    let gui = s:attr_list(all + get(a:args, 'gui', []))
    let cterm = s:attr_list(all + get(a:args, 'cterm', []))
    let term = s:attr_list(all + get(a:args, 'term', []))

    exe 'highlight' a:group 'guifg='.guifg 'guibg='.guibg 'guisp='.guisp
                          \ 'ctermfg='.ctermfg 'ctermbg='.ctermbg
                          \ 'gui='.gui 'cterm='.cterm 'term='.term
endfunc

" The special fg and bg color names work in both gui and cterm, so it's
" annoying to need to repeat them.
let s:FG = ['fg', 'fg']
let s:BG = ['bg', 'bg']
" }}}

" --- Colors -----------------------------------------------------------
" {{{
" Note: this is not every color used by potato.  The colors defined here
" generally either are reused or have some relationship to other named
" colors or otherwise just seem important enough to warrant giving a
" name to.  Also, the variable names don't necessarily reflect how the
" colors get used and don't always mean much of anything to begin with
" (coming up with names for these colors is hard!)

let s:mainbg = ['#303025', 234]
let s:mainfg = ['#DFD8C0', 251]

let s:cursor = ['#F6A329', 172]
let s:select = ['#464636', 237]
let s:cursorcolumn = ['#6F5838', 95]

let s:edge = ['#37372B', 235]
let s:context = ['#898969', 241]
let s:nontext = ['#5C5C47', 239]

let s:search = ['#4C3736', 53]
let s:attn = ['#FFE737', 220]
let s:bad = ['#FF2828', 124]

let s:activewin = ['#BFB585', 144]
let s:activeterm = ['#6F9966', 65]
let s:inactivewin = ['#1E221A', 232]

let s:othertab = ['#A4986A', 101]
let s:sep = ['#A4885A', 137]
" }}}

" --- Interface --------------------------------------------------------
" {{{
call s:HL('Normal', {'bg': s:mainbg, 'fg': s:mainfg})
call s:HL('Visual', {'bg': s:select})
highlight! link MatchParen Visual
highlight! link QuickFixLine Visual
call s:HL('VisualNOS', {'bg': ['#3A3A3A', 236]})

call s:HL('Conceal', {'bg': s:select, 'fg': ['#FFFFFF', 15], 'all': ['bold']})
call s:HL('SpecialKey', {'fg': s:select})
call s:HL('NonText', {'fg': s:nontext})

call s:HL('ColorColumn', {'bg': s:edge})
highlight! link SignColumn ColorColumn
call s:HL('LineNr', {'bg': s:edge, 'fg': s:context})

call s:HL('Cursor', {'bg': s:cursor, 'fg': s:BG})
call s:HL('CursorColumn', {'bg': s:cursorcolumn})
highlight! link CursorLine CursorColumn
call s:HL('CursorLineNr', {'fg': s:attn, 'bg': s:edge, 'all': ['bold']})

" The gui uses bold because the colors I chose are somewhat dull and
" hard to see otherwise, but the cterm equivalents are already quite
" vibrant, so I didn't bold them.
call s:HL('Search', {'bg': s:search, 'fg': s:attn, 'gui': ['bold']})
call s:HL('IncSearch', {'bg': s:attn, 'fg': s:search, 'gui': ['bold']})
highlight! link WildMenu IncSearch

call s:HL('DiffAdd', {'bg': ['#35531B', 22]})
call s:HL('DiffChange', {'bg': ['#4C4800', 58]})
call s:HL('DiffDelete', {'bg': ['#6C3434', 88], 'fg': ['#FF4545', 131], 'all': ['bold']})
call s:HL('DiffText', {'bg': ['#314F66', 23], 'all': ['italic', 'bold']})

call s:HL('SpellBad', {'ctermbg': 52, 'guisp': s:bad[0], 'gui': ['undercurl']})
call s:HL('SpellCap', {'ctermbg': 17, 'guisp': '#0048DF', 'gui': ['undercurl']})
call s:HL('SpellLocal', {'ctermbg': 89, 'guisp': '#BF2A77', 'gui': ['undercurl']})
call s:HL('SpellRare', {'ctermbg': 56, 'guisp': '#772ABF', 'gui': ['undercurl']})

call s:HL('StatusLine', {'bg': s:activewin, 'fg': s:inactivewin, 'all': ['bold']})
call s:HL('StatusLineNC', {'bg': s:inactivewin, 'fg': s:activewin})
call s:HL('StatusLineTerm', {'bg': s:activeterm, 'fg': s:inactivewin, 'all': ['bold']})
call s:HL('StatusLineTermNC', {'bg': s:inactivewin, 'fg': s:activeterm})
call s:HL('VertSplit', {'bg': s:sep, 'fg': s:sep})

call s:HL('Title', {'fg': ['#FFCF60', 221], 'all': ['bold']})
call s:HL('Question', {'fg': ['#A0FF40', 155], 'all': ['bold']})
highlight! link MoreMsg Question
call s:HL('ModeMsg', {'fg': s:cursor, 'all': ['bold']})
call s:HL('WarningMsg', {'fg': s:attn, 'bg': ['#645E2A', 94], 'all': ['bold']})
call s:HL('ErrorMsg', {'fg': ['#FFFFFF', 15], 'bg': s:bad})
highlight! link Error ErrorMsg

call s:HL('Folded', {'bg': s:inactivewin, 'fg': s:nontext, 'all': ['bold', 'italic']})
highlight! link FoldColumn Folded

call s:HL('Pmenu', {'bg': s:inactivewin, 'fg': s:context})
call s:HL('PmenuSel', {'bg': s:select, 'fg': s:activewin})
call s:HL('PmenuSbar', {'bg': s:inactivewin})
call s:HL('PmenuThumb', {'bg': s:sep})

call s:HL('TabLine', {'bg': s:othertab, 'fg': s:BG})
call s:HL('TabLineFill', {'bg': s:activewin})
call s:HL('TabLineSel', {'fg': s:othertab, 'all': ['bold']})
" }}}

" --- Syntax -----------------------------------------------------------
" {{{
" TODO: Should Type be a bit more vibrant?
call s:HL('Type', {'fg': ['#80E8C8', 80]})
call s:HL('Identifier', {'fg': ['#5CA8FF', 69]})
highlight! link Directory Identifier

call s:HL('PreProc', {'fg': ['#E44269', 161], 'all': ['bold']})
call s:HL('Statement', {'fg': ['#CC78B2', 133], 'all': ['bold']})
highlight! link Define Statement

call s:HL('Constant', {'fg': ['#FB9C6E', 173]})
call s:HL('Special', {'fg': ['#FF7040', 202]})
call s:HL('String', {'fg': ['#AFCE57', 107]})
highlight! link Quote String

" TODO: can't decide if I prefer italics or underline here
call s:HL('Todo', {'fg': s:attn, 'all': ['bold', 'italic']})
call s:HL('Comment', {'fg': ['#8A835C', 243]})

call s:HL('Underlined', {'fg': ['#A890FF', 141], 'all': ['underline']})
call s:HL('Delimiter', {'fg': ['#86C393', 72]})

" Some of the builtin syntax definitions link to some rather strange
" highlight groups by default, which can look bad in potato.
" Shell Script:
highlight link shQuote String
highlight link shOption Type
highlight link shCommandSub Normal

" JavaScript:
highlight link javaScriptBraces Delimiter
highlight link javaScriptValue Constant

" HTML:
highlight link htmlTagName Identifier
" }}}

" --- Debug ------------------------------------------------------------
if s:DEBUG_MODE " {{{
    function! <SID>show_syntax()
        for id in synstack(line('.'), col('.'))
            let transID = synIDtrans(id)
            if id != transID
                echo synIDattr(id, 'name') '=>' synIDattr(transID, 'name')
            else
                echo synIDattr(id, 'name')
            endif
        endfor
    endfunc

    sign define potato_sign text=>> texthl=Search
    function! <SID>toggle_sign()
        let ln = line('.')
        let buf = bufname('')
        let gname = 'potato_sign_group'
        if empty(sign_getplaced(buf, {'group': gname, 'lnum': ln})[0]['signs'])
            call sign_place(ln, gname, 'potato_sign', buf, {'lnum': ln})
        else
            call sign_unplace(gname, {'buffer': buf, 'id': ln})
        endif
    endfunc

    nmap <Leader>s :call <SID>show_syntax()<CR>
    nmap <Leader>r :colo potato<CR>
    nmap <Leader>n :call <SID>toggle_sign()<CR>

    " Requires the hexHighlight plugin:
    nmap <Leader>h <Plug>ToggleHexHighlight
endif " }}}

" vim: foldmethod=marker
