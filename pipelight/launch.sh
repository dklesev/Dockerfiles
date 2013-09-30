#!/bin/bash

DOCKER_PASSWORD=`pwgen -c -n -1 12`
DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`
useradd -M -d /home/docker -p $DOCKER_ENCRYPYTED_PASSWORD docker
sed -Ei 's/adm:x:4:/docker:x:4:docker/' /etc/group
#adduser docker wheel

chsh -s /bin/bash docker
chown -R docker:docker /home/docker

echo "sshpass: $DOCKER_PASSWORD"

echo "starting xdm"
/etc/init.d/xdm start

echo "starting sshd"
/usr/sbin/sshd -D

