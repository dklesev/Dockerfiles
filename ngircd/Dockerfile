# ngircd

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run 	apt-get install -y ngircd rng-tools

# /etc/ngircd/ngircd.conf
# /etc/ngircd/ngircd.motd

expose 	6697

#volume 	

#cmd	ngircd -n
