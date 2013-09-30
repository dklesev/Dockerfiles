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
run		apt-get install -y --no-install-recommends wine-silverlight5.1-installer wine-compholio
run 	apt-get install -y --force-yes --no-install-recommends pipelight

run		sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
run		sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
run		ln -s /usr/bin/Xorg /usr/bin/X
run		echo "X11Forwarding yes" >> /etc/ssh/ssh_config

add		launch.sh	/home/docker/launch.sh
run		chmod +x /home/docker/launch.sh
#add 	~/.ssh/id_rsa /home/docker/.ssh/id_rsa 

#expose	22

cmd		/home/docker/launch.sh

# check about:plugins for pipelight

#test silverlight: http://bubblemark.com/silverlight2.html

# launch.sh first param as query string? e.g. http://atwar-game.com/play/

