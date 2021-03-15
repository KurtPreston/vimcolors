" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

if has('nvim')
    packadd! neoclip
else
    packadd! matchit
    source $VIMRUNTIME/ftplugin/man.vim
endif

" disable standard plugins
let [g:loaded_2html_plugin, g:loaded_getscriptPlugin, g:loaded_gzip, g:loaded_logiPat,
    \ g:loaded_netrwPlugin, g:loaded_spellfile_plugin, g:loaded_tarPlugin,
    \ g:loaded_vimballPlugin, g:loaded_zipPlugin; _] = repeat([0], 10)
if has('nvim')
    let [g:loaded_node_provider, g:loaded_perl_provider, g:loaded_python_provider,
        \ g:loaded_python3_provider, g:loaded_ruby_provider, g:loaded_remote_plugins,
        \ g:loaded_shada_plugin, g:loaded_tutor_mode_plugin; _] = repeat([0], 10)
else
    let g:loaded_rrhelper = 0
endif

" package manager setup
let s:pack = {'site': 'https://github.com',
    \ 'name': 'minpac', 'author': 'k-takata',
    "\ 'name': 'vim-packager', 'author': 'kristijanhusak',
    \ }

command! -bar PackClean  call s:pack_setup() | call s:pack_call('clean')
command! -bar PackStatus call s:pack_setup() | call s:pack_call('status')
command! -bar PackUpdate call s:pack_setup() | call s:pack_call('update')

function s:pack_byname() abort
    " foo-bar-baz => baz
    return strpart(s:pack.name, strridx(s:pack.name, '-') + 1)
endfunction

function s:pack_call(func, ...) abort
    return call(printf('%s#%s', s:pack_byname(), a:func), a:000)
endfunction
let s:pack_add = funcref('s:pack_call', ['add'])

function s:pack_setup() abort
    if exists('g:loaded_' . tr(s:pack.name, '-', '_'))
        return
    endif

    " git-clone package manager
    let l:remote = printf('%s/%s/%s', s:pack.site, s:pack.author, s:pack.name)
    let l:local = better#stdpath('config', 'pack/%s/opt/%s', s:pack_byname(),
        \ s:pack.name)
    if !isdirectory(l:local)
        echomsg 'Cloning into' l:local
        silent call system(printf('git clone --depth=1 %s.git %s',
            \ l:remote, shellescape(l:local)))
    endif

    " initialize package manager
    execute 'packadd' s:pack.name
    call s:pack_call('init', {'depth': 1, 'progress_open': 'vertical'})
    call s:pack_add(l:remote, {'type': 'opt'})

    " 3rd party plugins
    call s:pack_add('wellle/targets.vim')
    call s:pack_add('mbbill/undotree')

    " my own plugins under ~/.vim/pack/bundle are managed manually
    "call s:pack_add('matveyt/neoclip', {'type': 'opt'})
    "call s:pack_add('matveyt/vim-drvo')
    "call s:pack_add('matveyt/vim-filters')
    "call s:pack_add('matveyt/vim-guidedspace')
    "call s:pack_add('matveyt/vim-jmake')
    "call s:pack_add('matveyt/vim-qmake', {'type': 'opt'})
    "call s:pack_add('matveyt/vim-modest')
    "call s:pack_add('matveyt/vim-moveit', {'type': 'opt'})
    "call s:pack_add('matveyt/vim-opera')
    "call s:pack_add('matveyt/vim-ranger', {'type': 'opt'})
    "call s:pack_add('matveyt/vim-scratch')
    "call s:pack_add('matveyt/vim-stalin')
endfunction
