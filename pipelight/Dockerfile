# Pipelight in firefox accessible via x11 fowarding

from	ubuntu:12.10
 
env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends software-properties-common

run 	apt-add-repository -y ppa:ehoover/compholio
run 	apt-add-repository -y ppa:mqchael/pipelight
run		apt-get update

run		dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl
 
run		apt-get install -y ssh pwgen 

run		apt-get install -y --no-install-recommends xpra

run 	apt-get install -y --no-install-recommends firefox

run 	apt-get install -y --force-yes pipelight

run		apt-get install -y --no-install-recommends xdm

run		apt-get install -y --no-install-recommends libxrandr2

run 	localedef -v -c -i en_US -f UTF-8 en_US.UTF-8 || :

run		sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
run		sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
run		ln -s /usr/bin/Xorg /usr/bin/X
run		echo "X11Forwarding yes" >> /etc/ssh/ssh_config

add		launch.sh	/home/docker/launch.sh
run		chmod +x /home/docker/launch.sh

expose	22

cmd		/home/docker/launch.sh

# check about:plugins for pipelight

# launch.sh first param as query string? http://atwar-game.com/play/

