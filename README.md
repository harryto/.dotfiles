## .Dotfiles

There's no place like `~`  
Welcome to Harry's dotfile repository, includes a basic tmux config file, vimrc with Vundle and some bash scripts

### Installing

Install script can be found in the bin file.
```
git clone https://github.com/harryto/.dotfiles.git
cd ~bin && ./install.sh
```
Include the .gitconfig.local file in your .gitconfig. Make sure to put this at the END of your gitconfig file because in order to allow any of the above configs to be overwritten
```gitconfig
# in .gitconfig
...
[include]
	path = ~/.gitconfig.local
```
