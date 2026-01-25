#! /bin/bash
set -e

echo -e 'preparing to move files\n'

mkdir -p ~/.config

sudo mkdir -p /root/.config

echo -e 'moving files\n'

mv .alacritty.toml .bash_aliases .bashrc .bash_functions .general-settings.txt themes.sh config-nvim.sh shortcuts.kksrc ~/

sudo cp -r nvim ranger fastfetch /root/.config/

mv nvim sway wofi i3status mpv ranger fastfetch ~/.config/

sudo mkdir -p /etc/X11/xorg.conf.d

sudo mv 00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf

sudo mv Courier\ Prime.ttf JMH\ Typewriter\ mono.ttf /usr/share/fonts/

sudo mv nftables.conf /etc/nftables.conf

echo -e 'enabling nftables with custom settings\n'

sudo nft -f /etc/nftables.conf

echo -e 'creating directories\n'

mkdir -p ~/{Projects/{personals,git},OutsidersFiles,Downloads,Unzip,Learn,Write,Backup,Pictures/{screenshots,lockscreen,wallpapers}}

echo -e 'setting up ssh\n'

ssh-keygen -t ed25519

chmod 400 ~/.ssh/id_ed25519

echo 'finishing up and cleaning'

cd .. && rm -rf kde-sway-arch

exit 0
