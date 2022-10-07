#!/bin/bash

# Script to make symlink into correct places. No deleting
# Just brute ln -s in the hopes that errors won't kill it

array=('bash_profile' 'bashrc' 'config/nvim' 'gitconfig' 'tmux.conf' 'vim' 'vimrc' 'zshrc')

for t in ${array[@]}; do
	cd ~/
	mv .$t .$t"_old"
	ln -s dotfiles/$t .$t
done

# link tmuxstart into bin
    mkdir -p ~/bin
    ln -s ~/dotfiles/tmuxstart.sh ~/bin/tmuxstart.sh
