#!/bin/bash
# Script for configuration of Manjaro Linux Gnome edition with I3 Window Manager for Lenovo Thinkpad T460s
# Notice - you can't run this script as superuser (sudo)
# You will be prompted about sudo password when the time comes

echo "Input your user name"
read user

echo "Input your \"Pictures\" directory name"
read pictures

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

echo "Installing necessary applications"

yay -S vim google-chrome vlc spotify mc tree htop neofetch tmux thunderbird gwe lutris steam wine winetricks wine-mono wine_gecko discord 

echo "Copying configuration files and wallpapers"

cp ./i3config/lock_screen.png /home/$user/$pictures/lock_screen.png

unzip themes.zip
sudo cp -r ./themes/FossaCursors /usr/share/icons
sudo cp -r ./themes/Simply-White-Circles /usr/share/icons
sudo cp -r ./themes/Simply-Red-Circles /usr/share/icons
sudo cp -r ./themes/Simply_Circles_Dark_Envolved /usr/share/themes

echo "Do you want to install oh-my-zsh?"

read decision
case "decision" in
  "y")  yay -S zsh zsh-completions
        curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
        mkdir ~/GITS
        cd ~/GITS
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k;;
  *)
esac

echo "Deleting leftovers"
cd /home/$user
sudo rm -R /home/$user/ConfigFiles
