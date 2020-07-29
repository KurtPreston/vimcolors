" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

compiler! gcc
set fileformats=unix,dos grepprg=grep\ -nH keywordprg=:Man
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
set sessionoptions=blank,curdir,help,tabpages,winsize,slash,unix
set switchbuf=usetab,split undofile virtualedit=all
let &undodir = g:dotvim..'/undo'
if exists('+inccommand')
    set inccommand=split
endif
if exists('+scrollfocus')
    set scrollfocus
endif
if exists('+tagfunc')
    set tagfunc=misc#urltags
endif

" indents and folds
set autoindent smartindent formatoptions=tcrqj matchpairs+=<:>
set foldmethod=indent foldcolumn=1 foldlevel=1
set fillchars=vert:\ ,fold:\ ,diff:\ 

" tabs, wraps and case
set nojoinspaces nowrap ignorecase infercase smartcase
set tabstop& expandtab smarttab softtabstop=-1 shiftround shiftwidth=4
set list listchars=tab:<->,trail:_ textwidth=89

" Russian keyboard and spelling support
if v:lang =~? '^ru'
    set keymap=russian-jcukenwin spelllang=ru_yo,en
    set iminsert& imsearch&
endif
