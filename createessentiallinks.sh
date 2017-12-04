#!/bin/bash

#ln -b -s /path/to/file /path/to/symlink

SCRIPT=$(readlink -f $0)

sudo apt install vim-gtk3 htop

ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.bashrc ~/.bashrc
ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.bash_aliases ~/.bash_aliases
ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.vimrc ~/.vimrc

rm ~/.vim
ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.vim ~/.vim
