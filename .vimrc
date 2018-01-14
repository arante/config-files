" .vimrc
"
" Written by Billy Wilson Arante <arantebillywilson@gmail.com>
" Last updated on 2017/08/21 PHT

set nocompatible

" Syntax highlighting
"syntax off

" Color schemes
"colorscheme monokai
"colorscheme predawn

filetype plugin on

" Search down into sub-folders
set path+=**

set wildmenu

" Show filename on title bar
set title

filetype plugin indent on

set modeline

" Line numbers
set number

" Relative line-numbers
set rnu

" Vertical line, limits number of char per line
"set colorcolumn=80
"highlight colorcolumn ctermbg=lightgrey guibg=lightgrey

" Global settings for all files
set autoindent
set shiftwidth=8
set expandtab
set tabstop=8
set softtabstop=8

" PHP custom settings
autocmd FileType php setlocal ts=4 sts=4 sw=4

" JavaScript custom settings
autocmd FileType javascript setlocal ts=4 sts=4 sw=4

" Makefile custom settings
autocmd FileType make setlocal noexpandtab

" Removes word wrapping
set nowrap
