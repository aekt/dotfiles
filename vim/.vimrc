" Format
set encoding=utf-8
filetype indent plugin on

" Display
set number
set wildmenu

" Behavior
set lazyredraw
set mouse=a
set visualbell

" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Indentation
set autoindent
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2

" Style
syntax enable
set background=dark

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
