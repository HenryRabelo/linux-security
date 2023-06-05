#!/bin/bash
# Install Ubuntu with ZFS

# Set ZSH Configurations
wget --https-only -O $HOME/.zshrc https://gitlab.com/kalilinux/packages/kali-defaults/-/raw/kali/master/etc/skel/.zshrc
cat $HOME/.bash_history >> $HOME/.zsh_history

# Simplify ZSH PROMPT
echo "PROMPT=$'${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}%B%F{%(#.red.green)}%n@%m%b%F{%(#.blue.cyan)}-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.cyan)}]%B%(#.%F{red}#.%b%F{reset}%%) '" >> $HOME/.zshrc

# ZSH and ZSH Plugins
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting

# ZFS Auto Snapshot for Ubuntu and ZRAM Configuration
#sudo apt install zfs-auto-snapshot
sudo apt install zram-config

# Change Login Shell for User
chsh --shell /bin/zsh $USER
