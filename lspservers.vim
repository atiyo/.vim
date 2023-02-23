if executable('pylsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

if executable('julia')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'julia_lsp',
        \ 'cmd': {server_info->[
            \ 'julia',
            \ '--startup-file=no',
            \ '--history-file=no',
            \ '-e',
            \ 'using LanguageServer;
            \  runserver();']},
        \ 'allowlist': ['julia'],
        \ })
endif
