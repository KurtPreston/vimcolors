" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

compiler! gcc
set fileformats=unix,dos grepprg=grep\ -nH keywordprg=:help
set shell=bash shellcmdflag=-c shellredir=&>%s
set shellquote= shellxescape= shellxquote=\"
if has('win32')
    " prevent MSYS apps (Git etc.) from expanding wildcards on their own
    let $MSYS = 'noglob'
endif

" note: move cursor and press 'K' to get help on a particular option
set autoread belloff=all colorcolumn=+1 complete=.,w,b,t confirm
set cursorline guicursor+=a:blinkon0 lazyredraw scrolloff=3 splitright
set keymodel=startsel mousemodel=popup selection=exclusive
set laststatus=2 mouse=ar number showmatch showtabline=2 title
set nohlsearch noruler noshowcmd noshowmode noswapfile nowritebackup
set sessionoptions=curdir,folds,help,tabpages,winsize,slash,unix
set switchbuf=usetab,split tagfunc=misc#urltags undofile virtualedit=all
let &undodir = g:dotvim..'/undo'
" Neovim only
if exists('+inccommand')
    set inccommand=split
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

" standard plugins config
let g:asmsyntax = 'fasm'
let g:c_gnu = 1
let g:c_no_curly_error = 1
let g:is_bash = 1
let g:sh_fold_enabled = 7
let g:tex_conceal = ''
let g:tex_flavor = 'latex'
let g:vim_indent_cont = shiftwidth()
let g:vimsyn_folding = 'af'
let g:vimsyn_noerror = 1
" disable some of standard plugins
let g:loaded_getscriptPlugin = 0
let g:loaded_logiPat = 0
let g:loaded_netrwPlugin = 0
let g:loaded_vimballPlugin = 0
