# KiwiIRC
# One of the most feature complete web based IRC clients available
# https://kiwiirc.com/docs/installing/proxies

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update
run		apt-get install -y --no-install-recommends python-software-properties

run		add-apt-repository ppa:chris-lea/node.js && apt-get update

run		apt-get install -y git nodejs

run		git clone https://github.com/prawnsalad/KiwiIRC.git kiwiirc

run		cd kiwiirc && npm install && cp config.example.js config.js && ./kiwi build

run		sed -i -e "/^conf.http_proxies/s/]/,\"172.17.0.0\/16\"]/" /kiwiirc/config.js
run		sed -i -e "/^show_timestamps/s/false/true/" /kiwiirc/config.js
run		sed -i -e "/^mute_sounds/s/false/true/" /kiwiirc/config.js
run		sed -i -e "/^conf.quit_message/s/\".*\"/\"Quit: Leaving\"/" /kiwiirc/config.js
 
#volume	/kiwiirc

expose	7778

cmd		/kiwiirc/kiwi -f
