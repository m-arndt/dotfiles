#!/bin/bash

#Nerdfonts
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
(cd nerd-fonts; ./install.sh DejaVuSansMono)
(cd nerd-fonts; ./install.sh Hack)
rm -rf nerd-fonts
