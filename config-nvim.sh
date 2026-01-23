#! bin/bash
set -e

echo -e 'creating directories\n'

sudo mkdir -p /root/.config/nvim

echo -e 'copying files to root\n'

sudo cp -r ~/.config/nvim /root/.config/

echo 'finishing up and cleaning'

rm -r config-nvim.sh

exit 0
