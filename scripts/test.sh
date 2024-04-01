#!/bin/bash

set -ev

echo "deb http://deb.debian.org/debian bookworm-backports main contrib non-free" > sources.list
sudo cp sources.list /etc/apt/sources.list
sudo cat /etc/apt/sources.list
sudo rm -rf /etc/apt/sources.list.d/*
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9 6ED0E7B82643E131
sudo apt-get update
openssl version
export NODE_OPTIONS="--tls-min-v1.0 --tls-cipher-list=DEFAULT@SECLEVEL=0"
