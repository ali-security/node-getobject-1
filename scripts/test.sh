#!/bin/bash

set -ev

if $(sudo --help); then
  echo "sudo exists. Using"
  SUDO="sudo"
else
  echo "sudo doesn't exist. Ignoring"
  SUDO=""
fi

${SUDO} cat /etc/apt/sources.list
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | ${SUDO} apt-key add -
echo "deb http://deb.debian.org/debian bookworm-backports main contrib non-free" > sources.list
${SUDO} cp sources.list /etc/apt/sources.list
${SUDO} cat /etc/apt/sources.list
${SUDO} ls -la /etc/apt/sources.list.d
${SUDO} rm -rf /etc/apt/sources.list.d/*
${SUDO} apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9 6ED0E7B82643E131
${SUDO} apt-get update
