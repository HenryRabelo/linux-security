#!/bin/bash
# GNOME Preferences

# Low Battery Warning from 20% to 30%
sudo sed -i.bak -e 's/^PercentageLow.*/PercentageLow=30/' -e 's/^PercentageCritical.*/PercentageCritical=10/' -e 's/^PercentageAction.*/PercentageAction=5/' /etc/UPower/UPower.conf

# Set Unix Style Keyboard Layout
gsettings set org.gnome.desktop.input-sources xkb-options "['altwin:swap_lalt_lwin','ctrl:swapcaps']"

# Disable Automount
gsettings set org.gnome.desktop.media-handling automount false
gsettings set org.gnome.desktop.media-handling automount-open false 

# Nautilus Configuration
gsettings set org.gtk.Settings.FileChooser sort-directories-first 'true'
gsettings set org.gnome.nautilus.preferences show-create-link 'true'

# Evolution Configuration
gsettings set org.gnome.evolution.shell buttons-style 'icons'
gsettings set org.gnome.evolution.shell menubar-visible 'true'
gsettings set org.gnome.evolution.shell statusbar-visible 'false'
gsettings set org.gnome.evolution.mail show-to-do-bar 'false'
gsettings set org.gnome.evolution.mail composer-show-cc 'false'
gsettings set org.gnome.evolution.mail composer-send-html 'true'
gsettings set org.gnome.evolution.mail composer-inherit-theme-colors 'false'
gsettings set org.gnome.evolution.mail composer-outlook-filenames 'true'
gsettings set org.gnome.evolution.mail composer-sign-reply-if-signed 'true'

# Optional GNOME Settings
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click 'true'
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll 'true'
#gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'interactive'
#gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing 'rgba'
#gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'

# GNOME More Shortcut Keys
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>f']"
gsettings set org.gnome.settings-daemon.plugins.media-keys email "['<Super>e']"
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "['<Super>c']"

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
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Primary><Super>Left']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Primary><Super>Right']"
