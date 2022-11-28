" .vimrc
"
" Author: Billy Arante <arantebillywilson@gmail.com>
" Created: 2022 Sep 15
" Modified: 2022 Nov 25

set encoding=utf-8

syntax on

filetype plugin indent on

"
" Third-party plugins
"
" Note: Currently using the built-in Vim plugin management feature.
"

"
" Relative line numbers configs
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

"
" ctrlp.vim configs
"

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" No to swap files
set noswapfile

" Enable highlight to all Python syntax
let python_hightlight_all=1

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

" Highlight current line
set cursorline

" 
" indentLine configs
"

" To avoid hiding markdown-related syntax
au FileType markdown let g:indentLine_setConceal = 0

" Space indented files
let g:indentLine_char = '┊'

" Tab indented files
set list lcs=tab:\¦\  

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

" Go-to code navigation
" I think, these will work only if the language's coc extension was installed.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
