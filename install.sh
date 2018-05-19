#! /bin/bash

clear

sudo apt-get install vim tmux powerline
brew install vim tmux powerline

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#===================================================
#alias
#==================================================

# use config file when launching tmux
alias tmux="tmux -f ~/.tmux.conf"

#====================================================
#       link Dot Files
#====================================================
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

#====================================
# you complete me compiled component
#====================================
brew install cmake
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
#compile YCM
./install.py --racer-completer --omni-completer 
#
#
