set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=/home/javipolo/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" syntax and more for .pp files
Bundle 'netdata/vim-puppet'
" automagically tabulate in columns
Bundle 'godlygeek/tabular'
" integrate vim with git
Bundle 'tpope/vim-fugitive'
" manage brackets, tags, quotes and everything that surrounds text
Bundle 'tpope/vim-surround'
" enables to use . in lots of places
Bundle 'tpope/vim-repeat'
" easy navigation through quickfix list, among other things
Bundle 'tpope/vim-unimpaired'
" comment out stuff
Bundle 'tpope/vim-commentary'
" syntax highlighting and folding for haproxy.cfg
Bundle 'javipolo/vim-haproxy'
" varnish syntax and folding rules
Bundle 'javipolo/vim-varnish'
" CtrlP to jump faster through files
Bundle 'kien/ctrlp.vim'

" utilsnips, for inserting snippets of code
" disabled for compatibility in all servers
"Bundle 'SirVer/ultisnips'

" Neat statusline
" Bundle 'maciakl/vim-neatstatus'

" new text object q for matching any quotes
Bundle 'kana/vim-textobj-user'
Bundle 'beloglazov/vim-textobj-quotes'

" Cool syntax checker
Bundle 'scrooloose/syntastic'

" toggle location and quick lists
Bundle 'milkypostman/vim-togglelist'

" Insert eyaml from within vim
Bundle 'javipolo/vim-eyaml'

" Nice vertical line to match indentation
Bundle 'Yggdroot/indentLine'

" Configure status line
Plugin 'itchyny/lightline.vim'

" Terraform integration
Plugin 'hashivim/vim-terraform'

" Mustache
Plugin 'mustache/vim-mustache-handlebars'

" Jenkinsfile/Groovy
Plugin 'martinda/jenkinsfile-vim-syntax'

Plugin 'fatih/vim-go'
Plugin 'w0rp/ale'

call vundle#end()
