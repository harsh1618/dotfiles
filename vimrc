" needed for some vim features
set nocompatible

" show line numbers
set nu

" tab width 4 characters
set softtabstop=4
set shiftwidth=4

" insert spaces instead of tab character
" to insert a real tab use: CTRL-V<Tab>
set expandtab

" capitalize the word preceding the cursor in insert mode
imap <C-F> <Esc>gUiw`]a

" syntax highlighting
sy on

" automatic indent options
" set cindent
set autoindent 
set smartindent

" case insensitive patterns
" prefix with \C for case sensitive matching
set ignorecase

" C/C++ comments
imap <C-l> /**/<Esc>hi 

" show command being typed in normal mode
set showcmd

" incremental search
"set incsearch

" map : to ; and vice-versa 
" so you don't have to hold down shift to get into command line mode
nnoremap ; :
nnoremap : ;

" automatically change directory to the file location
set autochdir

" save file with sudo privileges
noremap <F2> :w !sudo tee %<CR>

" place search results on middle line
map n nzz
map N Nzz

