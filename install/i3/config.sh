#!/bin/bash

mkdir ~/.config/blocksi3
mkdir ~/.config/i3

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/i3/config ~/.config/i3/config
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/blocksi3/volume-pulseaudio.sh ~/.config/blocksi3/volume-pulseaudio.sh
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.i3blocks.conf ~/.i3blocks.conf

chmod +x ~/.config/blocksi3/volume-pulseaudio.sh

