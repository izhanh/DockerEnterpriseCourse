#!/bin/bash

docker stop $(docker ps -q)
docker rm $(docker ps -q)
docker rmi $(docker images -q) -f
docker system prune -f
