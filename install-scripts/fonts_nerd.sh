#!/bin/bash

#Nerdfonts
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
(cd nerd-fonts; ./install.sh)
rm -rf nerd-fonts