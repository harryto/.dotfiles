" Welcome to the Vim configuration file!
" again, not much, but it sets up basic functionality 

" set number, set number 
set number 

" this default color scheme 
set background=dark 

" for parenthesis 
set showmatch 

" syntax on means that functions are different colors and variables are 
" different colors 

colo koehler 
syntax on

" Vundle!

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" lets face it, we're just using defaults, so i'll keep this commented 
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" all plugins here 

" airline for the pretty line down there 
Plugin 'vim-airline/vim-airline'
" this is for airline pusing out of bounds of tmux: 
" not a good fix but its a fix 
let g:airline#extensions#whitespace#symbol = '!' 
let g:airline_section_z = '%l/%L'
" tabline, because i dont like the default tabline 
let g:airline#extensions#tabline#enabled = 1
" tabline, because i done like the default airline tabline 
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0 

" Plugin for fugitive 
" this is a git wrapper, should do stuffs easier with git straight from vim 
Plugin 'tpope/vim-fugitive'

" NERDCommenter 
" for commenting and well, since we're still young, documenting inside the
" code >:vvvvv 
Plugin 'scrooloose/nerdcommenter'

" plugin so that i can just jump around vim and tmux easily without having to
" do shit 
Plugin 'christoomey/vim-tmux-navigator'

" end of vundle 
call vundle#end()            " required
filetype plugin indent on    " required
