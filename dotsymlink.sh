#!/bin/bash

# Script to make symlink into correct places. No deleting
# Just brute ln -s in the hopes that errors won't kill it

array=('bash_profile' 'bashrc' 'config' 'gitconfig' 'tmux.conf' 'vimrc' 'zshrc')  

for t in ${array[@]}; do
	cd ~/
	mv .$t .$t"_old"
	ln -s dotfiles/$t .$t 
done

# link tmuxstart into bin
    mkdir -p ~/bin
    ln -s ~/dotfiles/tmuxstart.sh ~/bin/tmuxstart.sh

# Remove vim bundles and then re-cole Vundle and then run Vundle plugininstall

    mkdir -p ~/.vim/bundle/
    mkdir -p ~/.vim/swapfiles/
    rm -Rf ~/.vim/bundle/Vundle.vim

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  vim +PluginInstall +qall!


