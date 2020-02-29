" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Style options.
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Look and feel options.
set tw=90
set colorcolumn=90
highlight ColorColumn ctermbg=233
set relativenumber
set scrolloff=5
set ruler

" Rebind <Leader> key
let mapleader = ","

" Moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Ctrl+<movement> keys to move around windows
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Map sort function to <Leader>s
map <Leader>s :sort<CR>

" Block text indentation
map > >gv
map < <gv

set history=700
set undolevels=700

filetype off
filetype plugin indent on
syntax on
