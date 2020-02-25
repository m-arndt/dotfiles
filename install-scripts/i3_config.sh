#!/bin/bash

#ln -b -s /path/to/file /path/to/symlink

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

#exec $(dirname "$SCRIPT")/createessentiallinks.sh

mkdir ~/.config/blocksi3
mkdir ~/.config/i3

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/i3/config ~/.config/i3/config
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/blocksi3/volume-pulseaudio.sh ~/.config/blocksi3/volume-pulseaudio.sh
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.i3blocks.conf ~/.i3blocks.conf

chmod +x ~/.config/blocksi3/volume-pulseaudio.sh

