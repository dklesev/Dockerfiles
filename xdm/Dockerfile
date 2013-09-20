# XDM: eXtendable Download Manager. Plugin based media collection manager.

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run 	apt-get install -y git python
run 	git clone https://github.com/lad1337/XDM.git /usr/share/xdm

volume	/usr/share/xdm
expose 	8085

cmd		cd /usr/share/xdm ; python XDM.py --nolaunch
