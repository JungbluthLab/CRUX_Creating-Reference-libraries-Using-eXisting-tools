#!/usr/bin/env bash

# make 30G of swap
sudo dd if=/dev/zero of=/swapfile.img bs=1024 count=30M
sudo mkswap /swapfile.img

sudo chmod 600 /swapfile.img

# untested command
sudo echo "/swapfile.img swap swap sw 0 0" >> /etc/fstab

swapon /swapfile.img

#to check
cat /proc/swaps
