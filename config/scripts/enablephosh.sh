#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
sudo systemctl enable phosh
sudo echo "CHASSIS=handset" >> /etc/machine-info
sudo mkdir /etc/phosh/
sudo cp /usr/share/phosh/phoc.ini /etc/phosh/
sudo echo "[output:DSI-1]
scale = 1" >> /etc/phosh
