#! /bin/bash 
#if pythin cant be linked 
sudo mkdir /usr/local/Frameworks
sudo chown -R $(whoami):admin /usr/local/Frameworks
brew link python
