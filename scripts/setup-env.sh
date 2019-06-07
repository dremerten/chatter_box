#!/bin/bash
set -e

docker-compose build app
docker-compose down -v
docker-compose up -d pg
docker-compose run -e WAIT_FOR_POSTGRES=true --rm app rails db:create db:migrate
docker-compose up -d

printf "\n\n\e[5;44;1;33m*** ${USER} Please Navigate to localhost:3000 to access webapp: *** \e[0m\n\e[5;44;1;33m \e[0m\n\n"

