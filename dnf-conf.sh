#!/bin/bash
#
# Enable Fastest Mirror and Delta Upgrades
cp /etc/dnf/dnf.conf ./
#
echo 'fastestmirror=True' >> ./dnf.conf
echo 'deltarpm=True' >> ./dnf.conf
#
mv ./dnf.conf /etc/dnf/
#
