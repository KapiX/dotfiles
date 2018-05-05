set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'wikitopian/hardmode'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lumiliet/vim-twig'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'

call plug#end()

syntax on
set number
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set colorcolumn=80
set nobackup
set nowritebackup
set noswapfile
set fileencoding=utf-8

" remove highlight
nnoremap <Enter> :nohlsearch<return><esc>

" window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

let mapleader = ","
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>, :set relativenumber!<CR>
vnoremap < <gv
vnoremap > >gv

command WQ wq
command Wq wq
command W w
command Q q

let g:ctrlp_custom_ignore = '^vendor'
let g:airline_powerline_fonts = 1
let g:phpqa_messdetector_cmd='~/phpshit/phpmd.phar'

" HardMode settings
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" NERDTree settings
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
