" .vimrc
" Author: Billy Arante <arantebillywilson@gmail.com>
" Created: 2022 Sep 15
" Last Change: 2022 Sep 20

set encoding=utf-8

"
" Third-party plugins
"

set nocompatible " required by vim-polyglot

"
" Relative line numbers settings
"

" Enable relative line numbers on all buffers.
set rnu

" Set relative line numbers on all netrw windows.
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

"
" Colorscheme
"

" Required by night-owl.vim plugin
if (has('termguicolors'))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme night-owl

"
" Indentations
"

set autoindent
set smartindent
" Several indentations is being handled by vim-polyglot based on filetype

"
" Others
"

" Set a boundary to a number of characters per line, for readability but
set colorcolumn=80
" do not breaklines more than 80 characters in length either.
set nowrap

" Required by ctrlp.vim
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" No to swap files
set noswapfile

" Enable highlight to all Python syntax
let python_hightlight_all=1
syntax on

" Split below and to the right
set splitbelow
set splitright

" Split navigations
" Remaps pane navigation key bindings to Ctrl-h/j/k/l for efficiency.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Overrides netrw's Ctrl+l function
let g:netrw_usermaps = [["<C-l>", "MoveCursorToWindowOnTheRight"]]
function! MoveCursorToWindowOnTheRight(islocal)
  return "wincmd l"
endfunction
