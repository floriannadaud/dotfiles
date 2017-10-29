"filetype indent on
set term=xterm-256color
set background=dark
set hlsearch
set incsearch
set title
set nocompatible 
set number
syntax on
setlocal shiftwidth=2
setlocal tabstop=2
filetype off
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
:imap ;; <Esc>
:map ;; <Esc>

" If installed using git
set rtp+=~/.fzf

colorscheme solarized
"colorscheme mustang

command Gorun w | !go run %
nnoremap <F8> :!%:p

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Bundles pour puppet
Plugin 'godlygeek/tabular'
Plugin 'rodjek/vim-puppet'
Plugin 'nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
