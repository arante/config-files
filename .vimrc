" Automate installation of vim-plug and plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

call plug#begin('~/.vim/plugged/')

" Plugins
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'terryma/vim-multiple-cursors'

call plug#end()

syntax on
set number                      " enable line number
set rnu                         " set it to relative
set background=dark
let base16colorspace=256
set termguicolors
colorscheme base16-oceanicnext

filetype plugin on

set path+=**                    " search down into sub-folders

set wildmenu

set title                       " show filename on title bar

filetype plugin indent on

set modeline

" Global settings for all files
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

" JavaScript
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" HTML
autocmd FileType html setlocal ts=2 sts=2 sw=2

" CSS
autocmd FileType css setlocal ts=2 sts=2 sw=2

" Makefile custom settings
autocmd FileType make setlocal noexpandtab

" Removes word wrapping
set nowrap

" Conveniently open/close nerdtree
map <C-\> :NERDTreeToggle<CR>

" Make the number of characters per line readable
set colorcolumn=80
