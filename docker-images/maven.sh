#!/bin/bash

sudo docker load -i maven.3.5.2-jdk-8-alpine.tar
sudo docker run -it --rm -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven maven:3.5.2-jdk-8-alpine mvn package
