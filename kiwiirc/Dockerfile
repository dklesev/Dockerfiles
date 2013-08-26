# KiwiIRC
# One of the most feature complete web based IRC clients available
# https://kiwiirc.com/
# https://kiwiirc.com/docs/installing/proxies

from	ubuntu:precise

run	echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run	apt-get install -y python-software-properties

run	add-apt-repository ppa:chris-lea/node.js && apt-get update

run	apt-get install -y git nodejs

run	git clone https://github.com/prawnsalad/KiwiIRC.git

run	cd KiwiIRC && npm install && cp config.example.js config.js

run	cd KiwiIRC && ./kiwi build

expose	7778

cmd	cd /KiwiIRC/ && ./kiwi -f
