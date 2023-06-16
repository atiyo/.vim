"Do not insist on vi compatibility
set nocompatible

"Use system clipboard
set clipboard=unnamed

"Keep swap files out of the way
set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp/

"Line number
set number
set relativenumber

"Cursorline
set cursorline

"Make backspace respect end of lines
set backspace=indent,eol,start

"Tabs are 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

"Hide buffers instead of closing them
set hidden

"Intuitive splits
set splitbelow
set splitright

"Line width markers
set colorcolumn=80
set textwidth=80
set foldmethod=indent
autocmd FileType markdown,plaintex,tex setlocal colorcolumn=120 textwidth=120

"Colors
colorscheme gruvbox
set background=dark

"Help identify Julia files
au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
filetype plugin indent on
