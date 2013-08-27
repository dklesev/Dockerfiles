# mumble-server

from    ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run     apt-get install -y mumble-server libicu48

#run	sed -i -e "/^bandwidth/s/72000/30000/" /etc/mumble-server.ini

#volume		 /var/lib/mumble-server/

expose	64738

cmd		service mumble-server start ; tail -f /var/log/mumble-server/mumble-server.log
