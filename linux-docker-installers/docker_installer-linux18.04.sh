#! /bin/bash

purge_system()
{
	sudo apt-get remove docker docker-engine docker.io containerd runc
}

update_system()
{
	sudo apt-get update && sudo cp /etc/apt/sources.list.d/additional-repositories.list /etc/apt/sources.list.d/additional-repositories.list.bak && sudo echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable edge" > /etc/apt/sources.list.d/additional-repositories.list
}

install_docker_ce()
{
  	curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
}


linux_install(){
    purge_system
    update_system
    install_docker_ce
   }

linux_install

printf "\n\n\e[5;44;1;33m*** Attention $(whoami) Please Run the following to add user to docker group\e[0m\n\e[5;44;1;33\e[0m\n\n\n"

echo "1) sudo usermod -aG docker ${USER}"
echo "2) su ${USER}"
echo "3) id -nG"
