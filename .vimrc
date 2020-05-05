set nocompatible

call plug#begin('~/.vim/plugged/')

" plugins
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'terryma/vim-multiple-cursors'

call plug#end()

syntax on
set number " enable line number
set rnu " set it to relative
set background=dark
let base16colorspace=256
set termguicolors
colorscheme base16-oceanicnext

filetype plugin on

set path+=**  " search down into sub-folders

set wildmenu

set title  " show filename on title bar

filetype plugin indent on

set modeline

" global settings for all files
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

" python
autocmd FileType python setlocal ts=4 sts=4 sw=4

" php
autocmd FileType php setlocal ts=4 sts=4 sw=4

" javascript
autocmd FileType javascript setlocal ts=4 sts=4 sw=4

" html
autocmd FileType html setlocal ts=2 sts=2 sw=2

" makefile custom settings
autocmd FileType make setlocal noexpandtab

" removes word wrapping
set nowrap

" conveniently open/close nerdtree
map <C-b><C-n> :NERDTreeToggle<CR>
