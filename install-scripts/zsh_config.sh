#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.zshrc ~/.zshrc

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.dir_colors ~/.dir_colors

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.p10k.zsh ~/.p10k.zsh

#$SCRIPT_DIR/fonts-nerd.sh
#$SCRIPT_DIR/fonts-powerline.sh
