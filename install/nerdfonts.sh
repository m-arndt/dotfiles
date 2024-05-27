#!/bin/bash
set -x

#Nerdfonts
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
(
    cd nerd-fonts
    ./install.sh DejaVuSansMono
)
(
    cd nerd-fonts
    ./install.sh Hack
)
(
    cd nerd-fonts
    ./install.sh DroidSansMono
)
(
    cd nerd-fonts
    ./install.sh FiraCode
)
rm -rf nerd-fonts
