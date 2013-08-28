# PVR & episode guide that downloads and manages all your TV shows

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run 	apt-get install -y git python python-cheetah
run 	git clone https://github.com/midgetspy/Sick-Beard.git sickbeard

expose 	8081

#volume 	/sickbeard

cmd		cd sickbeard ; python SickBeard.py --nolaunch
