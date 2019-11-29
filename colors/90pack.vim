" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
" color schemes
call minpac#add('romainl/flattened')
call minpac#add('w0ng/vim-hybrid', {'frozen': 1})
call minpac#add('haishanh/night-owl.vim')
call minpac#add('jacoborus/tender.vim')
" other stuff
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('justinmk/vim-dirvish')
call minpac#add('Yggdroot/indentLine')
call minpac#add('mhinz/vim-signify')
call minpac#add('majutsushi/tagbar')
call minpac#add('mbbill/undotree')
call minpac#add('lervag/vimtex')
" my local plugins under pack/bundle/start are not managed by minpac
" call minpac#add('matveyt/vim-modest')
" call minpac#add('matveyt/vim-moveit')
" call minpac#add('matveyt/vim-scratch')
" call minpac#add('matveyt/vim-stalin')

" plugin specific variables
let g:c_gnu = 1
let g:c_no_curly_error = 1
let g:loaded_netrwPlugin = 0
let g:tex_conceal = ''
let g:tex_flavor = 'latex'
let g:dirvish_mode = ':sort i /^.*\//'
let g:indentLine_bufTypeExclude = ['quickfix', 'help', 'terminal', 'directory']
let g:signify_vcs_list = ['git']
let g:signify_disable_by_default = 1
let g:undotree_WindowLayout = 4
let g:vimtex_compiler_method = 'arara'
let g:vimtex_compiler_arara = {'options': []}
let g:vimtex_view_general_viewer = g:my_misc . '/SumatraPDF/SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
command! PackUpdate call minpac#update()

if !exists('#vimrc#FileType#dirvish')
    autocmd vimrc FileType dirvish nmap <buffer><BS> <Plug>(dirvish_up)
endif
nmap <kMinus> <Plug>(dirvish_up)
nnoremap <Leader>g :SignifyToggle<CR>
nnoremap <Leader>s :split +Scratch<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>u :UndotreeToggle<CR>
