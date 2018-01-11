#!/bin/bash

sudo docker load -i phpmyadmin.4.7.tar
sudo docker run --name linked-phpmyadmin -d --link some-mysql:db -p 8080:80 phpmyadmin/phpmyadmin:4.7
sudo docker run --name external-phpmyadmin -d -e PMA_HOST=dbhost -p 8080:80 phpmyadmin/phpmyadmin:4.7
