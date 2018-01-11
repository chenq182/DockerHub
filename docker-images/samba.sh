#!/bin/bash

# https://github.com/dperson/samba
sudo docker load -i samba.tar
sudo docker run -it --name samba -p 139:139 -p 445:445 \
            -v /path/to/directory:/mount \
            -d dperson/samba
sudo docker run -it --rm dperson/samba -h
sudo docker run -it -e TZ=WAUST-8WAUDT -p 139:139 -p 445:445 -d dperson/samba
sudo docker run -it -p 139:139 -p 445:445 -d dperson/samba \
            -u "example1;badpass" \
            -u "example2;badpass" \
            -s "public;/share" \
            -s "users;/srv;no;no;no;example1,example2" \
            -s "example1 private;/example1;no;no;no;example1" \
            -s "example2 private;/example2;no;no;no;example2"
