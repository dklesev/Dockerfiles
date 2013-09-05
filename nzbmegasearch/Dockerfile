# NZBmegasearch

from    ubuntu

env		DEBIAN_FRONTEND noninteractive

run 	apt-get install -y python2.7 git python-openssl
run 	git clone https://github.com/pillone/usntssearch.git usntssearch

expose	5000

#volume 	/usntssearch/NZBmegasearch

cmd		cd /usntssearch/NZBmegasearch ; python mega2.py
