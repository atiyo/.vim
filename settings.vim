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

"Colors
colorscheme gruvbox
set background=dark

"Help identify Julia files
au VimEnter,BufRead,BufNewFile *.jl set filetype=julia
filetype plugin indent on

"vim-slime to use the native terminal. Disable default keybindings.
let g:slime_target = "vimterminal"
let g:slime_no_mappings = 1
