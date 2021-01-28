#!/bin/bash

# Script to make symlink into correct places. No deleting
# Just brute ln -s in the hopes that errors won't kill it

array=( 'bashrc' 'config' 'gitconfig' 'vimrc' 'tmux.conf' )

for t in ${array[@]}; do
	cd /home/ubuntu/
	mv .$t .$t"_old"
	ln -s workspace/dotfiles/$t .$t
done

# Remove vim bundles and then re-cole Vundle and then run Vundle plugininstall
    mkdir -p /home/ubuntu/workspace/.vim/bundle/
    mkdir -p /home/ubuntu/workspace/.vim/swapfiles/
    ln -s /home/ubuntu/workspace/.vim /home/ubuntu/.vim
    ln -Fs /home/ubuntu/dotfiles/vim_colors /home/ubuntu/.vim/colors
    rm -Rf /home/ubuntu/.vim/bundle/Vundle.vim

  git clone https://github.com/VundleVim/Vundle.vim.git /home/ubuntu/.vim/bundle/Vundle.vim

  vim +PluginClean +qall!
  vim +PluginInstall +qall!

sudo apt-get update
sleep 2
sudo apt-get -y install software-properties-common
sleep 2
sudo add-apt-repository ppa:lazygit-team/release
sleep 2
sudo apt-get -y install lazygit htop fzf neovim nodejs
