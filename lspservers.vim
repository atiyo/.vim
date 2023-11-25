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

if executable('pylsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

if executable('R')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'r_lsp',
        \ 'cmd': {server_info->['R', '--slave', '-e', 'languageserver::run()']},
        \ 'allowlist': ['r'],
        \ })
endif

if executable('racket')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'racket_lsp',
        \ 'cmd': {server_info->['racket', '-l', 'racket-langserver']},
        \ 'allowlist': ['racket'],
        \ })
endif

if executable('texlab')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'tex_lsp',
        \ 'cmd': {server_info->['texlab']},
        \ 'allowlist': ['plaintex', 'tex'],
        \ 'workspace_config': {'texlab': {'latexindent': {'local': '/Users/atiyo/.vim/latexformat.yaml', 'modifyLineBreaks': v:true}}},
        \ })
endif
