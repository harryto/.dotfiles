" Welcome to the Vim configuration file!
" Not much, but it sets up basic functionality 

" set utf 8
set encoding=utf8

" set number, set number
set number

" this default color scheme
set background=dark

" for parenthesis 
set showmatch 

" for tabs 
set tabstop=4
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

" Disabled nerdtree in favor of ctrlp 

" Nerdtree 
""Plugin 'scrooloose/nerdtree'

" There are some tweaks to nerdtree 
" the expand/collapse arrows are missing from the dejavu nerd fonts on my
" computer, so we will be using different icons instead

""let g:NERDTreeDirArrowExpandable = '+'
""let g:NERDTreeDirArrowCollapsible = '-'
""let g:NERDTreeQuitOnOpen = 1

" Some old code that became irrelevant
"
" Close the tree if its the only window left 
""autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" replaced nerdtree toggle with key binding 
""map <C-n> :NERDTreeToggle<CR>

" If no file specified when vim is opened then open nerdtree 
""autocmd StdinReadPre * let s:std_in=1
""autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Plugin for CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

" Nerdtree's old shortcut, now ctrlp because i use <c-p> for autocomplete
let g:ctrlp_map = '<c-n>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = [ 'line', 'dir'] 

" airline for the pretty line down there 
Plugin 'vim-airline/vim-airline'
" this is for airline pusing out of bounds of tmux: 
" not a good fix but its a fix 
let g:airline#extensions#whitespace#symbol = '!' 
let g:airline_section_z = '%l/%L'
" tabline, because i dont like the default tabline 
let g:airline#extensions#tabline#enabled = 1
" tabline, because i done like the default airline tabline 
let g:airline#extensions#tabline#left_sep       = '|'
let g:airline#extensions#tabline#left_alt_sep   = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0

" Plugin for fugitive 
" this is a git wrapper, should do stuffs easier with git straight from vim 
Plugin 'tpope/vim-fugitive'

" Plugin for Dev Icons 
" Note: htis should be load behind any plugins that shows on the interface
" the thing that makes the entire thing look cool and stuffs 
Plugin 'ryanoasis/vim-devicons'

let g:airline_powerline_fonts = 1

" Tabular to make thing look in place and not all over the place
Plugin 'godlygeek/tabular'

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
