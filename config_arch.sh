#!/bin/bash

sudo pacman -Syu

git clone https://aur.archlinux.org/yay.git
(cd yay; makepkg -si)

sudo pacman -S tmux vim zsh ttf-font-awesome

bash ./createessentiallinks.sh
bash ./installzsh.sh
bash ./install_tmux.sh
