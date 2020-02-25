#!/bin/bash
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOTFILES_ROOT=$(dirname "$SCRIP_DIR")

#Powerlinefonts
git clone https://github.com/powerline/fonts.git --depth=1
(cd fonts; ./install.sh)
rm -rf fonts