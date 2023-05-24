#!/bin/bash
# Run script as root

# Stop Snapd Services
systemctl disable snapd.service
systemctl disable snapd.socket
systemctl disable snapd.seeded.service

# Remove Pre-Installed Snap Apps
snap remove --purge snap-store
snap remove --purge firefox

# Remove Snap Runtimes
snap remove --purge gtk-common-themes snapd-desktop-integration
snap remove --purge $(snap list | grep -oh "gnome\w*")
snap remove --purge $(snap list | grep -oh "core\w*")
snap remove --purge bare
snap remove --purge snapd

# Remove Snap
apt purge --autoremove snapd

# Unmount Snap Partition
umount /var/snap

# Remove remaining configuration
rm -rf ~/snap
rm -rf /snap
rm -rf /var/snap
rm -rf /var/lib/snapd
rm -rf /var/cache/snapd/

# Pin Snap as Forbidden
echo 'Package: snapd' >> /etc/apt/preferences.d/snapd.pref
echo 'Pin: release a=*' >> /etc/apt/preferences.d/snapd.pref
echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/snapd.pref
