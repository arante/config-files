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
Plug 'preservim/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'

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
" For JavaScript/TypeScript, HTML, CSS, JSON, etc.
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Python
autocmd FileType py setlocal ts=4 sts=4 sw=4

" C/C++
autocmd FileType c,cpp setlocal ts=8 sts=8 sw=8

" Makefile custom settings
autocmd FileType make setlocal noexpandtab

" Removes word wrapping
set nowrap

" Make the number of characters per line readable
set colorcolumn=80

" ESLint as plugging manager
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

"
" NERDTree Configs
"

" Show relative line numbers when NERDTree is used
let g:NERDTreeShowLineNumbers=1
autocmd BufEnter NERD_* setlocal rnu

" Conveniently open/close nerdtree
map <C-\> :NERDTreeToggle<CR>

" Move side panel to the right
let g:NERDTreeWinPos = "right"
