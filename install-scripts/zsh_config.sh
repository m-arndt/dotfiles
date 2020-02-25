#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.zshrc ~/.zshrc

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.dir_colors ~/.dir_colors

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.p10k.zsh ~/.p10k.zsh

#$SCRIPT_DIR/fonts-nerd.sh
#$SCRIPT_DIR/fonts-powerline.sh
