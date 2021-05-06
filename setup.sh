#!/bin/bash

dirName=$(dirname "$0")
path=$(cd "$dirName" && pwd)
dockerComposeFile="$path/docker-compose.yml"

alreadyRan=$(docker ps -f name=docker-nginx-proxy -q | wc -l)

if [ "$alreadyRan" == 1 ]
then
docker stop $(docker ps -f name=docker-nginx-proxy -q) && docker-compose -f "$dockerComposeFile" up -d
else
  docker-compose -f "$dockerComposeFile" up -d
fi
