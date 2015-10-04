" needed for some vim features
set nocompatible

let mapleader=" "

" required for vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Bundle 'gmarik/Vundle.vim'

Bundle 'Valloric/YouCompleteMe'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jpalardy/vim-slime'
Bundle 'vim-scripts/taglist.vim'
Bundle 'danro/rename.vim'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'ivanov/vim-ipython'
Bundle 'tpope/vim-fugitive'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Raimondi/delimitMate'
"Bundle 'ntpeters/vim-better-whitespace'
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
if has("ruby")
    Plugin 'lukaszkorecki/CoffeeTags'
endif
Plugin 'cbracken/vala.vim'
"Plugin 'L9'
"Plugin 'FuzzyFinder'

" colorschemes
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'croaker/mustang-vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'sjl/badwolf'
Bundle 'vim-scripts/twilight'
Bundle 'trusktr/seti.vim'
Bundle 'effkay/argonaut.vim'

call vundle#end()
filetype plugin indent on

" show line numbers
set nu
" relative numbering
set rnu
" toggle line numbering
noremap <F4> :set invnu invrnu<CR>
" show line number and column number
set ru

" tab width
set softtabstop=4
set shiftwidth=4
nnoremap <Leader>2 :set sw=2 <Bar> set sts=2<CR>
nnoremap <Leader>4 :set sw=4 <Bar> set sts=4<CR>

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

" toggle cursor column highlighting
nnoremap <Leader>c :set invcursorcolumn<CR>

" case insensitive patterns
" prefix with \C for case sensitive matching
set ignorecase
set smartcase

" show command being typed in normal mode
set showcmd

" incremental search
set incsearch
" highlight matched strings
set hlsearch
" remove highlighting
nnoremap `` :noh<CR>

set mouse=a

" map : to ; and vice-versa
" so you don't have to hold down shift to get into command mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" guest mode
" undo above mapping
noremap <Leader>; :unmap :<Bar>unmap ;<CR>

" 0 to go to first non-whitespace character
nnoremap 0 ^
nnoremap ^ 0

inoremap jj <Esc>

" repeat last defined macro, Bonus: no Ex mode
nnoremap Q @@

" automatically change directory to the file location
"set autochdir

" save file with sudo privileges
noremap <Leader>w :w !sudo tee > /dev/null %<CR>

" show diff of current buffer with last saved version
noremap <Leader>d :w !diff % -<CR>

" minimum number of lines after/before current line on the screen
set scrolloff=5

" toggle paste mode and display current value
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>

" toggle nerd-tree window
noremap <Leader>n :NERDTreeTabsToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.o$']
let g:NERDTreeWinSize=20

" don't abandon buffers when unloading
set hidden

set t_Co=256
colorscheme molokai

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
let g:ycm_collect_identifiers_from_tags_files = 1
noremap <Leader>j :YcmCompleter GoToDefinition<CR>

set tags+=../tags

" avoid backspace problems
set backspace=indent,eol,start

" toggle taglist window
nnoremap <Leader>t :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Show_One_File=1

" toggle minibufexpl window
nnoremap <Leader>b :MBEToggle<CR>
"nnoremap <Leader>b :TMiniBufExplorer<CR>

" slime default to ipython: wrap in %cpaste when sending to buffer
let g:slime_python_ipython=1

" toggle gundo
nnoremap <Leader>u :GundoToggle<CR>

" indent guides
nnoremap <Leader>i :IndentGuidesToggle<CR>

" yank/delete till end of line
nnoremap C c$
nnoremap D d$
nnoremap Y y$

"grep options
set grepprg=grep\ -n\ -I\ $*\ /dev/null
" search for the word under the cursor
nnoremap <Leader>g :grep <C-R><C-W> *<CR>
nnoremap <Leader>r :grep -r <C-R><C-W> *<CR>

"CtrlP ignore files
let g:ctrlp_custom_ignore='.*\.o$'
" use vim's pwd
let g:ctrlp_working_path_mode = 'a'

" Remember cursor position
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

" Remember undo history
set undofile
set undodir=~/.vim/undodir

if has("patch-7.4-399")
    set cryptmethod=blowfish2
endif

let tlist_vala_settings='c#;d:macro;t:typedef;n:namespace;c:class;'.
  \ 'E:event;g:enum;s:struct;i:interface;'.
  \ 'p:properties;m:method'

set title
