"set nocompatible
"backspace configuration
"set bs=2
set enc=utf-8
set tenc=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom

set tabstop=8
"""""""""
" edit style
"""""""""
"set autoindent
set cindent
"back to last edit position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"""""""""
"display"
"""""""""
"number of columns of the screen
"set columns=80
"use colors that look good on a dark background
"set background=dark
"minimal number of screen lines to keep abave and below the cursor
"set so=5
"briefly jump to the matching bracket
"set showmatch
"time to show the match
"set matchtime=2

""""""""""""""
"search stuff"
""""""""""""""
"incremental search
set incsearch
"matching text is highlighted
set hlsearch
"ignorecase in search patterns
"set ignorecase

""""""""""""""
"status stuff"
""""""""""""""
"always have a status line
"set laststatus=2
"show line and column number of the cursor position
"set ruler
"show command in the last line of the screen
"set showcmd
"content of the status line
"file_name Line:row/nb_of_rows, col
"set statusline=%<%f\  "filename
"set statusline+=%w%h%m%r\  "options
"set statusline+=%{fugitive#statusline()}\  "Git hotness
"set statusline+=line:%l\/%L,\ col:%c

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



""""""""""""""""""
" Plugin
""""""""""""""""""
"let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<cr>

nmap <silent> <c-n> :NERDTreeToggle<CR>

"""""""""""""""""
" cscope setting
"""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
