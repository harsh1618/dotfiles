so ~/.vimrc

"tnoremap <Esc> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>

au WinEnter * if (&buftype == 'terminal') | startinsert | endif

" Neovim-qt Guifont command
command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="<args>"
Guifont Droid Sans Mono:h11
