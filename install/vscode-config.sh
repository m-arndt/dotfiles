#!/bin/bash
set -x

mkdir ~/.config/Code
mkdir ~/.config/Code/User

mkdir ~/.config/Code\ -\ OSS
mkdir ~/.config/Code/User\ -\ OSS

ln -v -b -s $DOTFILES_ROOT/data/all/home/username/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -v -b -s $DOTFILES_ROOT/data/all/home/username/.config/Code/User/settings.json ~/.config/Code\ -\ OSS/User/settings.json

#/home/michael/dotfiles/data/all/home/username/.config/Code/User/settings.json

cat $DOTFILES_ROOT/data/misc/vscode-extensions | while read p; do
  code --install-extension $p
done
