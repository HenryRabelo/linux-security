#!/bin/bash

# Add to the GRUB_CMDLINE_LINUX_DEFAULT line in /etc/grub/
# Reference: https://github.com/Kicksecure/security-misc/tree/master/etc/default/grub.d

# Enable Kernel Lockdown in Confidentiality Mode (Enforces Kernel Module Signing)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
lockdown=confidentiality"

# Prevent Logging During Boot (Needs 'kernel.printk' SysCtl)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
quiet loglevel=0"

# Disable DebugFS (Sensitive Information Exposure; Automatic in Lockdown Mode)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
debugfs=off"

# Enable Zeroing of Memory when Allocating and Freeing
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
init_on_alloc=1 init_on_free=1"

# Randomize Page Allocator Freelist
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
page_alloc.shuffle=1"

# Randomize Kernel Stack Offset
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
randomize_kstack_offset=on"

# Disable VSysCalls (Obsolete / Fixed Address)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
vsyscall=none"

# Disable Merging of Slabs of Similar Sizes
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
slab_nomerge"

# Distrust CPU for Initial Entropy at Boot (Disable RDRAND)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
random.trust_cpu=off"

# Distrust Bootloader for Initial Entropy at Boot
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
random.trust_bootloader=off"

# Enable IOMMU for all x86 CPU
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
intel_iommu=on amd_iommu=on"

# Enable Strict Enforcement of IOMMU TLB Invalidation
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
iommu.passthrough=0 iommu.strict=1"

# Disable BusMaster During Early Boot (IOMMU Complement)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
efi=disable_early_pci_dma"

# Enable Kernel Page Table Isolation (Meltdown Mitigation / Improved KASLR)
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX \
pti=on"

echo $GRUB_CMDLINE_LINUX
