#!/bin/bash

#Powerlinefonts
git clone https://github.com/powerline/fonts.git --depth=1
(cd fonts; ./install.sh)
rm -rf fonts