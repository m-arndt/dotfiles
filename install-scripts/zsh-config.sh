#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.zshrc ~/.zshrc

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.dir_colors ~/.dir_colors

git clone https://github.com/powerline/fonts.git --depth=1
(cd fonts; ./install.sh)
rm -rf fonts