#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.vimrc ~/.vimrc

#rm -r ~/.vim
mkdir ~/.vim/
rm -rf ~/.vim/colors
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.vim/colors ~/.vim/colors

#vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
