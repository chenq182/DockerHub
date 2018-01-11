#!/bin/bash

sudo docker load -i java.8u111-jdk-alpine.tar
sudo docker volume ls --filter dangling=true|grep local|awk '{print $2}'|xargs docker volume rm
sudo docker run --name some-jdk -v /usr/lib/jvm/java-1.8-openjdk -d java:8u111-jdk-alpine /bin/sh
sudo docker stop some-jdk
sudo docker inspect -f {{.Mounts}} some-jdk
