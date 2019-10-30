" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

compiler! gcc
set grepprg=grep\ -nH keywordprg=:help shell=bash
set shellcmdflag=-c shellredir=&>%s shellslash
set shellquote= shellxescape= shellxquote=\"
if has('win32')
    " prevent MSYS apps (e.g. git) from expanding wildcards on their own
    let $MSYS = 'noglob'
endif

" note: move cursor and press 'K' to get help on a particular option
set autoread belloff=all colorcolumn=+1 complete=.,w,b,t confirm
set cursorline guicursor+=a:blinkon0 lazyredraw scrolloff=3 splitright
set keymodel=startsel mousemodel=popup selection=exclusive
set laststatus=2 number relativenumber showmatch showtabline=2 title
set nohlsearch noruler noshowcmd noshowmode noswapfile nowritebackup
set sessionoptions=curdir,folds,help,tabpages,winsize,slash,unix
set switchbuf=usetab,split undofile virtualedit=all
let &path = '.,,' . g:my_projects . '/**'
let &undodir = g:my_dotvim . '/undo'

" indents and folds
set autoindent smartindent formatoptions=tcrqj matchpairs+=<:>
set foldmethod=indent foldcolumn=1 foldlevelstart=1
let &fillchars = 'vert: ,fold: ,diff: '

" tabs, wraps and case
set nojoinspaces nowrap ignorecase infercase smartcase
set expandtab tabstop=4 softtabstop=-1 shiftround shiftwidth=0
set list listchars=tab:<->,trail:_ textwidth=89

" Russian keyboard and spelling support
set keymap=russian-jcukenwin iminsert& imsearch&
set fileformats=unix,dos spelllang=ru_yo,en
