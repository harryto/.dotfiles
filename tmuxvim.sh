curl -fsSL https://gist.github.com/mislav/5189704/raw/tmux.conf \
  >> ~/.tmux.conf

curl -fsSL https://raw.github.com/mislav/dotfiles/1500cd2/bin/tmux-vim-select-pane \
  -o /usr/local/bin/tmux-vim-select-pane

chmod +x /usr/local/bin/tmux-vim-select-pane