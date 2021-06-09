#!/usr/bin/env bash

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

tput setaf 4; echo "The IP of the host $(hostname) is $(hostname -I | awk '{print $2}')"
