" Style options.
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Look and feel options.
set number
set scrolloff=5
set ruler

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
