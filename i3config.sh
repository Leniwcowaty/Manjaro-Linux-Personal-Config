#!/bin/bash
# Script for configuration of Manjaro Linux Gnome edition with I3 Window Manager for Lenovo Thinkpad T460s
# Notice - you can't run this script as superuser (sudo)
# You will be prompted about sudo password when the time comes

echo "Input your user name"
read user

echo "Input your \"Pictures\" directory name"
read pictures

echo "Copying configuration files and wallpapers"

mkdir /home/$user/.config/i3status

cp ./i3config/i3config /home/$user/.config/i3/config
cp ./i3config/i3statusconfig /home/$user/.config/i3status/config
cp ./i3config/wallpaper.png /home/$user/$pictures/wallpaper.png
cp ./i3config/lock_screen.png /home/$user/$pictures/lock_screen.png

unzip themes.zip
cp ./themes/FossaCursors /usr/share/icons
cp ./themes/Simply-White-Circles /usr/share/icons
cp ./themes/Simply_Circles_Dark_Envolved /usr/share/themes

echo "Done. Your Mod key is Win key. Restart your i3 session with Alt+Shift+R"
echo "Do you want to see most important custom shortcuts? [Y/N]"

read decision

case "$decision" in
  "y")
      echo "Win + Shift + H - open I3 user guide"
      echo "Win + Shift + X - lock your screen"
      echo "Win + Shift + Delete - shutdown now"
      echo "Win + Space - rofi (app manager)"
      echo "It's best to reboot your computer, or at least log out and back in (Win + Shift + E)";;
  "Y")
      echo "Win + Shift + H - open I3 user guide"
      echo "Win + Shift + X - lock your screen"
      echo "Win + Shift + Delete - shutdown now"
      echo "Win + Space - rofi (app manager)"
      echo "It's best to reboot your computer, or at least log out and back in (Win + Shift + E)";;
   *)
      echo "Enjoy your i3!"
      echo "It's best to reboot your computer, or at least log out and back in (Win + Shift + E)"
esac

echo "exec_always feh --no-startup-id --bg-scale \"/home/$user/$pictures/wallpaper.png\"" >> /home/$user/.config/i3/config
echo "bindsym \$mod+Shift+x exec i3lock --image \"/home/$user/$pictures/lock_screen.png\"" >> /home/$user/.config/i3/config

echo "Also FossaCursors, Simply-White-Circles and Simply_Circles_Dark_Envolved were installed."
echo "Do you want to open lxappearance to change your theme, icons and cursors? [Y/N]"

read decision2

case "$decision2" in
  "y")
      sudo lxappearance;;
  "Y")
      sudo lxappearance;;
   *)
esac

sudo rm -R /home/$user/Manjaro-Linux-Personal-Config
