set encoding=UTF-8

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
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'mileszs/ack.vim'
Plug 'ryanoasis/vim-devicons' " always load as the last one

call plug#end()

syntax on
set number " enable line number
set rnu " set it to relative
set background=dark
"let base16colorspace=256
set termguicolors
colorscheme base16-oceanicnext

filetype plugin on

set path+=** " search down into sub-folders

set wildmenu

set title " show filename on title bar

filetype plugin indent on

set modeline

" python
autocmd filetype py setlocal ts=4 sts=4 sw=4

" c/c++
autocmd filetype c,cpp setlocal ts=8 sts=8 sw=8

" Global settings for all files
set autoindent
set smartindent
" For JavaScript/TypeScript, HTML, CSS, JSON, etc.
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Makefile custom settings
autocmd FileType make setlocal noexpandtab

" Removes word wrapping
set nowrap

" Make the number of characters per line readable
set colorcolumn=80

" ESLint as plugin manager
let g:ale_fixers = {'javascript': ['prettier','eslint'], 'typescript': ['prettier','eslint']}
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

" Resize the NERDTree 40ndow size
let g:NERDTreeWinSize=40

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-pyright',
  \ ]

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" opens search results in a window w/ links and highlight the matches
command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude *.{json,pyc} . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
:nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
nnoremap <Leader>/ :Ack!<Space>
" }}}

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
