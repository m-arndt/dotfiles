#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

#Nerdfonts
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
(cd nerd-fonts; ./install.sh)
rm -rf nerd-fonts