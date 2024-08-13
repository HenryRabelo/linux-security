<div align="center">

# Linux Security Configurations
### A list of security configurations for Linux installations.
[![Linux Badge](https://img.shields.io/badge/Made_for_Linux-black?logo=linux&logoColor=black&labelColor=white)](https://distrowatch.com/dwres.php?resource=popularity)
![Settings Badge](https://custom-icon-badges.demolab.com/badge/Security_Configs-firebrick?logo=shield&logoSource=feather&logoColor=firebrick&labelColor=white)
#

[![Intro Badge](https://img.shields.io/badge/Intro-151515)](#introduction) <sup> **•** </sup>
[![Intro Badge](https://img.shields.io/badge/Run_it-151515)](#how-to-run-it) <sup> **•** </sup>
[![Intro Badge](https://img.shields.io/badge/Use_it-151515)](#how-to-use-it) <sup> **•** </sup>
[![Intro Badge](https://img.shields.io/badge/About_Security-151515)](#about-security)

</div>

### Introduction
This is a personal repository of shell scripts and configuration files for various Linux installations, which harden and up various aspects of the security for those systems. This repository will include scripts for system hardening & for other tools which warrant it.

This is **not** an exhaustive listing of all the security configurations used at any given time, as more tunings are made depending on the installation.

### How to Run it
Simply give execution permissions & run the shell script with the select configuration, located at the root directory of the repository:

```sh
cd linux-security

chmod +x $(pwd)/security.sh
$(pwd)/security.sh
```

### How to Use it
Run the shell script that sets the desired configuration and reboot the computer after a successful run. Always vet the commands run by shell scripts downloaded from the internet and non-official repositories before running them.

The scripts are meant to be set-and-forget, and as such minimal interaction is necessary.

## About Security
### Sources
Security information was gathered from a range of sources, mainly:
- Kicksecure Security and GrapheneOS Infrastructure Repositories; Wiki and User Forums:
  - [![Secureblue Badge](https://custom-icon-badges.demolab.com/badge/Secureblue_|_Config-51A2DA?logo=lock&logoColor=51A2DA&labelColor=white)](https://github.com/secureblue/secureblue/tree/live/config/files/usr/etc)
  - [![Kicksecure Badge](https://custom-icon-badges.demolab.com/badge/Kicksecure_|_Security_Misc-blue?logo=lock&logoColor=blue&labelColor=white)](https://github.com/Kicksecure/security-misc)
  - [![GrapheneOS Badge](https://img.shields.io/badge/GrapheneOS_|_Infrastructure-0053A3?logo=grapheneos&logoColor=0053A3&labelColor=white)](https://github.com/GrapheneOS/infrastructure)

- Privacy Guides' and PrivSec Hardening Guides (Madaidan's Insecurities referenced, but it is outdated):
  - [![Privacy Guides Badge](https://custom-icon-badges.demolab.com/badge/Privacy_Guides_|_Linux_Hardening-goldenrod?logo=shield-lock&logoColor=goldenrod&labelColor=white)](https://blog.privacyguides.org/2022/04/22/linux-system-hardening/)
  - [![PrivSec Badge](https://custom-icon-badges.demolab.com/badge/PrivSec_|_Desktop_Linux_Hardening-black?logo=lock&logoColor=black&labelColor=white)](https://privsec.dev/posts/linux/desktop-linux-hardening/)

- Arch Linux Wiki Security Section
  - [![Arch Wiki Badge](https://img.shields.io/badge/Arch_Wiki_|_Security-1793D1?logo=archlinux&labelColor=white)](https://wiki.archlinux.org/title/security)

### Guiding Principles
Rapidly updating OS with Secure Boot support and large backing, but hardened against breakage, which means either:
- BTRFS root, with snapper and grub2-btrfs packages installed
- Immutable Operating Systems, with rapid updating model

Heavy referencing of ChromeOS' design decisions was made in order to choose hardening flags.

### Security Additions
- Kernel Lockdown in Confidentiality Mode (_lockdown=confidentiality_)
  - Disables **kexec**, **bpf**, **debugfs**, enforces Kernel Module signing with Secure Boot.

[...] (More to be written in the future)
##

<div align="center">

[![Back to the Top Badge](https://custom-icon-badges.demolab.com/badge/Back_to_the_Top-151515?logo=chevron-up)](#linux-containers-dockerfiles)

</div>
