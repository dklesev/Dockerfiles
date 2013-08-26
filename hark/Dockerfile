# Hark
# Hark is your personal radio station. Podcasts. Radio. Revolutionized.
# https://github.com/joelhans/Hark

from	ubuntu:precise

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list && apt-get update
run		apt-get install -y python-software-properties

run		add-apt-repository ppa:chris-lea/node.js && apt-get update

run		apt-get install -q -y git nodejs build-essential

run		git clone https://github.com/joelhans/Hark.git
run		cd Hark ; npm install

expose	3000

cmd		node /Hark/app.js
