#! /bin/bash

clear

echo "linking  ls -s ~/dotfiles/.bashrc ~/.bashrc" 

ln -s ~/dotfiles/.bashrc ~/.bashrc 

echo "linking .tmux.conf"

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

echo "linking .vimrc"

ln -s ~/dotfiles/.vimrc ~/.vimrc

echo "installing xkeycaps and linking .xmodmap-darkroom"

sudo apt-get install xkeycaps
ln -s ~/dotfiles/.xmodmap-darkroom  ~/.xmodmap-`uname -n`  
