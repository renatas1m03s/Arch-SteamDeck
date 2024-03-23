#!/bin/bash

sudo systemctl enable --now bluetooth

cp -v ./functions/* /home/renata/.config/fish/functions/

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
