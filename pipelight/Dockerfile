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

run		mkdir -p /var/run/sshd

env		SSH_AUTH_SOCK /dev/null
env		SSH_ASKPASS /bin/false
#env		DISPLAY :8
#env		LIBGL_ALWAYS_INDIRECT 1

volume	/home/docker

add		launch.sh /bin/setup.sh
run		chmod +x /bin/setup.sh
#add 	~/.ssh/id_rsa /home/docker/.ssh/id_rsa 

#expose	22

cmd		/bin/setup.sh

