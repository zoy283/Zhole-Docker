#!/bin/bash

docker stop nginx-zhole
docker container prune  -f
docker image prune  -f
docker build -t nginx-zhole .
docker run -it -d -p 80:80 --name nginx-zhole nginx-zhole