#!/bin/bash

bash -c "./createessentiallinks.sh"

sudo apt install zsh zsh-antigen fonts-font-awesome

zsh -c 'exit'

SCRIPT=$(readlink -f $0)

ln -v -b -s $(dirname "$SCRIPT")/Config/.zshrc ~/.zshrc
ln -v -b -s $(dirname "$SCRIPT")/Config/antigen.zsh ~/antigen.zsh

ln -v -b -s $(dirname "$SCRIPT")/Config/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster-custom.zsh-theme ~/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster-custom.zsh-theme

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

zsh -c 'antigen reset'

