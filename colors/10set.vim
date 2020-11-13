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

" note: move cursor and press 'K' to get help on particular option
set autoread backspace=indent,eol,start belloff=all complete=.,w,b,t
set confirm cursorline diffopt+=vertical fillchars=vert:\ ,fold:\ ,diff:\ 
set fileformats=unix,dos grepformat=%f:%l:%c:%m history=1000 keywordprg=:Man
set guioptions-=t guioptions+=! guicursor+=a:blinkon0
set incsearch lazyredraw nrformats=alpha,bin,hex shortmess=filnxoOtTI
set pyxversion=3 scrolloff=2 splitright ttimeout ttimeoutlen=100 wildmenu
set keymodel=startsel mousemodel=popup selection=exclusive selectmode=
set laststatus=2 mouse=ar number showmatch showtabline=2 title
set nofsync nohlsearch nolangremap noruler noshowcmd noshowmode nostartofline
set nobackup nowritebackup noswapfile
set sessionoptions=blank,curdir,help,slash,tabpages,unix,winsize
set switchbuf=useopen undofile viminfo+=! virtualedit=all wildoptions=
let &grepprg = executable('ag') ? 'ag --vimgrep' : 'internal'
let &undodir = better#rtp('undo')
if exists('+inccommand')
    set inccommand=split
endif
if exists('+scrollfocus')
    set scrollfocus
endif

" indents and folds
set autoindent smartindent formatoptions=tcrqj matchpairs+=<:>
set foldmethod=indent foldcolumn=1 foldlevel=3

" tabs, wraps and case
set nojoinspaces nowrap ignorecase infercase smartcase
set tabstop& expandtab smarttab softtabstop=-1 shiftround shiftwidth=4
set list listchars=tab:<->,trail:_ textwidth=89 colorcolumn=+1

" Russian keyboard and spelling support
if v:lang =~? '^ru'
    set keymap=russian-jcukenwin spelllang=ru_yo,en
    set iminsert& imsearch&
endif
