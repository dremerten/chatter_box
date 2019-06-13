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

runner(){
  install_pkgs
  install_dccomps
}

linux_install(){
    add_gpg_key
    update_source_list
    install_docker_ce
    verify_running
    runner
}

linux_install

printf "\n\n\e[5;44;1;33m*** Attention $(whoami) Please Run the following to add user to docker group\e[0m\n\e[5;44;1;33\e[0m\n\n\n"

echo "1) sudo usermod -aG docker ${USER}"
echo "2) su ${USER}"
echo "3) id -nG"