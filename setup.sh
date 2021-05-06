#!/bin/bash

dirName=$(dirname "$0")
currentDir=$(cd "$dirName" && pwd)
dockerComposeFile="$currentDir/docker-compose.yml"
whatDo="$1"

startProxy () {
  docker-compose -f "$dockerComposeFile" up -d --build
  echo "Start completed"
}

stopProxy () {
  for containerId in $(docker ps -f name=dockernginxproxy_nginx-proxy -q) ; do
    docker stop "$containerId"
  done

  echo "Stop completed"
}

if [ "$whatDo" == "start" ]
then
  startProxy
elif [ "$whatDo" == "stop"  ]
then
  stopProxy
else
  stopProxy
  startProxy
fi