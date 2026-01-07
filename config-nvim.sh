#! bin/bash
set -e

mkdir -p ~/.vim/plugged

sudo mkdir -p /root/.config/nvim

sudo mkdir -p /root/.vim/plugged

sudo cp ~/.config/nvim/init.vim /root/.config/nvim/

sudo cp ~/.config/nvim/coc-settings.json /root/.config/nvim/

#https://github.com/junegunn/vim-plug

sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

rm -r config-nvim.sh

exit 0
