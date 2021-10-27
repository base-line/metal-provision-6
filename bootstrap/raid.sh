#!/usr/bin/env bash

# create raid 6 out of 12 HDD disks
mdadm --create --verbose /dev/md0 --level=6 --raid-devices=12 $(lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT | egrep -v 'sda|nvme|G|NAME' | awk '{print $1}' | sed -e 's#^#/dev/#' | tr '\n' ' ')
# create filesystem
mkfs.ext4 -F /dev/md0
# create a mount point
mkdir -p /data
# mount the filesystem
mount /dev/md0 /data
# save the array layout
mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
# update initramfs so that raid will be available during the eralier boot process
update-initramfs -u
# add new FS to automatically mount at boot
echo '/dev/md0 /data ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab