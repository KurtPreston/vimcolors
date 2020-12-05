" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" unimpaired#emulate()
" emulating vim-unimpaired plugin
function! unimpaired#emulate() abort
    " unimpaired-next (except <C-T>)
    call unimpaired#nextprev('a', '')
    call unimpaired#nextprev('b', 'b')
    call unimpaired#nextprev('l', 'l')
    call unimpaired#nextprev('q', 'c')
    call unimpaired#nextprev('t', 't')

    " [f ]f [n ]n
    nnoremap <silent>[f :<C-U>edit <C-R>=fnameescape(<SID>nextfile(-v:count1))<CR><CR>
    nnoremap <silent>]f :<C-U>edit <C-R>=fnameescape(<SID>nextfile(v:count1))<CR><CR>
    noremap <expr>[n search('\v^(\@\@ .+ \@\@\|[<=>\|]{7}([^<=>\|]\|$))', 'bnW')..'gg'
    noremap <expr>]n search('\v^(\@\@ .+ \@\@\|[<=>\|]{7}([^<=>\|]\|$))', 'nW')..'G'

    " unimpaired-lines
    nnoremap <silent>[<Space> :<C-U>put! =repeat(\"\n\", v:count1)<Bar>+<CR>
    nnoremap <silent>]<Space> :<C-U>put =repeat(\"\n\", v:count1)<Bar>'[-<CR>
    nnoremap <expr><silent>[e printf(":<C-U>move --%d<CR>", v:count1)
    nnoremap <expr><silent>]e printf(":<C-U>move +%d<CR>", v:count1)
    xnoremap <expr><silent>[e printf(":move '<--%d<CR>", v:count1)
    xnoremap <expr><silent>]e printf(":move '>+%d<CR>", v:count1)

    " unimpaired-toggling
    call unimpaired#toggle('b', 'bg', 'light', 'dark')
    call unimpaired#toggle('c', 'cul')
    call unimpaired#toggle('d', 'diff', 'diffthis', 'diffoff')
    call unimpaired#toggle('h', 'hls')
    call unimpaired#toggle('i', 'ic')
    call unimpaired#toggle('l', 'list')
    call unimpaired#toggle('n', 'nu')
    call unimpaired#toggle('r', 'rnu')
    call unimpaired#toggle('s', 'spell')
    call unimpaired#toggle('u', 'cuc')
    call unimpaired#toggle('v', 've', 'all', '')
    call unimpaired#toggle('w', 'wrap')
    call unimpaired#toggle('x', 'cul', 'setl cul cuc', 'setl nocul nocuc')

    " unimpaired-pasting
    " [P and ]P to flip(!) linewise / charwise
    nnoremap <silent>[P :<C-U>call <SID>putreg('P', 1)<CR>
    nnoremap <silent>]P :<C-U>call <SID>putreg('p', 1)<CR>
    " [p and ]p to adjust indent and put linewise
    nnoremap <silent>[p :<C-U>call <SID>putreg('[p')<CR>
    nnoremap <silent>]p :<C-U>call <SID>putreg(']p')<CR>
    " <P and <p to put and shift left
    nnoremap <silent><P :<C-U>call <SID>putreg('[p')<CR><']
    nnoremap <silent><p :<C-U>call <SID>putreg(']p')<CR><']
    " >P and >p to put and shift right
    nnoremap <silent>>P :<C-U>call <SID>putreg('[p')<CR>>']
    nnoremap <silent>>p :<C-U>call <SID>putreg(']p')<CR>>']
    " =P and =p to put and re-indent
    nnoremap <silent>=P :<C-U>call <SID>putreg('[p')<CR>=']
    nnoremap <silent>=p :<C-U>call <SID>putreg(']p')<CR>=']

    " [op ]op yop
    nnoremap <silent>[op :setl paste<Bar>au InsertLeave * ++once setl nopaste<CR>O
    nnoremap <silent>]op :setl paste<Bar>au InsertLeave * ++once setl nopaste<CR>o
    nnoremap <silent>yop :setl paste<Bar>au InsertLeave * ++once setl nopaste<CR>S

    " unimpaired-encoding (except XML)
    nnoremap <expr><silent>[u opera#mapto('call <SID>url_encode()')
    xnoremap <expr><silent>[u opera#mapto('call <SID>url_encode()')
    nnoremap <silent>[uu :call <SID>url_encode()<CR>
    nnoremap <expr><silent>]u opera#mapto('call <SID>url_decode()')
    xnoremap <expr><silent>]u opera#mapto('call <SID>url_decode()')
    nnoremap <silent>]uu :call <SID>url_decode()<CR>
    nnoremap <expr><silent>[y opera#mapto('call <SID>c_encode()')
    xnoremap <expr><silent>[y opera#mapto('call <SID>c_encode()')
    nnoremap <silent>[yy :call <SID>c_encode()<CR>
    nnoremap <expr><silent>]y opera#mapto('call <SID>c_decode()')
    xnoremap <expr><silent>]y opera#mapto('call <SID>c_decode()')
    nnoremap <silent>]yy :call <SID>c_decode()<CR>

    " mappings to add/delete/change surround
    nnoremap <expr><silent>gy opera#mapto('call <SID>surround(1)')
    xnoremap <expr><silent>gy opera#mapto('call <SID>surround(1)')
    nnoremap <expr><silent>gz opera#mapto('call <SID>surround(0)')
    xnoremap <expr><silent>gz opera#mapto('call <SID>surround(0)')
    nnoremap <expr><silent>gZ opera#mapto('call <SID>surround()')
    xnoremap <expr><silent>gZ opera#mapto('call <SID>surround()')
endfunction

" unimpaired#nextprev({letter}, {prefix})
" create mappings to execute :next/:previous sort of commands
function! unimpaired#nextprev(letter, prefix) abort
    execute printf("nnoremap <silent>[%s :%sfirst<CR>", toupper(a:letter), a:prefix)
    execute printf("nnoremap <silent>]%s :%slast<CR>", toupper(a:letter), a:prefix)
    execute 'nnoremap <expr><silent>['..a:letter
        \ 'printf(":<C-U>%d'..a:prefix..'previous<CR>", v:count1)'
    execute 'nnoremap <expr><silent>]'..a:letter
        \ 'printf(":<C-U>%d'..a:prefix..'next<CR>", v:count1)'
    if exists(':'..a:prefix..'pfile') == 2
        execute 'nnoremap <expr><silent>[<C-'..a:letter..'>'
            \ 'printf(":<C-U>%d'..a:prefix..'pfile<CR>", v:count1)'
        execute 'nnoremap <expr><silent>]<C-'..a:letter..'>'
            \ 'printf(":<C-U>%d'..a:prefix..'nfile<CR>", v:count1)'
    endif
endfunction

" unimpaired#toggle({letter}, {option} [, {value1}, {value2}])
" create mappings to switch {option} value
function! unimpaired#toggle(letter, option, ...) abort
    if type(getbufvar('', '&'..a:option)) == v:t_string
        " string option with {value1} or {value2}
        execute printf('nnoremap <silent>[o%s :setl %s=%s<CR>', a:letter, a:option, a:1)
        execute printf('nnoremap <silent>]o%s :setl %s=%s<CR>', a:letter, a:option, a:2)
        execute printf('nnoremap <silent>yo%s :let &l:%s = (&l:%s is# %s) ? %s : %s<CR>',
            \ a:letter, a:option, a:option, string(a:1), string(a:2), string(a:1))
    elseif a:0
        " boolean option executing command {value1} or {value2}
        execute printf('nnoremap <silent>[o%s :%s<CR>', a:letter, a:1)
        execute printf('nnoremap <silent>]o%s :%s<CR>', a:letter, a:2)
        execute 'nnoremap <expr><silent>yo'..a:letter
            \ 'printf(":%s<CR>", &l:'..a:option '?' string(a:2) ':' string(a:1)..')'
    else
        " simple boolean option
        execute printf('nnoremap <silent>[o%s :setl %s<CR>', a:letter, a:option)
        execute printf('nnoremap <silent>]o%s :setl no%s<CR>', a:letter, a:option)
        execute printf('nnoremap <silent>yo%s :setl inv%s<CR>', a:letter, a:option)
    endif
endfunction

" s:nextfile({off})
" find next file in the current file's directory
function s:nextfile(off) abort
    let l:slash = exists('+shellslash') && !&shellslash ? '\' : '/'
    let l:curr = fnamemodify(@%, ':p')
    let l:path = fnamemodify(l:curr, ':h')..l:slash
    let l:file = filter(getcompletion(l:path, 'file', 1), {_, v -> v[-1:] !=# l:slash})
    return empty(l:file) ? '' :
        \ fnamemodify(l:file[(index(l:file, l:curr) + a:off) % len(l:file)], ':.')
endfunction

" s:putreg({how} [, {flip}])
" put v:register linewise or flip
function s:putreg(how, ...) abort
    let l:cmd = printf('normal! "%s%d%s', v:register, v:count1, a:how)
    let l:type = getregtype()
    if l:type is# 'V' && !get(a:, 1)
        " put as is
        execute l:cmd
        return
    endif

    let [l:reg, l:value] = [v:register, getreg()]
    if l:type is# 'V'
        " flip to charwise
        call setreg(l:reg, trim(l:value), 'v')
    else
        " force linewise
        call setreg(l:reg, l:value, 'V')
    endif
    try | execute l:cmd
    finally | call setreg(l:reg, l:value, l:type)
    endtry
endfunction

" s:surround([{oper}])
" add(1)/delete(0)/change(-1) surround
function s:surround(...) range abort
    let l:oper = get(a:, 1, -1)
    if l:oper != 0
        " add or replace - need to input surrounding character
        call inputsave()
        let l:chr1 = nr2char(getchar())
        call inputrestore()
        silent! undojoin
        if l:chr1 !~# '\p'
            return
        endif

        " find character pair by scanning 'matchpairs'
        let l:pos = stridx(&mps, l:chr1)
        if l:pos < 0
            let l:chr2 = l:chr1
        elseif &mps[l:pos + 1] is# ':'
            let l:chr2 = &mps[l:pos + 2]
        else
            let [l:chr1, l:chr2] = [&mps[l:pos - 2], l:chr1]
        endif
    endif

    let l:line = getline(a:firstline)
    if l:oper != 1
        " delete or replace - delete the first char
        let l:line = strcharpart(l:line, 1)
    endif
    if l:oper != 0
        " add or replace - prepend surrounding char
        let l:line = l:chr1..l:line
    endif
    if a:firstline != a:lastline
        " output the first line and read in the last one
        call setline(a:firstline, l:line)
        let l:line = getline(a:lastline)
    endif
    if l:oper != 1
        " delete or replace - delete the last char
        let l:line = strcharpart(l:line, 0, strchars(l:line) - 1)
    endif
    if l:oper != 0
        " add or replace - append surrounding char
        let l:line .= l:chr2
    endif
    " output the last line
    call setline(a:lastline, l:line)
endfunction

" C string encode/decode
const s:escape = {"\007": '\a', "\010": '\b', "\011": '\t', "\012": '\n', "\013": '\v',
    \ "\014": '\f', "\015": '\r', "\033": '\e', "\"": '\"', "'": '\''', '\': '\\'}
const s:unescape = {'a': "\007", 'b': "\010", 't': "\011", 'n': "\012", 'v': "\013",
    \ 'f': "\014", 'r': "\015", 'e': "\033"}
function s:c_encode() range abort
    let l:last = a:lastline - a:firstline
    call setline(a:firstline, map(getline(a:firstline, a:lastline), {k, v ->
        \ substitute(v, "[\001-\033\\\\\"']", '\=has_key(s:escape, submatch(0)) ? ' .
        \ 's:escape[submatch(0)] : printf("\\%03o", char2nr(submatch(0)))', 'g') .
        \ repeat('\n\', k < l:last)}))
endfunction
function s:c_decode() range abort
    call setline(a:firstline, map(getline(a:firstline, a:lastline), {_, v ->
        \ substitute(v, '\v\\(\o{1,3}|x\x{1,2}|u\x{4}|\U\x{8}|.)',
        \ '\=has_key(s:unescape, submatch(1)) ? s:unescape[submatch(1)] : ' .
        \ 'submatch(1) =~# "^[0-7xuU]" ? eval("\"\\"..submatch(1).."\"") : ' .
        \ 'submatch(1)', 'g')}))
endfunction

" URL encode/decode
function s:url_encode() range abort
    call setline(a:firstline, map(getline(a:firstline, a:lastline), {_, v ->
        \ substitute(iconv(v, 'latin1', 'utf8'), '[^-[:alnum:]_.~:/?#@]',
        \ '\=printf("%%%02X", char2nr(submatch(0), 1))', 'g')}))
endfunction
function s:url_decode() range abort
    call setline(a:firstline, map(getline(a:firstline, a:lastline), {_, v ->
        \ iconv(substitute(tr(v, '+', ' '), '%\(\x\x\)',
        \ '\=nr2char(str2nr(submatch(1), 16), 1)', 'g'), 'utf-8', 'latin1')}))
endfunction
