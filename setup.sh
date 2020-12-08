#!/bin/bash
# Script for configuration of Manjaro Linux Gnome edition with I3 Window Manager for Lenovo Thinkpad T460s
# Notice - you can't run this script as superuser (sudo)
# You will be prompted about sudo password when the time comes

echo "Input your user name"
read user

echo "Creating configuration folder in $user home directory"

cd /home/$user
mkdir ConfigFiles
cd ./ConfigFiles

echo "Downloading git and base-devel"

sudo pacman -S base-devel

sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $user:$user ./yay-git

cd yay-git ; makepkg -si

echo "Updating your system and packages"

yay

echo "Installing I3 and necessary applications"

yay -S i3 rofi vim dmenu arandr feh xorg-xbacklight google-chrome vlc spotify mc tree lxappearance htop neofetch tmux flameshot xprop thunderbird

echo "Done, reboot now, log into I3 window manager and run i3config.sh"
echo "After logging into I3 DO NOT autocreate config file (press Esc on pop-up window)"

echo "Deleting leftovers"
cd /home/$user
sudo rm -R /home/$user/ConfigFiles
