#!/bin/sh
hash=$(docker ps -a | grep ruimo/launch-saite | awk '{print $1}')
docker stop $hash
docker rm $hash

