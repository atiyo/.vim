function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [d <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]d <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <C-f> <plug>(lsp-document-format)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"vim-slime to use the native terminal. Disable default keybindings.
let g:slime_target="vimterminal"
let g:slime_no_mappings=1

"Do not show diagnostics in insert mode
let g:lsp_diagnostics_signs_enabled=0
let g:lsp_diagnostics_virtual_text_enabled=0
let g:lsp_diagnostics_echo_cursor=1
let g:lsp_hover_ui='preview'

"Sneaky
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

"Ignore files from file search
  let g:ctrlp_custom_ignore = {
    \ 'dir':  ' \.git\|__pycache__$',
    \ }
