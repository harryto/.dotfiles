#!/bin/bash

# install script for the dotfiles of Harry
# this looks ok now but wait till it gets out of hand at some 
# point in time 

# make sure vundle exists before installing 
if [ -e ~/.vim/bundle/Vundle.vim]
then 
	echo "found Vundle, therefore won't install vundle a second time cause that's dumb; "
else
	echo "\n\nNo Vundle found, installing vundle; \n\n"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	echo "\n\nNow running install on vim \\n" 
	vim +PluginInstall +qall
fi

# I think this goes the same for our tmux file 
if [ -f /usr/local/bin/tmux-vim-select-pane]
then 
	echo "found tmux, not installing"
else
	echo "going to copy tmux, vim smooth screen transitioning" 
	cp usrtmuxvim.sh /usr/local/bin/tmux-vim-select-pane
	chmod +x /usr/local/bin/tmux-vim-select-pane
fi
