" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" remember to run :PluginInstall when adding a new plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Python AutoComplete
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" PEP 8 
Plugin 'nvie/vim-flake8'

" Git integration
Plugin 'tpope/vim-fugitive'

" Fuzzy search
Plugin 'kien/ctrlp.vim'

" File Tree
Plugin 'scrooloose/nerdtree'

" Color Schemes
" github jnurminel/Zenburn
" must put the zenburn.vim file into ~/.vim/colors for it to work
colors zenburn
colorscheme zenburn
set t_Co=256
set background=dark

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


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
set number relativenumber
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

" Enable folding
set foldmethod=indent
set foldlevel=99
" Fold using space bar instead of za
nnoremap <space> za

" History
set history=700
set undolevels=700

let python_highlight_all=1
syntax on
