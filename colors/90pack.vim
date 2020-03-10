" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" enable 'matchit' plugin
" Note: Neovim loads 'matchit' by default
if !has('nvim')
    packadd! matchit
endif

" plugin manager setup
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
" color schemes
call minpac#add('romainl/flattened')
call minpac#add('w0ng/vim-hybrid', {'frozen': 1})
call minpac#add('haishanh/night-owl.vim')
" other stuff
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('Yggdroot/indentLine')
call minpac#add('MartinDelille/vim-qmake')
call minpac#add('mhinz/vim-signify')
call minpac#add('majutsushi/tagbar')
call minpac#add('mbbill/undotree')
call minpac#add('lervag/vimtex')
" my local plugins under pack/bundle/start are not managed by minpac
" call minpac#add('matveyt/vim-drvo')
" call minpac#add('matveyt/vim-modest')
" call minpac#add('matveyt/vim-moveit')
" call minpac#add('matveyt/vim-ranger')
" call minpac#add('matveyt/vim-scratch')
" call minpac#add('matveyt/vim-stalin')

command! -bar PackClean  call minpac#clean()
command! -bar PackStatus call minpac#status()
command! -bar PackUpdate call minpac#update()

" plugin-specific mappings
nnoremap <leader>g :SignifyToggle<CR>
nnoremap <leader>s :split +Scratch<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

" plugin-specific variables
let g:indentLine_bufTypeExclude = ['quickfix', 'help', 'terminal', 'prompt', 'popup']
let g:indentLine_fileTypeExclude = ['drvo']
let g:signify_vcs_list = ['git']
let g:signify_disable_by_default = 1
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
