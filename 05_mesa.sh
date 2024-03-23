#!/bin/bash

sudo pacman -Sy --noconfirm archlinux-keyring

sudo pacman -Sy --noconfirm mesa lib32-mesa xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon
sudo pacman -Sy --noconfirm libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau

