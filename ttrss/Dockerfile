# Tiny Tiny RSS

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y nginx git php5-fpm php5-mysql php5-curl php5-json

run		git clone https://github.com/gothfox/Tiny-Tiny-RSS.git

# add 	ttrss.nginx.conf

# define mysql settings

#expose	80

#cmd		service php5-fpm start ; service nginx start ; service tt-rss start ; tail -f /var/log/tt-rss.log

