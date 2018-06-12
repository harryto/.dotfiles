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

" show invisibles 
set list
set listchars=tab:›\ ,eol:¬,trail:∙	

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
colorscheme default
syntax on

" Disable auto commenting for all files, if you want to change this just
" change *

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

Plugin 'haya14busa/incsearch.vim'
set hlsearch
map / <Plug>(incsearch-forward)
let g:incsearch#auto_nohlsearch = 1

Plugin 'junegunn/limelight.vim'
let g:limelight_conceal_ctermfg = 'DarkGray'
map <leader>l <Plug>(Limelight)
autocmd VimEnter * Limelight
""let g:limelight_conceal_ctermfg = 240

" Conoline Plugin
Plugin 'miyakogi/conoline.vim'
"let g:conoline_color_normal_light = 'ctermbg=grey ctermfg=white'
"let g:conoline_use_colorscheme_default_normal=1

" Plugin for text alignment
Plugin 'junegunn/vim-easy-align'
nmap ga <Plug>(EasyAlign)

" Plugin for CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

" Nerdtree's old shortcut, now ctrlp because i use <c-p> for autocomplete
let g:ctrlp_map        = '<c-n>'
let g:ctrlp_cmd        = 'CtrlPLastMode'
let g:ctrlp_extensions = [ 'line', 'dir']

" airline for the pretty line down there
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" this is for airline pusing out of bounds of tmux:
" not a good fix but its a fix
let g:airline#extensions#whitespace#symbol      = '!'
let g:airline_section_z                         = '%l/%L'
" tabline, because i dont like the default tabline 
let g:airline#extensions#tabline#enabled        = 1
" tabline, because i done like the default airline tabline 
let g:airline#extensions#tabline#left_sep       = ''
let g:airline#extensions#tabline#left_alt_sep   = ''
let g:airline#extensions#tabline#buffer_nr_show = 0
" theme
let g:airline_theme                             = 'raven'

" Plugin for the tmuxline
Plugin 'edkolev/tmuxline.vim'

" Plugin for Dev Icons 
" Note: htis should be load behind any plugins that shows on the interface
" the thing that makes the entire thing look cool and stuffs 
Plugin 'ryanoasis/vim-devicons'

let g:airline_powerline_fonts = 1

" NERDCommenter 
" for commenting and well, since we're still young, documenting inside the
" code >:vvvvv 
Plugin 'scrooloose/nerdcommenter'

" plugin so that i can just jump around vim and tmux easily without having to
" do shit 
Plugin 'christoomey/vim-tmux-navigator'

" plugin for goyo, the thing that focuses your code so you don't always have
" to look at the corners of the screen 
Plugin 'junegunn/goyo.vim'
let g:goyo_width = 120
function! s:goyo_enter()
	let b:quitting = 0
    let b:quitting_bang = 0
	autocmd QuitPre <buffer> let b:quitting = 1
    cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    	if b:quitting_bang
      		qa!
        else
            qa
        endif
    endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

" Plugin(s) for reading md files
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" end of vundle 
call vundle#end()            " required
filetype plugin indent on    " required
