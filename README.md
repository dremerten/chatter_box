# Docker/Rails_app Chatterbox

 # Mac OsX docker install
https://download.docker.com/mac/stable/Docker.dmg

## Have Postgres installed and running 
https://postgresapp.com/

## Docker-ce and postgres services should be running

#### To get the containers up and running change into scripts directory and execute setup-env.sh
```$ cd chatter_box/scripts/```

## Run setup
```$ ./setup-env.sh```

***************************************************************************************************************************

# For Linux Ubuntu 18.04: 

### 1) Clone the project
``` git clone https://github.com/dremerten/chatter_box.git```

### 2) Change directories into 'chatter_box'
``` cd chatter_box```

### 2) Installs docker-ce and docker-compose
``` bash ubuntu18.04-installer.sh```

###  3) Follow on-screen instructions after install

***************************************************************************************************************************
# For Linux Ubuntu 19.04 

### 1) Clone the project
``` git clone https://github.com/dremerten/chatter_box.git```

### 2) change directories into chatterbox
```cd chatter_box```

### 3) Run automated installer for docker-ce and docker-compose
``` bash ubuntu19.04-installer.sh```

### 4) Follow the on-screen instructions

**************************************************************************************************************************

# For Windows
 https://hub.docker.com/editions/community/docker-ce-desktop-windows
 

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

### To get the containers up and running change into scripts directory and execute setup-env.sh

# Windows(Git Bash Command Prompt)
```$ sh setup-env.sh```

****************************************************************************************************************

# For All OS Platforms

### Check the status of current running containers
```
docker container ps
```
### Enter the container run:
```
docker exec -it <container_Id> /bin/zsh
```
### Check out the app
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
## For additional Docker commands please refer to "docker_notes.txt"

