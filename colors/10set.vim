" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

set encoding=utf-8
compiler! gcc

set shell=bash shellcmdflag=-c shellredir=>%s\ 2>&1 shellslash noshelltemp
set shellquote= shellxescape= shellxquote=
if has('win32')
    let &shellxquote = has('nvim') ? '' : '"'
    let $CYGWIN = 'noglob'
    let $MSYS = 'noglob'
endif

" move cursor and press 'K' to get help on option
set autoread backspace=indent,eol,start belloff=all complete=.,w,b,t confirm
set diffopt+=vertical display+=lastline fillchars=vert:\ ,fold:\ ,diff:\ 
set fileformats=unix,dos grepformat=%f:%l:%c:%m history=1000 keywordprg=:Man
set guioptions-=t guioptions+=! guicursor+=a:blinkon0 incsearch nohlsearch
set lazyredraw nrformats=alpha,bin,hex shortmess=filnxoOtTI pyxversion=3
set scrolloff=2 sidescroll=1 splitright ttimeout ttimeoutlen=50 wildmenu
set keymodel=startsel mousemodel=extend selection=exclusive selectmode=
set cursorline laststatus=2 mouse=ar number showmatch showtabline=2 title
set switchbuf=useopen undofile virtualedit=all whichwrap+=<,>,[,]
set nobackup nowritebackup nofsync nolangremap noruler noshowcmd noshowmode
set nostartofline noswapfile viminfo=!,'100,<1000,s100,h
set sessionoptions=blank,curdir,help,slash,tabpages,unix,winsize
set viewoptions=folds,cursor,curdir,slash,unix wildoptions=
let &grepprg = executable('ag') ? 'ag --vimgrep' : 'internal'
let &undodir = better#rtp('undo')
if exists('+scrollfocus')
    set scrollfocus
endif

" indents and folds
set autoindent nosmartindent formatoptions=tcroqj matchpairs+=<:>
set foldmethod=indent foldcolumn=1 foldlevel=3

" tabs, wraps and case
set nojoinspaces nowrap ignorecase infercase smartcase
set tabstop& expandtab nosmarttab softtabstop=-1 shiftround shiftwidth=4
set list listchars=tab:<->,trail:_ textwidth=89 colorcolumn=+1

" Russian keyboard and spelling support
if v:lang =~? '^ru'
    set keymap=russian-jcukenwin spelllang=ru_yo,en
    set iminsert& imsearch&
endif

" GVim menu bar
if has('gui_running')
    let g:do_no_lazyload_menus = 1
    let g:no_buffers_menu = 1
endif

" ftplugin config
let g:asmsyntax = 'fasm'
let g:c_gnu = 1
let g:c_comment_strings = 1
let g:c_space_errors = 1
let g:c_no_curly_error = 1
let g:c_syntax_for_h = 1
let g:is_bash = 1
let g:no_pdf_maps = 1
let g:sh_fold_enabled = 7
let g:tex_conceal = ''
let g:tex_flavor = 'latex'
let g:vim_indent_cont = shiftwidth()
let g:vim_json_conceal = 0
let g:vimsyn_embed = 'l'
let g:vimsyn_folding = 'afl'
let g:vimsyn_noerror = 1

" misc. plugin config
let g:targets_nl = 'nN'
let g:undotree_WindowLayout = 4
let g:vimtex_compiler_method = 'arara'
let g:vimtex_compiler_arara = {'options': []}
if executable('zathura')
    let g:vimtex_view_method = 'zathura'
else
    let g:vimtex_view_method = 'general'
    let g:vimtex_view_general_viewer = (has('win32') ? 'E:' : '/e') .
        \ '/Misc/SumatraPDF/SumatraPDF'
    let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
endif
