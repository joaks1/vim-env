" File ~/.vimrc

call pathogen#infect()
syntax on

" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Make window height VERY large so they always maximise on window switch
set winheight=9999
set winwidth=100

" Turn ruler on
set ruler

" Turn off toolbar
set go-=T

" Maintain two lines of context
set scrolloff=2

" Shortcut to rapidly toggle `set list`
noremap <Leader>i <E:setlocal list!<CR>

" Map toggle of line numbers
noremap <Leader>ln <Esc>:setlocal number!<CR>

" Map toggle of spell check
noremap <Leader>s <Esc>:setlocal spell!<CR>

" Enable language-dependent indenting
filetype plugin indent on

" Enable incremental searching
set incsearch

" Ignore case while searching unless there are caps
set ignorecase
set smartcase

" NERDTree key map
noremap <Leader>nt <Esc>:NERDTreeToggle<CR>

" CtrlP default to buffer search 
let g:ctrlp_cmd='CtrlPBuffer'
noremap <Leader>f <Esc>:CtrlP<CR>

" Enable 'in-column' up and down motion in INSERT mode on wrapped lines
imap <silent> <Up>   <C-o>gk
imap <silent> <Down> <C-o>gj

" Enable 'in-column' up and down motion on wrapped lines
map <silent> <Up>   gk
map <silent> <Down> gj

" Map shift up and down to page scrolling
map <S-Up>   <C-E>
map <S-Down> <C-Y>

" Auto-complete filenames to longest common string and list on second tab
set wildmode=longest,list

" Set default tex format to latex
let g:tex_flavor='latex'
let g:LatexBox_latexmk_options="-pvc -pdf"

" Set filetype to mail when extension is .mail
autocmd BufRead,BufNewFile *.mail setfiletype mail

" Add dictionaries and allow completion
au FileType * exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/".expand('<amatch>'))
set complete+=k

" Turn off underscore to arrow mapping in vim-r-plugin
let g:vimrplugin_underscore = 0

