#!/bin/bash

yum install ./libtool-ltdl-2.4.2-22.el7_3.x86_64.rpm
yum install ./libseccomp-2.3.1-3.el7.x86_64.rpm
yum install ./container-selinux-2.33-1.git86f33cd.el7.noarch.rpm
yum install ./docker-ce-17.12.0.ce-1.el7.centos.x86_64.rpm
systemctl start docker.service
systemctl enable docker.service
docker version
