#!/bin/bash
#
# Remove Installed Snaps
sudo snap remove --purge snap-store
sudo snap remove --purge *
sudo snap remove --purge core* snapd*
#
# Stop Snap Daemon
sudo systemctl stop snapd
#
# Remove Snap
sudo apt purge snapd
#
# Remove remaining configuration
rm -rf $HOME/snap
sudo rm -rf /var/cache/snapd/
#
# Pin Snap as Forbidden
echo 'Package: snapd' >> /etc/apt/preferences.d/snapd.pref
echo 'Pin: release a=*' >> /etc/apt/preferences.d/snapd.pref
echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/snapd.pref
#
