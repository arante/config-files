" .vimrc
"
" Created by Billy Wilson Arante <arantebillywilson@gmail.com>
" Last updated on 2017/06/03 PHT

set path=**

" Syntax highlighting
syntax off

filetype plugin on

set modeline

" Line numbers
set number

" Relative line-numbers
set rnu

" Vertical line, limits number of char per line
" set colorcolumn=80
" highlight colorcolumn ctermbg=lightgrey guibg=lightgrey

" C filetype indent
autocmd FileType *.c setlocal shiftwidth=8 tabstop=8 expandtab

" Python filetype indent
autocmd FileType *.py setlocal shiftwidth=4 tabstop=4 expandtab

" HTML filetype indent
autocmd FileType *.html setlocal shiftwidth=2 tabstop=2 expandtab

" JavaScript filetype indent
autocmd FileType *.js setlocal shiftwidth=2 tabstop=2 expandtab

" PHP filetype indent
autocmd FileType *.php setlocal shiftwidth=4 tabstop=4 expandtab
