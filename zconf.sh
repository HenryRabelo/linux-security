#!/bin/bash

####

## ZSH Configuration ##

# ZSH and Plugins
apt install zsh zsh-autosuggestions zsh-syntax-highlighting

# Change Login Shell for Users
chsh --shell /bin/zsh $USER
#chsh --shell /bin/zsh root

# Change Shell System-Wide (May cause instability)
#ln -s /bin/zsh /usr/local/bin/sh #Ensures there's a sh available in root's $PATH
#apt remove --allow-remove-essential bash
#apt remove --allow-remove-essential dash
#rm /bin/sh
#ln -s /bin/zsh /bin/sh #Recreates sh link
#rm /usr/local/bin/sh #Removes temporary sh link
#rm $HOME/.bash*

####

## ZSH Profiles ##

# Set ZSH Configurations
wget --https-only --no-hsts -O $HOME/.zshrc https://gitlab.com/kalilinux/packages/kali-defaults/-/raw/kali/master/etc/skel/.zshrc
wget --https-only --no-hsts -O $HOME/.zprofile https://src.fedoraproject.org/rpms/zsh/raw/rawhide/f/dotzprofile
cat $HOME/.bash_history $HOME/.zsh_history > $HOME/.zsh_history

# Familiarize Shell Prompt
echo "PROMPT='\${debian_chroot:+(\$debian_chroot)}\${VIRTUAL_ENV:+(\$(basename \$VIRTUAL_ENV))}%B%F{%(#.red.green)}%n@%m%b%F{%(#.green.cyan)}-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.green.cyan)}]%(#.%F{red}#%F{reset}.%F{reset}%%) '" >> $HOME/.zshrc

# Normalize permissions
chown $USER $HOME/.z*

####

## Ubuntu with ZFS ##

# ZFS Auto Snapshot for Ubuntu / ZRAM Configuration
#apt install zsys
apt install zram-config

# Install Chrony for more configurable time sync
apt install chrony

# Install more AppArmor profiles
apt install apparmor-profiles apparmor-profiles-extra

# Enable APT SecComp Sandbox
echo 'APT::Sandbox::Seccomp "true";' > /etc/apt/apt.conf.d/40sandbox

# Enable Uncomplicated Firewall / allow GSConnect Port
ufw enable
#ufw allow 1714:1764/udp

####
