#!/bin/bash

sudo docker load -i tomcat.9.0.2-jre8-alpine.tar
sudo docker run -it --rm -p 8888:8080 tomcat:9.0.2-jre8-alpine
#http://localhost:8888
sudo docker run --name some-tomcat -v ~/webapps:/usr/local/tomcat/webapps -d -p 8888:8080 tomcat:9.0.2-jre8-alpine
