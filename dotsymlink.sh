#!/bin/sh

# Script to make symlink into correct places. 
# No deleting
# Just brute ln -s in the hopes that erros won't kill it

array=("bash_profile" "bashrc" "config" "gitconfig" "tmux.conf" "vim" "vimrc" "zshrc")  

for t in ${array[@]}; do
	 ln -s ~/dotfiles/$t ~/.$t 
  done
