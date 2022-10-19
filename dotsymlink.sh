#!/bin/bash

# Script to make symlink into correct places. No deleting
# Just brute ln -s in the hopes that errors won't kill it

array=('bash_profile' 'bashrc' 'gitconfig' 'tmux.conf' 'vim' 'vimrc' 'zshrc')

for t in ${array[@]}; do
	cd ~/
        rm -Rf .$t"_old"
	mv .$t .$t"_old"
	ln -s dotfiles/$t .$t
done
# same for nvim dir in config; should refactor to handle nested dirs
rm -Rf ~/.config/nvim_old
mv ~/.config/nvim ~/.config/nvim_old 
ln -fs ~/dotfiles/config/nvim ~/.config/nvim

# link tmuxstart into bin
    mkdir -p ~/bin
    ln -fs ~/dotfiles/tmuxstart.sh ~/bin/tmuxstart.sh
