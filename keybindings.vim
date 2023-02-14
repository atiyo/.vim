"Establish leader key
nmap \\ <Leader>

"Trim trailing white spaces in the file
noremap <Leader>s :call TrimWhitespace()<CR>

"Resize windows nicely
nnoremap = :vertical resize +5<CR>
nnoremap - :vertical resize -5<CR>
nnoremap + :res +5<CR>
nnoremap _ :res -5<CR>

"Remove highlighting from searches
nnoremap <silent> <Esc> :noh<CR>
nnoremap <silent> i :noh<CR>i
nnoremap <silent> c :noh<CR>c

"Buffer navigation
nnoremap <C-.> :bnext<CR>
nnoremap <C-,> :bprev<CR>
tnoremap <C-.> <C-\><C-n>:bnext<CR>
tnoremap <C-,> <C-\><C-n>:bprev<CR>


"Navigation between windows
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l
tnoremap <silent> <C-h> <C-w>h
tnoremap <silent> <C-j> <C-w>j
tnoremap <silent> <C-k> <C-w>k
tnoremap <silent> <C-l> <C-w>l

"Tab Completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

"Escape exits insert mode in terminal
tmap <Esc> <C-\><C-n>

"REPL sending
vmap <Space> <Plug>SlimeRegionSend
nmap <Space> <Plug>SlimeLineSend

"Helper function to remove white space
function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

function SlimeOverride_EscapeText_python(text)
  return system("sed '/^$/d'", a:text)
endfunction
