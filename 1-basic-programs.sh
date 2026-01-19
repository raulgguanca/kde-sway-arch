#! bin/bash
set -e

echo -e 'changing to root directory\n'

cd /root

echo -e 'preparing to install programs\n'

pacman -S intel-ucode networkmanager firefox discord code thunderbird wpa_supplicant wireless_tools netctl dialog fastfetch htop glances zip unzip numlockx base-devel iwd ntfs-3g dhcpcd picom alacritty pcmanfm krita gparted gnome-screenshot gnome-disk-utility alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pulseaudio-jack feh nodejs npm tmux xclip unrar connman ranger w3m locate p7zip meld tree rkhunter vlc mpv yt-dlp streamlink mariadb openssh libreoffice nftables tlp flameshot qt5-imageformats noto-fonts noto-fonts-cjk noto-fonts-emoji vlc-plugin-ffmpeg bluez blueman i3status sway swaybg swaylock swayidle xorg-xwayland wl-clipboard grim slurp wofi waybar mako brightnessctl plasma ddcutil featherpad nwg-look wlsunset pavucontrol wine man-db kamoso guvcview #vlc-plugins-all ttf-jigmo

echo -e 'enabling services\n'

systemctl enable dhcpcd

systemctl enable NetworkManager

systemctl enable nftables

systemctl enable tlp.service

#systemctl enable sddm

echo -e 'setting up ranger and fastfetch\n'

##Ranger
ranger --copy-config=all

##Fastfetch
fastfetch --gen-config

echo -e 'setting up energy behavior\n'

#power management and buttons
echo 'HandlePowerKey=ignore
HandleSuspendKey=ignore
HandleSuspendKeyLongPress=ignore
HandleHibernateKey=ignore
HandleHibernateKeyLongPress=ignore
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
HandleLidSwitchDocked=ignore' >> /etc/systemd/logind.conf

echo -e 'finishing up and cleaning\n'

cd / && mv kde-sway-arch /home/raul/

echo 'remember to change the custom port in nftables'

exit 0
