#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo 'Error: No super-user authorization.'
  echo 'Type the command "sudo !!" to re-run this script as root.'
  exit 1
fi

# Make home directory accessible to owner only
chmod 700 /home/*

# Make sensitive directories accessible to owner only
chmod 700 /boot /usr/src /lib/modules /usr/lib/modules

# Disable printer search
systemctl disable cups

# Buff /etc/login.defs password encryption rounds value
sed -i.bak -e 's/^#*SHA_CRYPT_MIN_ROUNDS.*/SHA_CRYPT_MIN_ROUNDS 6000000/' /etc/login.defs

# Make /etc/login.defs UMASK value 27 or 77
#nano /etc/login.defs

# Set Unique Machine-ID to Generic Whonix-ID
echo "b08dfa6083e7567a1921a715000001fb" > /var/lib/dbus/machine-id
echo "b08dfa6083e7567a1921a715000001fb" > /etc/machine-id

# Harden Network Manager Settings
cp $(pwd)/conf/network_hardening.conf /etc/NetworkManager/conf.d/
nmcli general reload

# Minimize Loaded Functionality
cp $(pwd)/conf/blacklist_hardening.conf /etc/modprobe.d/

# Harden Kernel Settings
cp $(pwd)/conf/kernel_hardening.conf /etc/sysctl.d/
