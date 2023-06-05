#!/bin/bash
# Install Ubuntu with ZFS

wget --https-only -O $HOME/.zshrc https://gitlab.com/kalilinux/packages/kali-defaults/-/raw/kali/master/etc/skel/.zshrc

apt install zsh zsh-autosuggestions zsh-syntax-highlighting
apt install zram-config

#apt install zfs-auto-snapshot
