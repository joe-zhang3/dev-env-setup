call plug#begin()
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
call plug#end()

" Set cursor shape under different mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7" "Insert mode
let &t_SR = "\<Esc>]50;CursorShape=2\x7" "Replace mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" "Normal mode

set tabstop=2
set shiftwidth=2
set expandtab
  
let mapleader=" "

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
let g:vim_markdown_folding_disabled = 1
set number relativenumber
set showmatch
set ignorecase
set hlsearch
set softtabstop=2
set expandtab
set shiftwidth=2
set clipboard+=unnamed
filetype plugin indent on
syntax on
inoremap jj <ESC>

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" easy-motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


