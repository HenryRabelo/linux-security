#!/bin/bash
#
# Low Battery Warning from 20% to 30%
sed -i.bak -e 's/^PercentageLow.*/PercentageLow=15/' -e 's/^PercentageCritical.*/PercentageCritical=5/' -e 's/^PercentageAction.*/PercentageAction=3/' -e 's/^CriticalPowerAction.*/CriticalPowerAction=Hibernate/' /etc/UPower/UPower.conf
#
# GNOME Set Unix Style Keyboard Layout
gsettings set org.gnome.desktop.input-sources xkb-options "['altwin:swap_alt_win','ctrl:swapcaps']"
#
# GNOME More Shortcut Keys
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>f']"
gsettings set org.gnome.settings-daemon.plugins.media-keys email "['<Super>e']"
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "['<Super>c']"
#
# GNOME Simpler Window Management Controls
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Primary><Super>Up','<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Primary><Super>Down','<Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Page_Down','<Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Page_Up','<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>Page_Down','<Super><Shift>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>Page_Up','<Super><Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "['<Alt><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "['<Alt><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Alt><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Alt><Super>Left']"
#
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Primary><Super>Left']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Primary><Super>Right']"
#
