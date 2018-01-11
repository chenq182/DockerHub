#!/bin/bash

sudo docker load -i mritd_ss.tar
sudo docker run -dt --name ssclient -p 1080:1080 mritd/shadowsocks -m "ss-local" -s "-s 127.0.0.1 -p 2017 -b 0.0.0.0 -l 1080 -m aes-256-cfb -k 123456789 --fast-open" -x -e "kcpclient" -k "-r vps.typhoon.fun:2017 -l :2017 -mode fast2"
#sudo docker ps -a
#sudo docker start ssclient
#sudo docker stop ssclient
#sudo docker rm ssclient
