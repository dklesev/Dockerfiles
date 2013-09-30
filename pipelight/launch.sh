#!/bin/bash

# Create the directory needed to run the sshd daemon
mkdir /var/run/sshd

# Add docker user and generate a random password with 12 characters that includes at least one capital letter and number.
DOCKER_PASSWORD=`pwgen -c -n -1 12`
DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`
useradd -M -d /home/docker -p $DOCKER_ENCRYPYTED_PASSWORD docker
sed -Ei 's/adm:x:4:/docker:x:4:docker/' /etc/group
#adduser docker wheel

chsh -s /bin/bash docker
chown -R docker:docker /home/docker

export SSH_AUTH_SOCK=/dev/null
export SSH_ASKPASS=/bin/false

echo "starting xdm"
/etc/init.d/xdm start

echo "starting sshd"
/usr/sbin/sshd &

DISPLAY=":8"
export DISPLAY 

echo "#########################################"
echo "sshpass: $DOCKER_PASSWORD"
echo "display: $DISPLAY"
echo "#########################################"

#Prefs.js
#user_pref("general.useragent.override","Some string");
#Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0

su -c "xpra start $DISPLAY --start-child=firefox --no-daemon" docker

