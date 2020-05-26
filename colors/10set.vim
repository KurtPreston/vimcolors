" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

compiler! gcc
set fileformats=unix,dos grepprg=grep\ -nH keywordprg=:help
set shell=bash shellcmdflag=-c shellredir=>%s\ 2>&1 noshelltemp
set shellquote= shellxescape= shellxquote=
if has('win32')
    " prevent MSYS apps (Git etc.) from expanding wildcards on their own
    let $MSYS = 'noglob'
    if !has('nvim')
        " needed for Vim on Windows
        set shellxquote=\"
    endif
endif

" note: move cursor and press 'K' to get help on a particular option
set autoread backspace=indent,eol,start belloff=all colorcolumn=+1
set complete=.,w,b,t confirm cursorline display=truncate
set guioptions-=t guioptions+=! guicursor+=a:blinkon0 history=1000
set incsearch lazyredraw nrformats-=octal scrolloff=3 splitright
set ttimeout ttimeoutlen=100 wildmenu
set keymodel=startsel mousemodel=popup selection=exclusive
set laststatus=2 mouse=ar number showmatch showtabline=2 title
set nohlsearch nolangremap noruler noshowcmd noshowmode noswapfile nowritebackup
set sessionoptions=curdir,folds,help,tabpages,winsize,slash,unix
set switchbuf=usetab,split undofile virtualedit=all
let &undodir = g:dotvim..'/undo'
if exists('+inccommand')
    set inccommand=split
endif
if exists('+tagfunc')
    set tagfunc=misc#urltags
endif

" indents and folds
set autoindent smartindent formatoptions=tcrqj matchpairs+=<:>
set foldmethod=indent foldcolumn=1 foldlevel=1
let &fillchars = 'vert: ,fold: ,diff: '

" tabs, wraps and case
set nojoinspaces nowrap ignorecase infercase smartcase
set expandtab tabstop=4 softtabstop=-1 shiftround shiftwidth=0
set list listchars=tab:<->,trail:_ textwidth=89

" Russian keyboard and spelling support
if v:lang =~? '^ru'
    set keymap=russian-jcukenwin spelllang=ru_yo,en
    set iminsert& imsearch&
endif

" enable 'matchit' plugin
" Note: Neovim loads 'matchit' by default
if !has('nvim')
    packadd! matchit
endif

" standard plugins config
let g:asmsyntax = 'fasm'
let g:c_comment_strings = 1
let g:c_gnu = 1
let g:c_no_curly_error = 1
let g:is_bash = 1
let g:sh_fold_enabled = 7
let g:tex_conceal = ''
let g:tex_flavor = 'latex'
let g:vim_indent_cont = shiftwidth()
let g:vimsyn_embed = 'lpP'
let g:vimsyn_folding = 'af'
let g:vimsyn_noerror = 1

" disable some plugins
let g:loaded_getscriptPlugin = 0
let g:loaded_gzip = 0
let g:loaded_logiPat = 0
let g:loaded_netrwPlugin = 0
let g:loaded_tarPlugin = 0
let g:loaded_tutor_mode_plugin = 0
let g:loaded_vimballPlugin = 0
let g:loaded_zipPlugin = 0
