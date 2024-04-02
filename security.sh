#!/bin/sh

if [ $(id -u) -ne 0 ]; then
  echo 'Error: No super-user authorization.'
  echo 'Type the command "sudo !!" to re-run this script as root.'
  exit 1
fi

# Make home directory accessible to owner only
chmod 700 /home/*

# Make sensitive directories accessible to owner only (Restricting /boot could cause problems with automatic updates)
#chmod 700 /boot /usr/src /lib/modules /usr/lib/modules

# Set hostname to generic value (Skip if identification is desirable, such as in enterprise environments)
hostnamectl hostname "localhost"

# Disable printer search
systemctl disable cups

# Buff /etc/login.defs password encryption rounds value
sed -i.bak -e 's/^#*SHA_CRYPT_MIN_ROUNDS.*/SHA_CRYPT_MIN_ROUNDS 6000000/' /etc/login.defs

# Make /etc/login.defs UMASK value 27 or 77 (Could break functionality)
#nano /etc/login.defs

# Set Unique Machine-ID to Generic Whonix-ID (Should not cause problems, but a bootable snapshot before this is recommended)
echo "b08dfa6083e7567a1921a715000001fb" | tee /etc/machine-id

# Harden Chrony and use NTS instead of NTP
cp $(pwd)/conf/chrony_hardening.conf /etc/chrony.conf

# Harden DNS to use DNSSEC
cp $(pwd)/conf/dns_hardening.conf /etc/systemd/resolved.conf.d/

# Harden Network Manager Settings
cp $(pwd)/conf/network_hardening.conf /etc/NetworkManager/conf.d/
nmcli general reload

# Minimize Loaded Functionality
cp $(pwd)/conf/blacklist_hardening.conf /etc/modprobe.d/

# Harden Kernel Settings
cp $(pwd)/conf/kernel_hardening.conf /etc/sysctl.d/
