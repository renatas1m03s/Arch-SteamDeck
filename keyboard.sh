#!/bin/bash

# echo nct6775 | sudo tee /etc/modules-load.d/nct6775.conf

echo "GTK_IM_MODULE=cedilla" | sudo tee -a /etc/environment
echo "QT_IM_MODULE=cedilla" | sudo tee -a /etc/environment

sudo sed -i /usr/share/X11/locale/en_US.UTF-8/Compose -e 's/ć/ç/g' -e 's/Ć/Ç/g'
