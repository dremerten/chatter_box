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

add_usr_perms(){
   sudo usermod -aG docker ${USER}
   su ${USER}
   echo "$(whoami) Please verify you are part of the docker group"
   id -nG
}

linux_install(){
    add_gpg_key
    update_source_list
    install_docker_ce
    add_usr_perms
    printf "\n\n\e[5;44;1;33m*** Attention $(whoami) Please press 'q' to complete installation*** \e[0m\n\e[5;44;1;33\e[0m\n\n"
    verify_running
}

linux_install

