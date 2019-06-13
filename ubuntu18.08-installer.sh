#! /bin/bash

add_gpg_key(){
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
}

update_source_list()
{
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge" && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable edge test" && sudo apt-get update
}

install_docker_ce()
{
  apt-cache policy docker-ce && sudo apt-get install -y docker-ce
}

verify_running() {
   sudo systemctl status docker
}


install_pkgs(){
  sudo apt-get -y install python-dev gcc libc-dev make
}

install_dccomps(){
  sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose &&
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &&
  docker-compose --version
}


linux_install(){
    add_gpg_key
    update_source_list
    install_docker_ce
    printf "\n\n\e[5;44;1;33m*** Attention $(whoami) Please press 'q' to complete installation*** \e[0m\n\e[5;44;1;33\e[0m\n\n"
    verify_running
    install_pkgs
    install_dccomps
}

linux_install
