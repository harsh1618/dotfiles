" needed for some vim features
set nocompatible

" required for vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tomasr/molokai'
Bundle 'croaker/mustang-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jpalardy/vim-slime'
Bundle 'vim-scripts/taglist.vim'
Bundle 'danro/rename.vim'
Bundle 'fholgado/minibufexpl.vim'
"Plugin 'L9'
"Plugin 'FuzzyFinder'

call vundle#end()
filetype plugin indent on
filetype plugin on

" show line numbers
set nu
" relative numbering
set rnu
" toggle line numbering
noremap <F4> :set invnu invrnu<CR>
" show line number and column number
set ru

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

" show command being typed in normal mode
set showcmd

" incremental search
set incsearch
" highlight matched strings
set hlsearch

" map : to ; and vice-versa 
" so you don't have to hold down shift to get into command mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" automatically change directory to the file location
set autochdir

" save file with sudo privileges
noremap <F2> :w !sudo tee > /dev/null %<CR>

" keep cursor on middle line when scrolling
set scrolloff=999

" place search results on middle line
"map n nzz
"map N Nzz

" toggle paste mode and display current value
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>

set path+=**

" toggle nerd-tree window
noremap <C-n> :NERDTreeToggle<CR>

" don't abandon buffers when unloading
set hidden

if has ('gui_running')
    colorscheme molokai
    "set background=dark
endif

" split vertically for diffs
set diffopt+=vertical

" hide toolbar in gvim
set guioptions-=T
" hide scrollbars 
set go-=rL
" hide menu bar
set go-=m

" YCM options
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" avoid backspace problems
set backspace=indent,eol,start

" toggle taglist window
nnoremap <C-y> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Show_One_File=1

" toggle minibufexpl window
nnoremap <C-b> :TMiniBufExplorer<CR>

" slime default to ipython: wrap in %cpaste when sending to buffer
let g:slime_python_ipython=1

" make space and backspace keys function as in insert mode
nnoremap <space> i<space><Esc>l
nnoremap <BS> i<BS><Esc>l

" yank/delete till end of line
nnoremap C c$
nnoremap D d$
nnoremap Y y$

" remove highlighting
nnoremap `` :noh<CR>

" read template file for competitive programming
"nnoremap <F5> :r ~/template.cpp<CR>ggdd17G

