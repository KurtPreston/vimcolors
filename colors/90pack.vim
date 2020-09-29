" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if has('nvim')
    " enable 'neoclip' to access clipboard
    packadd! neoclip
else
    " enable 'matchit'
    packadd! matchit
    " provide :Man command
    source $VIMRUNTIME/ftplugin/man.vim
    " customize menu bar
    unlet g:did_install_syntax_menu
    let g:do_no_lazyload_menus = 1
    let g:no_buffers_menu = 1
endif

" disable some standard plugins
let g:loaded_getscriptPlugin = 0
let g:loaded_gzip = 0
let g:loaded_logiPat = 0
let g:loaded_netrwPlugin = 0
let g:loaded_python_provider = 0
let g:loaded_shada_plugin = 0
let g:loaded_tarPlugin = 0
let g:loaded_vimballPlugin = 0
let g:loaded_zipPlugin = 0

" standard plugins config
let g:asmsyntax = 'fasm'
let g:c_gnu = 1
let g:c_comment_strings = 1
let g:c_space_errors = 1
let g:c_no_curly_error = 1
let g:c_syntax_for_h = 1
let g:is_bash = 1
let g:sh_fold_enabled = 7
let g:tex_conceal = ''
let g:tex_flavor = 'latex'
let g:vim_indent_cont = shiftwidth()
let g:vim_json_conceal = 0
let g:vimsyn_embed = 'l'
let g:vimsyn_folding = 'afl'
let g:vimsyn_noerror = 1

" plugin-specific variables
let g:indentLine_bufTypeExclude = ['quickfix', 'help', 'terminal', 'prompt', 'popup']
let g:indentLine_fileTypeExclude = ['drvo', 'man', 'xxd']
let g:indentLine_autoResetWidth = 0
let g:indentLine_faster = 1
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

" plugin-specific mappings
nnoremap <expr><leader>s printf(':%sScratch<CR>',
    \ better#is_blank_buffer() ? '' : 'split +')
nnoremap <leader>u :UndotreeToggle<CR>

" plugin manager setup
command! -bar PackClean  call s:setup_minpac() | call minpac#clean()
command! -bar PackStatus call s:setup_minpac() | call minpac#status()
command! -bar PackUpdate call s:setup_minpac() | call minpac#update('',
    \ {'do': {h, u, i -> i > 0 && execute('packloadall!')}})

function s:setup_minpac() abort
    if exists('g:loaded_minpac')
        return
    endif

    " git-clone minpac itself
    let l:remote = 'https://github.com/k-takata/minpac.git'
    let l:local = g:dotvim..'/pack/minpac/opt/minpac'
    if !isdirectory(l:local)
        echomsg 'Cloning into' l:local
        silent call system('git clone --depth=1 '..l:remote..' '..shellescape(l:local))
    endif

    " initialize minpac
    packadd minpac
    call minpac#init({'progress_open': 'vertical'})
    call minpac#add(l:remote, {'type': 'opt'})

    " 3rd party plugins
    call minpac#add('romainl/flattened')
    call minpac#add('tpope/vim-repeat')
    call minpac#add('tpope/vim-surround')
    call minpac#add('tpope/vim-unimpaired')
    call minpac#add('Yggdroot/indentLine')
    call minpac#add('wellle/targets.vim')
    call minpac#add('mbbill/undotree')
    call minpac#add('lervag/vimtex')

    " my own plugins under ~/.vim/pack/bundle are not managed by minpac
    " call minpac#add('matveyt/neoclip', {'type': 'opt'})
    " call minpac#add('matveyt/vim-drvo')
    " call minpac#add('matveyt/vim-filters')
    " call minpac#add('matveyt/vim-jmake')
    " call minpac#add('matveyt/vim-modest')
    " call minpac#add('matveyt/vim-moveit', {'type': 'opt'})
    " call minpac#add('matveyt/vim-opera')
    " call minpac#add('matveyt/vim-ranger', {'type': 'opt'})
    " call minpac#add('matveyt/vim-scratch')
    " call minpac#add('matveyt/vim-stalin')
endfunction
