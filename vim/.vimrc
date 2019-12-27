" Plugin
let g:netrw_dirhistmax = 0
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'brooth/far.vim'
Plug 'chriskempson/base16-vim'
Plug 'embear/vim-localvimrc'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
call plug#end()

" Behavior
set autoread
set lazyredraw
set mouse=a
set updatetime=200
set visualbell

" Display
set number
set wildmenu

" Format
filetype indent plugin on
set encoding=utf-8
syntax enable

" Indentation
set autoindent
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2

" Search
set ignorecase
set incsearch
set nohlsearch
set smartcase

" Style
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Key maps
nnoremap <C-J> :ALEGoToDefinition<CR>

" Fuzzy finder
set rtp+=~/.fzf

" Lint
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'css': ['prettier'],
\   'dart': ['dartfmt'],
\   'javascript': ['prettier'],
\   'markdown': ['prettier'],
\   'python': ['black', 'isort'],
\   'scss': ['prettier'],
\   'sh': ['shfmt'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\}
let g:ale_linters = {
\   'dart': ['language_server'],
\   'python': ['mypy', 'pyls'],
\}
let g:ale_linter_aliases = {
\   'typescriptreact': 'typescript'
\}
