#!/bin/bash

# https://docs.gitlab.com/omnibus/docker/README.html
# https://hub.docker.com/r/gitlab/gitlab-ce/tags/
sudo docker load -i gitlab-ce.10.3.2-ce.0.tar
# https://docs.gitlab.com/omnibus/docker/README.html#run-gitlab-ce-on-public-ip-address
sudo docker run --detach \
    --hostname gitlab.example.com \
    --publish 1.1.1.1:443:443 \
    --publish 1.1.1.1:80:80 \
    --publish 1.1.1.1:22:22 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:10.3.2-ce.0
#https://1.1.1.1/
#http://1.1.1.1/
