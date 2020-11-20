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
set tabstop=2
set expandtab
set shiftwidth=2
" setlocal tabstop=2
filetype on
filetype plugin on
filetype indent on

" If installed using git
set rtp+=~/.fzf

colorscheme solarized

" transparend background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi LineNr guibg=NONE ctermbg=NONE

command Gorun w | !go run %
nnoremap <F5> "=strftime("%F")<CR>P
inoremap <F5> <C-R>=strftime("%F")<CR>
nnoremap <F8> :!%:p
vnoremap <silent> <F1> :w !xsel -b<Enter>
