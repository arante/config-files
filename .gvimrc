set encoding=utf-8

set guifont=Fira\ Code\ 9

set guioptions -=m
set guioptions -=T

" add useful stuff to title bar (file name, flags, cwd)
" based on @factorylabs
if has('title') && (has('gui_running') || &title)
    set titlestring=
    "set titlestring+=%f
    "set titlestring+=%h%m%r%w
    "set titlestring+=%{v:progname}
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
endif
