#!/bin/sh -x
docker run -d --name store --link postgres:postgres --link recoeng:recoeng -p 9000:9000 -v /var/lib/jenkins/itemPictures:/root/itemPictures -v /var/www/release/store:/store -v /etc/timezone:/etc/timezone:ro ruimo/launch-store $*
