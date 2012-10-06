set nocompatible
"backspace configuration
set bs=2

"""""""""
"display"
"""""""""
"number of columns of the screen
set columns=80
"use colors that look good on a dark background
set background=dark
"minimal number of screen lines to keep abave and below the cursor
set so=5
"briefly jump to the matching bracket
set showmatch
"time to show the match
set matchtime=2

""""""""""""""
"search stuff"
""""""""""""""
"incremental search
set incsearch
"matching text is highlighted
set hlsearch
"ignorecase in search patterns
set ignorecase

""""""""""""""
"status stuff"
""""""""""""""
"always have a status line
set laststatus=2
"show line and column number of the cursor position
set ruler
"show command in the last line of the screen
set showcmd
"content of the status line
"file_name Line:row/nb_of_rows, col
set statusline=%<%f\  "filename
set statusline+=%w%h%m%r\  "options
set statusline+=line:%l\/%L,\ col:%c

syntax on

""""""
"TODO"
""""""
"set nobackup
"set nowb
"set noswapfile
"set autoindent
"set smartindent

"""""""""""""""""""
"options disabled "
"""""""""""""""""""
"underline cursor line
"set cursorline
