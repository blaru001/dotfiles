#! /bin/bash

clear



#===================================================
# mac specific configs
#==================================================

if [ $1 == '-m' ];then 
  echo "mac mode activated"

brew install vim tmux python
pip install --user powerline-status

brew install cmake
else 
  echo "not a mac"
fi

#====================================
# Linux section 
#====================================

if [ $1 == '-l' ];then 

  echo "Linux install"
sudo apt-get install vim tmux python python3 python-pip python3-pip

echo "installing xkeycaps"

echo "installing xkeycaps and linking .xmodmap-darkroom"
sudo apt-get install xkeycaps
ln -sf ~/dotfiles/.xmodmap-darkroom  ~/.xmodmap-`uname -n`  

echo "setup xfce4 hot keys"

ln -sf ~/dotfiles/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml 

else 
  echo "nothing to see here"
fi

#===================================================
# general install section
#==================================================

#git configuration 
#git config --global user.email "you@example.com"
#git config --global user.name "Your Name"

#install powerline 
sudo -H pip install --user powerline-status

# Vim Vundle 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



# TPM tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#===================================================
#alias
#==================================================

# use config file when launching tmux
alias tmux="tmux -f ~/.tmux.conf"

#====================================================
#       link Dot Files
#====================================================
echo "linking  ls -sf ~/dotfiles/.bashrc ~/.bashrc" 

ln -sf ~/dotfiles/.bashrc ~/.bashrc 

echo "linking .tmux.conf"

ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

echo "linking .vimrc"

ln -sf ~/dotfiles/.vimrc ~/.vimrc



#====================================
# you complete me compiled component
#====================================
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
#compile YCM
./install.py --racer-completer --omni-completer 
#
#
