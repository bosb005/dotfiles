syntax on
set number
set autoindent
set viminfo='10,\"100,:20,%,n~/.viminfo

"execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * wincmd w
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |   exe "normal! g`\"" | endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Highlight current line
"set cursorline
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Show the filename in the window titlebar
set title
