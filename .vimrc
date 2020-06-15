syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set incsearch
set relativenumber
set number
set termguicolors
let mapleader = " "

call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

set background=dark
autocmd vimenter * colorscheme gruvbox
autocmd VimEnter * NERDTree

set wildignore+=*/venv/*,*/node_modules/*,*/__pycache__/*,*.so,*.swp,*.zip     " MacOSX/Linux

nnoremap <c-S> :NERDTree<CR>
nnoremap <c-A> :NERDTreeClose<CR>

" mappings for navigating splits
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j

" map vertical and horizontal splits @ is space character
nnoremap <c-@>j <c-w>s
nnoremap <c-@>k <c-w>v

" YCM mappings
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
nnoremap <silent> <leader>dc :YcmCompleter GetDoc<CR>

" map split resizing
nnoremap <left> <c-w><
nnoremap <right> <c-w>>
nnoremap <Up> <c-w>-
nnoremap <Down> <c-w>+

" shortcut to edit .vimrc
nnoremap <c-E> :vsplit $MYVIMRC<CR>

" source vimrc
nnoremap <space>S :source ~/.vimrc<CR>

" ripgrep
nnoremap <c-p> :Rg<CR>

" git 
nnoremap <leader>gc :!git add -A<CR>:!git commit -m "
nnoremap <leader>gp :!git push<CR>
nnoremap <leader>gs :!git status<CR>

" quit window
nnoremap <leader>q :q<CR>

" copy to external clipboard
vnoremap <leader>e "+y
