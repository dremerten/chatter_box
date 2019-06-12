# Docker/Rails_app Chatterbox


## 1) Have docker installed and running: 

### For Mac: go here ---> https://download.docker.com/mac/stable/Docker.dmg

### For Linux Ubuntu 18.04: Go here and follow the steps --->  
``` sudo apt-get remove docker docker -engine docker.io containerd runc```

```sudo apt-get update   ```

### For Linux Ubuntu 19.04 run the automated installer to install docker-ce and docker-compose:

```  bash docker_installer-linux19.04.sh```

``` bash composer-installer.sh ```


**************************************************************************************************************************


### For Windows10: go here --> https://hub.docker.com/editions/community/docker-ce-desktop-windows

## 2) Have Postgres installed and running for mac:

### For Mac: Go here and select from the downloads tab ----> https://postgresapp.com/

*************************************************************************************************************

# Windows Only
### You may need to install Chocolately ---> https://chocolatey.org/docs

### After Chocolately is installed use the command prompt to install git.
https://chocolatey.org/packages/git

```# MUST RUN CMD AS ADMINISTRATOR
# /GitOnlyOnPath - Puts git install\cmd on path. This is also done by default if no package parameters are set.

# To install Git
choco install git.install --params "/GitOnlyOnPath"
```

### After installing git be sure to close the Command Prompt/Terminal to allow the changes to take effect.

 ### Clone this repo, from with the "Git Bash" Command Prompt
   ### To access click on the windows icon and select "Git" from there locate the Git Bash Command Prompt, right-click
   ### and run as Administrator.
```
git clone https://github.com/dremerten/dockerizing_rails.git
```


### Locating the Git Bash Command Window.
![alt text](https://i.stack.imgur.com/soecn.png)

****************************************************************************************************************


## 3) To get the containers up and running change into scripts directory and execute setup-env.sh
```
$ cd chatter_box/scripts/

# For MacOSX/Linux
$ ./setup-env.sh

# Windows(Git Bash Command Prompt)
$ sh setup-env.sh
```
## 4) Check the status of current running containers
```
docker container ps
```
## 5) Enter the container run:
```
docker exec -it <container_Id> /bin/zsh
```
## 6) Check out the app
```localhost:3000```

### Copy a file from a container to the host, you can use the command
```
docker cp <containerId>:/file/path/within/container /host/path/target
```

### To stop and kill the running containers(make sure to stop first)
```
docker stop $(docker ps -a -q)
docker kill $(docker ps -a -q)
```

### view all images running
```
$ docker images
```

### To additionally remove any stopped containers and all unused images (not just dangling images), add the -a flag to the command:
```
docker system prune -a
```
# For additional Docker commands please refer to "docker_notes.txt"

