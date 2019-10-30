" Format
filetype indent plugin on
set encoding=utf-8
syntax enable

" Display
set number
set wildmenu

" Behavior
set autoread
set lazyredraw
set mouse=a
set updatetime=200
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

" Fuzzy finder
set rtp+=~/.fzf

" Plugin
let g:netrw_dirhistmax = 0
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'embear/vim-localvimrc'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
call plug#end()

" Style
set background=light

" Lint
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'cpp': ['clang-format'],
\   'css': ['prettier'],
\   'javascript': ['prettier'],
\   'markdown': ['prettier'],
\   'python': ['black'],
\   'scss': ['prettier'],
\   'sh': ['shfmt'],
\   'typescript': ['prettier'],
\}
let g:ale_linters = {
\   'python': ['pyls'],
\}
