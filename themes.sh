#! /bin/bash
set -e

echo -e 'cloning git Orchis theme\n'

git clone https://github.com/vinceliuice/Orchis-theme

echo -e 'changing to git directory\n'

cd Orchis-theme

echo -e 'installing Orchis red compact theme\n'

./install.sh -t red --tweaks compact

echo -e 'cleaning\n'

cd .. && rm -rf Orchis-theme

echo -e 'cloning git Tela Circle theme\n'

git clone https://github.com/vinceliuice/Tela-circle-icon-theme

echo -e 'changing to git directory\n'

cd Tela-circle-icon-theme

echo -e 'installing Tela Circle red theme\n'

./install.sh -c red 

echo -e 'cleaning\n'

cd .. && rm -rf Tela-circle-icon-theme

echo 'finishing up and cleaning'

rm -rf themes.sh

exit 0
