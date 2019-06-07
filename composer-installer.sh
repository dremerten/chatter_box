#! /bin/bash

install_pkgs(){
  sudo apt-get -y install py-pip python-dev libff1-dev openssl-dev gcc libc-dev make
}

install_dccomps(){
  sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose &&
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &&
  docker-compose --version
}

runner(){
  install_pkgs
  install_dccomps
}

runner
