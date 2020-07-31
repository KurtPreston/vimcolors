" This is a part of my vim configuration.
" https://github.com/matveyt/vimfiles

" ';' to get to the command line quickly
nnoremap ; :
xnoremap ; :
" ',' to repeat char search forward
nnoremap , ;
xnoremap , ;
" '\,' to repeat char search backward
nnoremap <leader>, ,
xnoremap <leader>, ,
" improved auto completion: <Tab>, <CR>, <Esc>, <Up>, <Down>, <PageUp>, <PageDown>
" <C-X><C-F> is now able to expand wildcards
inoremap <C-X><C-F> <C-R>=misc#complete('[[:fname:]*?]\+', 'file')<CR>
inoremap <expr><Tab> search('\v\k{3}%#', 'bn', line('.')) ? '<C-N>' : '<Tab>'
inoremap <expr><CR> pumvisible() ? '<C-Y>' : '<CR>'
inoremap <expr><Esc> pumvisible() ? '<C-E>' : '<Esc>'
inoremap <expr><Up> pumvisible() ? '<C-P>' : '<Up>'
inoremap <expr><Down> pumvisible() ? '<C-N>' : '<Down>'
inoremap <expr><PageUp> pumvisible() ? '<PageUp><C-P><C-N>' : '<PageUp>'
inoremap <expr><PageDown> pumvisible() ? '<PageDown><C-N><C-P>' : '<PageDown>'
" <Space> to toggle fold
nnoremap <Space> za
" [count]<F8>/[count]<S-F8> to switch colorscheme
nnoremap <silent><F8> :<C-U>call misc#switchcolor(v:count1)<CR>
nnoremap <silent><S-F8> :<C-U>call misc#switchcolor(-v:count1)<CR>
" [count]<C-kPlus>/[count]<C-kMinus> to increase/decrease font size
nnoremap <silent><C-kMinus>
    \ :<C-U>let &gfn = substitute(&gfn, '\d\+', '\=submatch(0)-'..v:count1, '')<CR>
nnoremap <silent><C-kPlus>
    \ :<C-U>let &gfn = substitute(&gfn, '\d\+', '\=submatch(0)+'..v:count1, '')<CR>
" <F12> to open terminal
nnoremap <expr><F12> printf(':%sterminal<CR>%s',
    \ has('nvim') && !better#is_blank_buffer() ? 'split +' : '',
    \ has('nvim') ? 'i' : '')
" <Ctrl-N> to add new tab
nnoremap <silent><C-N> :$tabnew<CR>
" <Ctrl-S> to save file
nnoremap <silent><C-S> :update<CR>
" move cursor inside quotes while typing
noremap! "" ""<Left>
noremap! '' ''<Left>
" restore visual selection after an indent
xnoremap < <gv
xnoremap > >gv
" copy-paste like Windows
vnoremap <S-Del>    "+d
vnoremap <C-Insert> "+y
vnoremap <S-Insert> "+p
nnoremap <S-Insert> "+gP
noremap! <S-Insert> <C-R>+
" [count]<BS> to open "File Explorer" (vim-drvo)
nnoremap <expr><silent><BS> ':<C-U>edit %:p'..repeat(':h', v:count1)..'<CR>'
" '\=' to cd to the current file's directory
nnoremap <leader>= :lcd %:p:h <Bar> pwd<CR>
" '\p' to show what function we are in (like 'diff -p')
nnoremap <leader>p :echo getline(search('^[[:alpha:]$_]', 'bcnW'))<CR>
" '\x' to execute command and put output into a buffer
" '\X' to eval expression and put result into a buffer
nnoremap <silent><leader>x :put =trim(execute(input(':', '', 'command')))<CR>
nnoremap <silent><leader>X :put =eval(input('=', '', 'expression'))<CR>
" '\h' to show the current highlight group
nnoremap <silent><leader>h :Highlight!<CR>
" gc to toggle comments
nnoremap <expr><silent>gc opera#mapto('Comment!')
xnoremap <expr><silent>gc opera#mapto('Comment!')
nnoremap <silent>gcc :Comment!<CR>
" gs to sort selection text
nnoremap <expr><silent>gs opera#mapto('sort')
xnoremap <expr><silent>gs opera#mapto('sort')
nnoremap <silent>gss :sort<CR>
" gt to trim trailing whitespace
nnoremap <expr><silent>gt opera#mapto('Trim')
xnoremap <expr><silent>gt opera#mapto('Trim')
nnoremap <silent>gtt :Trim<CR>
" gx to execute script
nnoremap <expr><silent>gx opera#mapto('Execute', 'line')
xnoremap <expr><silent>gx opera#mapto('Execute', 'line')
nnoremap <silent>gxx :Execute<CR>
" my text objects: ae/ie - buffer, al/il - line
noremap <expr><silent><plug>ae textobj#set_lines(1, '$')
noremap <expr><silent><plug>ie textobj#set_lines(nextnonblank(1), prevnonblank('$'))
noremap <expr><silent><plug>al
    \ textobj#set_chars(textobj#pos('.', 1), textobj#pos('.', col('$') - 1))
noremap <expr><silent><plug>il
    \ textobj#set_chars(textobj#pos('.', '^\s*\zs'), textobj#pos('.', '\S\s*$'))
omap ae <plug>ae
xmap ae <plug>ae
omap ie <plug>ie
xmap ie <plug>ie
omap al <plug>al
xmap al <plug>al
omap il <plug>il
xmap il <plug>il
