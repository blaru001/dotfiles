#! /bin/bash

clear

echo "linking  ls -s ~/dotfiles/.bashrc ~/.bashrc" 

ln -s ~/dotfiles/.bashrc ~/.bashrc 

echo "linking .tmux.conf"

ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

echo "linking .vimrc"

ln -s ~/dotfiles/.vimrc ~/.vimrc

echo "linking .xmodmap-darkroom"

ln -s ~/dotfiles/.xmodmap-darkroom  ~/.xmodmap-darkroom  
