#!/bin/bash
#
# Make home directory accessible to owner only:
sudo chmod 700 /home/*
#
# Disable printer search:
sudo systemctl disable cups
#
# Make /etc/login.defs UMASK value 27 or 77
#sudo nano /etc/login.defs
#
# Harden Network Manager Settings
sudo cp ./conf/network_hardening.conf /etc/NetworkManager/conf.d/
sudo nmcli general reload
#
# Harden Kernel Settings
sudo cp ./conf/kernel_hardening.conf /etc/modprobe.d/
#
