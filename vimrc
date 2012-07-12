" File ~/.vimrc

call pathogen#infect()
syntax on

" Set default color scheme
colors sorcerer

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
nmap <leader>l :set list!<CR>

" Enable file type plugin detection
filetype plugin on

" Enable language-dependent indenting
filetype plugin indent on

" Enable incremental searching
set incsearch

" Ignore case while searching unless there are caps
set ignorecase
set smartcase

" NERDTree key map
noremap <Leader>nt <Esc>:NERDTree<CR>

" CtrlP key map to buffer mode
noremap <C-b> <Esc>:CtrlPBuffer<CR>

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
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode -synctex=1 $*'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_ViewRule_pdf='Skim'

