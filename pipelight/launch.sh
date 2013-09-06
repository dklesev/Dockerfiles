#!/bin/bash

# Create the directory needed to run the sshd daemon
mkdir /var/run/sshd

# Add docker user and generate a random password with 12 characters that includes at least one capital letter and number.
DOCKER_PASSWORD=`pwgen -c -n -1 12`
DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`
useradd -M -d /home/docker -p $DOCKER_ENCRYPYTED_PASSWORD docker
sed -Ei 's/adm:x:4:/docker:x:4:docker/' /etc/group
#adduser docker sudo

# Set the default shell as bash for docker user.
chsh -s /bin/bash docker

#Set all the files and subdirectories from /home/docker with docker permissions.
chown -R docker:docker /home/docker/*

export SSH_AUTH_SOCK=/dev/null
export SSH_ASKPASS=/bin/false

echo "starting xdm"
/etc/init.d/xdm start

echo "starting sshd"
/usr/sbin/sshd

echo "#########################################"
echo "Run the following to connect to firefox: "
#echo ssh -oStrictHostKeyChecking=no -oCheckHostIP=no -YC -c blowfish docker@localhost -p $PORT ./
echo User: docker Password: $DOCKER_PASSWORD
echo "#########################################"

DISPLAY=":0"
export DISPLAY 
#export SSH_AUTH_SOCK=/dev/null
#export SSH_ASKPASS=/bin/false

# update default useragent string?

echo "starting xpra session"
#sudo -u docker 
#xpra start $DISPLAY & sleep 5 ; DISPLAY=$DISPLAY firefox
#sudo -u docker xpra start :$DISPLAY --start-child=firefox
xpra start :$DISPLAY
#&

#echo "attaching to xpra session"
#xpra attach $DISPLAY


### firefox.sh
# xpra attach ssh:user@server$DISPLAY
# DISPLAY=$DISPLAY firefox
