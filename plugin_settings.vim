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
    nmap <buffer> <leader>k <plug>(lsp-peek-definition)
    nmap <buffer> <leader>c <plug>(lsp-code-action)
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

"Ignore files from file search
  let g:ctrlp_custom_ignore={
    \ 'dir':  ' \.git\|__pycache__\|venv$',
    \ }
let g:ctrlp_open_multiple_files='i'
let g:ctrlp_use_caching=0
let g:ctrlp_cmd='CtrlP :pwd'
