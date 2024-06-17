# Linux Security Configurations
[![Linux Badge](https://img.shields.io/badge/Made_for_Linux-black?logo=linux&logoColor=black&labelColor=white)](https://distrowatch.com/dwres.php?resource=popularity)
![Settings Badge](https://custom-icon-badges.demolab.com/badge/Security_Configs-firebrick?logo=shield&logoSource=feather&logoColor=firebrick&labelColor=white)

List of security configurations for Linux installations.

This is **not** an exhaustive listing of all the security configurations used at any given time, as more tunings are made depending on the installation.

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

[...]
