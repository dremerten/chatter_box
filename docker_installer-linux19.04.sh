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

linux_install(){
    add_gpg_key
    update_source_list
    install_docker_ce
    verify_running
}
