#!/bin/bash
 
# sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
# sudo pacman-key --lsign-key 3056513887B78AEB
# sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# echo -e '[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist' | sudo tee -a /etc/pacman.conf

sudo pacman -Sy --noconfirm --needed base-devel git wget yajl
cd /tmp && git clone https://aur.archlinux.org/package-query.git && cd package-query/ && makepkg -si && cd /tmp

git clone https://aur.archlinux.org/yay.git && cd yay/ && makepkg -si --noconfirm

echo -e '04_pacman executado' > 04_pacman.log

echo -e '\nPacman, Chaotic e Yay configurados...\n'
