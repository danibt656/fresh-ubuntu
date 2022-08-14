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
printf 'y' | sudo apt install curl
printf 'y' | sudo apt install dconf
printf 'y' | sudo apt install gcc
printf 'y' | sudo apt install g++
printf 'y' | sudo apt install python3 python3-pip
printf 'y' | sudo apt install rustc cargo
printf 'y' | sudo apt install i3 i3status i3lock feh

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

# Install Yaru theme
sudo mv ./Yaru/Yaru-* /usr/share/themes
sudo mv ./Yaru/Yaru_Icons /usr/share/icons

# Load MATE Terminal profiles & config
dconf load /org/mate/terminal/ < ./mate/mate_terminal_bkp

# Git setup
git config --global user.name "danibt656"
git config --global user.email "dbmartin656@gmail.com"

# Put dotfiles in home directory
cp ./vimrc ~/.vimrc
cp ./bashrc ~/.bashrc
cp ./tmux.conf ~/.tmux.conf
cp ./settings.json ~/.config/Code/User/settings.json

# i3wm config files
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
cp ./i3/i3config ~/.config/i3/config
cp ./i3/i3statusconfig ~/.config/i3status/config

# Update & Upgrade (again)
printf 'y' | sudo apt update
printf 'y' | sudo apt upgrade


echo ""
echo "-------------------------------------------"
echo " The script has been successfully executed"
echo " Tools & config files have been installed!"
echo "-------------------------------------------"
echo ""

