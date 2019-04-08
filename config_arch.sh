#!/bin/bash

sudo pacman -Syu

git clone https://aur.archlinux.org/yay.git
(cd yay; makepkg -si)
rm -rf yay

sudo pacman -S tmux gvim zsh ttf-font-awesome

bash ./createessentiallinks.sh
bash ./installzsh.sh
bash ./install_tmux.sh
