"Establish leader key
nmap , <Leader>

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
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>n :b#<CR>
nnoremap <Leader>d :b#<CR>:bd#<CR>

"File navigation
let g:ctrlp_map = '<Leader>f'
nnoremap <Leader>r :CtrlPMRU<CR>
nnoremap <Leader>/ :CtrlPLine<CR>

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
nnoremap <Leader>t :terminal<CR><C-j><C-w>L
tmap <Esc> <C-\><C-n>

"REPL sending
vmap <Space> <Plug>SlimeRegionSend
nmap <Space> <Plug>SlimeLineSend
nmap <C-@> <Plug>SlimeParagraphSend

"Sneaky
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

nnoremap < :diffget LO<CR>
nnoremap > :diffget RE<CR>

"Helper function to remove white space
function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

function SlimeOverride_EscapeText_python(text)
  return system("sed '/^$/d'", a:text)
endfunction
