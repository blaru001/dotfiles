#! /bin/bash

clear

sudo apt-get install vim tmux

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "linking  ls -s ~/dotfiles/.bashrc ~/.bashrc" 

ln -s ~/dotfiles/.bashrc ~/.bashrc 

echo "linking .tmux.conf"

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

echo "linking .vimrc"

ln -s ~/dotfiles/.vimrc ~/.vimrc

echo "installing xkeycaps and linking .xmodmap-darkroom"

sudo apt-get install xkeycaps
ln -s ~/dotfiles/.xmodmap-darkroom  ~/.xmodmap-`uname -n`  

echo "setup xfce4 hot keys"

ln -sf ~/dotfiles/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml 
