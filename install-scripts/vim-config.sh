#!/bin/bash

#ln -b -s /path/to/file /path/to/symlink

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

ln -v -b -s $DOTFILES_ROOT/Config/.vimrc ~/.vimrc

rm -r ~/.vim
ln -v -b -s $DOTFILES_ROOT/Config/.vim ~/.vim
