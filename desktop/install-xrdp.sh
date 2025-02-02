#!/bin/bash

. /etc/os-release

if [ "$NAME" != "Ubuntu" ]; then
    echo "This script is for Ubuntu."
    exit
fi

# update repo
sudo apt-get update

# install xfce4
sudo apt-get -y install xfce4
sudo apt-get -y install xfce4-session

# install xrdp
sudo apt-get -y install xrdp xdg-utils

# add xrdp to ssl-cert
sudo adduser xrdp ssl-cert

# set xfce as a session
echo xfce4-session > ~/.xsession

# restart xrdp
sudo systemctl restart xrdp
