#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

#exec $(dirname "$SCRIPT")/createessentiallinks.sh

mkdir ~/.config/blocksi3
mkdir ~/.config/i3

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/i3/config ~/.config/i3/config
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/blocksi3/volume-pulseaudio.sh ~/.config/blocksi3/volume-pulseaudio.sh
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.i3blocks.conf ~/.i3blocks.conf

chmod +x ~/.config/blocksi3/volume-pulseaudio.sh

