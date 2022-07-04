#!/bin/bash
# Set up a fresh Debian-based installation!
#
# @author   Daniel Barahona 2022


# Update & Upgrade
printf 'y' | sudo apt update
printf 'y' | sudo apt upgrade

# Install software
printf 'y' | sudo apt install vim
printf 'y' | sudo apt install tmux
printf 'y' | sudo apt install git
printf 'y' | sudo apt install ubuntu-mate-desktop
printf 'y' | sudo apt install gcc
printf 'y' | sudo apt install python3
printf 'y' | sudo apt install g++
printf 'y' | sudo apt install curl

# Vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# VSCode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Git setup
git config --global user.name "danibt656"
git config --global user.email "dbmartin656@gmail.com"

# Put dotfiles in home directory
cp ./vimrc ~/.vimrc
cp ./bashrc ~/.bashrc
cp ./tmux.conf ~/.tmux.conf

# Update & Upgrade (again)
printf 'y' | sudo apt update
printf 'y' | sudo apt upgrade


echo "The script has been successfully executed"
echo "Tools & config files have been installed"
