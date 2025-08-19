#! /bin/bash

git clone https://github.com/vinceliuice/Orchis-theme
cd Orchis-theme
./install.sh -t red --tweaks compact
cd .. && rm -rf Orchis-theme

git clone https://github.com/vinceliuice/Tela-circle-icon-theme
cd Tela-circle-icon-theme
./install.sh -c red 
cd .. && rm -rf Tela-circle-icon-theme

rm -rf themes.sh

exit 0
