#!/bin/bash

sudo docker load -i mysql.5.7.20.tar
#sudo docker run -it --rm mysql:5.7.20 mysql -hsome.mysql.host -usome-mysql-user -p
sudo docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7.20 --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
#sudo docker ps -a
#sudo docker start some-mysql
#sudo docker stop some-mysql
#sudo docker rm some-mysql

#sudo docker run --name some-app --link some-mysql:mysql -d application-that-uses-mysql
#sudo docker run -it --link some-mysql:mysql --rm mysql:5.7.20 sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
