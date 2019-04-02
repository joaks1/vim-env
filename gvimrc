" File ~/.gvimrc

" Set window size
" set lines=9999
" set columns=140

" Set default color scheme
" colorscheme nefertiti
colorscheme lucius
LuciusDark

" After updating to Ubuntu 17.04, underscores no longer show up in gvim unless
" the linespacing is increased. Vanilla vim is not affected
" This no longer seems to necessary in Ubuntu 18.10.
" set linespace=2

" For teaching
function! SetTeach()
    colorscheme lucius
    LuciusLightHighContrast
    set guifont=Monospace\ 18
endfunction
command! Teach call SetTeach()
