#!/bin/sh

# Script to make symlink into correct places. 
# No deleting
# Just brute ln -s in the hopes that erros won't kill it

array=("bash_profile" "bashrc" "config" "gitconfig" "tmux.conf" "vim" "vimrc" "zshrc")  

for t in ${array[@]}; do
	cd ~/
	mv .$t .$t"_old"
	ln -s dotfiles/$t .$t 
done

# Remove vim bundles and then re-cole Vundle and then run Vundle plugininstall

  rm -Rf ~/.vim/bundle/*

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  vim +PluginInstall +qall!
