" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" oper#mapto({Line} [, {Char} [, {Block}]])
" automatic g@ operator mapping
function! oper#mapto(Line, ...) abort
    " parse arguments
    let l:Line = (type(a:Line) == v:t_func) ? 'call '..get(a:Line, 'name')..'()' :
        \ a:Line
    let l:Char = get(a:, 1)
    let l:Block = get(a:, 2)
    let l:mode = mode()

    " Normal mode
    if l:mode is# 'n'
        " our 'opfunc' is a closure to access local state
        function! s:opfunc(type) abort closure
            if a:type is# 'char' && !empty(l:Char)
                " characterwise motion
                normal! `[v`]"9y
                call setreg(9, call(l:Char, [getreg(9)]))
                " :h put-Visual-mode
                normal! gv"9p
            elseif a:type is# 'block' && !empty(l:Block)
                " blockwise should never happen in Normal mode tbh
                normal! `[<C-V>`]"9y
                call setreg(9, call(l:Block, [getreg(9, 1, 1)]), 'b')
                " :h put-Visual-mode
                normal! gv"9p
            else
                " linewise motion by default
                execute "'[,']" l:Line
            endif
        endfunction
        " set opfunc and return 'g@' to be used by map-<expr>
        let &opfunc = get(funcref('s:opfunc'), 'name')
        return 'g@'
    endif

    " Visual mode
    if (l:mode is# 'v' || l:mode is# 's') && !empty(l:Char)
        " characterwise: must resolve Funcref
        if type(l:Char) == v:t_func
            let l:Char = get(l:Char, 'name')
        endif
        return '"9y:call setreg(9, '..l:Char.."(getreg(9)))\<CR>gv\"9p"
    elseif (l:mode is# "\<C-V>" || l:mode is# "\<C-S>") && !empty(l:Block)
        " blockwise: must resolve Funcref
        if type(l:Block) == v:t_func
            let l:Block = get(l:Block, 'name')
        endif
        return '"9y:call setreg(9, '..l:Block.."(getreg(9, 1, 1)), 'b')\<CR>gv\"9p"
    else
        " linewise mode by default
        return ':'..l:Line.."\<CR>"
    endif
endfunction
