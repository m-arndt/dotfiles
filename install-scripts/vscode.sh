#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

mkdir ~/.config/Code
mkdir ~/.config/Code/User

mkdir ~/.config/Code\ -\ OSS
mkdir ~/.config/Code/User\ -\ OSS

ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -v -b -s $DOTFILES_ROOT/config-files/all/home/username/.config/Code/User/settings.json ~/.config/Code\ -\ OSS/User/settings.json

/home/michael/dotfiles/config-files/all/home/username/.config/Code/User/settings.json

cat $SCRIPT_DIR/resources/vscode-extensions | while read p; do
  code --install-extension $p
done
