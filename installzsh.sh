#!/bin/bash

sudo apt install zsh zsh-antigen fonts-font-awesome

zsh -c 'exit'

SCRIPT=$(readlink -f $0)

ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.zshrc ~/.zshrc
ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/antigen.zsh ~/antigen.zsh

ln -v -b -s $(dirname "$SCRIPT")/ActualBackup/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster-custom.zsh-theme ~/.antigen/bundles/robbyrussell/oh-my-zsh/themes/agnoster-custom.zsh-theme
