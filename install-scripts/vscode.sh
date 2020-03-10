#!/bin/bash
set -x

SCRIPT_DIR=$(dirname $(realpath "$0"))
DOTFILES_ROOT=$(dirname "$(dirname $(realpath "$0"))")

mkdir ~/.config/Code
mkdir ~/.config/Code/User

mkdir ~/.config/Code\ -\ OSS
mkdir ~/.config/Code/User\ -\ OSS

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/Code/User/settings.json ~/.config/Code\ -\ OSS/User/settings.json

/home/michael/dotfiles/config-files/all/home/username/.config/Code/User/settings.json

cat $SCRIPT_DIR/resources/vscode_extensions | while read p; do
  code --install-extension $p
done
