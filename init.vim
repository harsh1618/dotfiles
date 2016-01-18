so ~/.vimrc

tnoremap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>

au WinEnter * if (&buftype == 'terminal') | startinsert | endif
