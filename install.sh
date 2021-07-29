#!/bin/sh
PACKAGES="broadcom-sta-dkms ubuntustudio-installer"


#Installing Broadcom drivers for BCM4321 and ubuntustudio installer
apt update -y
apt upgrade -y
apt install -y $PACKAGES

# Fix "failed to set MOKlislRT" error
cd /boot/efi/EFI/ubuntu/
cp grubx64.efi shimx64.efi
reboot
