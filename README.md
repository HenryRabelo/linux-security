# Linux Customizations
[![Linux Badge](https://img.shields.io/badge/Made_for_Linux-FCC624?logo=linux&logoColor=black&labelColor=white)](https://distrowatch.com/dwres.php?resource=popularity)

List of customizations some installations may benefit from.
Not every install utilizes all of the uploaded preferences at one given time.

## About Security
### Sources
Security information was gathered from a range of sources, mainly:
- Kicksecure Security and GrapheneOS Infrastructure Repositories; Wiki and User Forums:
  - https://github.com/Kicksecure/security-misc
  - https://github.com/GrapheneOS/infrastructure
-  Privacy Guides' and PrivSec Hardening Guides (Madaidan's Insecurities referenced, but it is outdated):
  - https://blog.privacyguides.org/2022/04/22/linux-system-hardening/
  - https://privsec.dev/posts/linux/desktop-linux-hardening/
- Arch Linux Wiki Security Section
  - https://wiki.archlinux.org/title/security

### Guiding Principles
Rapidly updating OS with Secure Boot support and large backing, but hardened against breakage, which means either:
- BTRFS root, with snapper and grub2-btrfs packages installed
- Immutable Operating Systems, with rapid updating model

Heavy referencing of ChromeOS' design decisions was made in order to choose hardening flags.

### Security Additions
- Kernel Lockdown in Confidentiality Mode (_lockdown=confidentiality_)
  - Disables **kexec**, **bpf**, **debugfs**, enforces Kernel Module signing with Secure Boot.

[...]
