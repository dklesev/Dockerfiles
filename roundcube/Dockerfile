#roundcube

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y --no-install-recommends nginx php5-fpm
run		apt-get install -y --no-install-recommends roundcube

#expose 80

#cmd nginx service start
