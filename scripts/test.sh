#!/bin/bash

set -ev

sudo cat /etc/apt/sources.list
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb http://deb.debian.org/debian bookworm-backports main contrib non-free" > sources.list
sudo cp sources.list /etc/apt/sources.list
sudo cat /etc/apt/sources.list
sudo ls -la /etc/apt/sources.list.d
sudo rm -rf /etc/apt/sources.list.d/*
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9 6ED0E7B82643E131
sudo apt-get update
openssl version
sudo git config --global --add http.sslVersion tlsv1.2
