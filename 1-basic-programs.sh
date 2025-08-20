#! bin/bash
##provide the user name before running

pacman -S intel-ucode networkmanager firefox discord code thunderbird wpa_supplicant wireless_tools netctl dialog fastfetch htop glances zip unzip numlockx base-devel iwd ntfs-3g dhcpcd picom alacritty pcmanfm leafpad krita gparted gnome-screenshot gnome-disk-utility cheese alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pulseaudio-jack feh nodejs npm tmux xclip unrar connman ranger w3m locate p7zip meld tree rkhunter vlc mpv yt-dlp streamlink mariadb openssh libreoffice nftables tlp flameshot qt5-imageformats noto-fonts noto-fonts-cjk noto-fonts-emoji vlc-plugin-ffmpeg bluez blueman sway swaybg swaylock swayidle xorg-xwayland wl-clipboard grim slurp wofi waybar mako brightnessctl plasma ddcutil #vlc-plugins-all ttf-jigmo

systemctl enable dhcpcd

systemctl enable NetworkManager

systemctl enable nftables

systemctl enable tlp.service

systemctl enable sddm

##Ranger
ranger --copy-config=all

##Fastfetch
fastfetch --gen-config

exit 0
