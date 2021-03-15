" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

 " :[mods]Nomove {cmd}
 " save/restore cursor "quasi-modifier"
command! -nargs=1 -complete=command Nomove
    \   try
    \ |     let s:svpos = winsaveview()
    \ |     execute <q-mods> <q-args>
    \ | finally
    \ |     call winrestview(s:svpos)
    \ |     unlet s:svpos
    \ | endtry

" :[mods]Sorted[!] {cmd}
" sorted "quasi-modifier"
command! -bang -nargs=1 -complete=command Sorted
    \ echo join(sort(split(execute(<q-mods>..' '..<q-args>), "\n"),
    \     {s1, s2 -> <bang>(s1 ># s2) - <bang>(s1 <# s2)}), "\n")

" :Bwipeout[!]
" wipe all deleted/unloaded buffers
command! -bar -bang Bwipeout call misc#bwipeout(<bang>0)

" :[range]Change[!] [reg]
" non-interactive :change
command! -range -bar -bang -nargs=? Change
    \ call misc#change(<line1>, <line2>, <q-args>, <bang>&autoindent)

" :[range]Comment[!]
" toggle comments
command! -range -bar -bang Comment
    \ call misc#comment(<line1>, <line2>, <bang>&preserveindent)

" :[range]Copy {address1}...
" :copy to multiple addresses
command! -range -bar -nargs=+ Copy call misc#copy(<line1>, <line2>, <f-args>)

" :Diff[!]
" show diff with original file or git HEAD
command! -bar -bang Diff call misc#diff(<bang>&modified)

" :[range]Execute [winnr]
" execute VimScript or any "shebang"-script
command! -range=% -bar -nargs=? Execute
    \ call shebang#execute('%', <line1>, <line2>, <args>)

" :[range]FixEncoding [encoding]
" fix buffer encoding and line-endings
command! -range=% -bar -nargs=? FixEncoding
    \   let s:enc = !empty(<q-args>) ? <q-args> : executable('uchardet') ?
    \       trim(system('uchardet', getline(<line1>, <line2>))) : 'char'
    \ | keepj keepp Nomove <line1>,<line2>s/\(.\{-}\)\r\?$/\=iconv(submatch(1),
    \       s:enc, better#or(&fenc, &enc))/
    \ | unlet s:enc

" :[count]Font [typeface]...
" set &guifont
function s:fontcomplete(A, L, P) abort
    return join(g:fontlist, "\n")
endfunction
command! -count -nargs=? -complete=custom,s:fontcomplete Font
    \   if !<count> && empty(<q-args>)
    \ |     echo &guifont
    \ | else
    \ |     call misc#guifont(<q-args>, <count>)
    \ | endif

" :Git [args]
" invoke the stupid content tracker
function s:gitcomplete(A, L, P) abort
    return join(['add', 'branch', 'checkout', 'clone', 'commit', 'diff', 'init', 'log',
        \ 'pull', 'push', 'remote', 'status'], "\n")
endfunction
command! -nargs=* -complete=custom,s:gitcomplete Git !git -C %:p:h:S <args>

" :GccInclude[!] [/path/to/gcc]
" set local &path to GCC include dirs
command! -bar -bang -nargs=? -complete=file GccInclude let &l:path = join(['.'] +
    \ misc#gcc_include(better#or(<q-args>, 'gcc'), <bang>0) + [','], ',')

" :Highlight[!]
" show :highlight under cursor
command! -bar -bang Highlight
    \ execute <bang>0..'verbose highlight'
    \     better#or(synIDattr(synID(line('.'), col('.'), 0), 'name'), 'Normal')

" :[count]MRU [sesdir]
" show MRU and Session files
command! -count=10 -bar -nargs=? -complete=dir MRU
    \ call mru#show(better#or(<q-args>, better#stdpath('data', 'sessions')), <count>)

" :[range]Trim[!]
" trim trailing/leading space
command! -range=% -bar -bang Trim
    \   keepj keepp Nomove <line1>,<line2>s/\s\+$//e
    \ | if <bang>0
    \ |     <line1>,<line2>left
    \ | endif

" :Zoom
" toggle current window maximized
command! -bar Zoom
    \   if winnr('$') > 1 && &winwidth < 999
    \ |     let t:wrcmd = winrestcmd()
    \ |     set winwidth=999 winheight=999
    \ | else
    \ |     set winwidth& winheight&
    \ |     execute has_key(t:, 'wrcmd') ? remove(t:, 'wrcmd') : 'wincmd='
    \ | endif
