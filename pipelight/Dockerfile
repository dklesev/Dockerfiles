# Pipelight in firefox accessible via x11 fowarding

from	ubuntu:12.10
 
env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends software-properties-common

run		dpkg --add-architecture i386 && apt-get update

run		dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl

run		apt-get install -y ssh pwgen 

run		apt-get install -y --no-install-recommends xpra xdm libxrandr2

run 	apt-get install -y --no-install-recommends firefox

run 	localedef -v -c -i en_US -f UTF-8 en_US.UTF-8 || :

run 	apt-add-repository -y ppa:mqchael/pipelight
run 	apt-add-repository -y ppa:ehoover/compholio
run		apt-get update
run 	apt-get install -y --force-yes pipelight wine-silverlight5.1-installer wine-compholio wine-mpg2splt-installer

run		sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
run		sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
run		ln -s /usr/bin/Xorg /usr/bin/X

run		echo "X11Forwarding yes" >> /etc/ssh/ssh_config
run		echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

#RSAAuthentication yes
#PubkeyAuthentication yes
#ChallengeResponseAuthentication no
#PasswordAuthentication no
#UsePAM no

run		mkdir -p /var/run/sshd

#volume	/home/docker/

run		mkdir -p /home/docker/.ssh
run		useradd -M -s /bin/bash -d /home/docker docker
run		sed -Ei 's/adm:x:4:/docker:x:4:docker/' /etc/group

add 	id_rsa.pub /home/docker/.ssh/authorized_keys
run		chmod 0640 /home/docker/.ssh/authorized_keys

run		chown -R docker:docker /home/docker

#expose	22

cmd		/etc/init.d/xdm start ; /usr/sbin/sshd -D

