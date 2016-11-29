set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'shime/vim-livedown'
call vundle#end()

syntax on
set number
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set cursorline
set showmatch
set splitbelow
set splitright

let python_highlight_all = 1

imap jj <ESC>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on
filetype plugin on
execute pathogen#infect()
call pathogen#helptags()
let NERDTreeWinSize = 40 
set runtimepath^=~/.vim/bundle/ctrlp.vim

func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu

com! WP call WordProcessorMode()

set nobackup
set noswapfile

