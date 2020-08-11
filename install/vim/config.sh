#!/bin/bash

ln -v -b -s $DOTFILES_ROOT/data/all/home/username/.vimrc ~/.vimrc

#rm -r ~/.vim
mkdir ~/.vim/
rm -rf ~/.vim/colors
ln -v -b -s $DOTFILES_ROOT/data/all/home/username/.vim/colors ~/.vim/colors

#vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
