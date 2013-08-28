# Tinyboard
# https://github.com/savetheinternet/Tinyboard

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y nginx git php5-fpm php5-mysql php5-curl php5-json

run		git clone https://github.com/savetheinternet/Tinyboard.git

#     PHP >= 5.2.5    MySQL server    mbstring    PHP GD    PHP PDO
#  ImageMagick or command-line version (convert and identify)
#  APC (Alternative PHP Cache), XCache or Memcached 

# volume /Tinyboard

# add 	instance-config.php /Tinyboard/inc/

# run ln -s /Tinyboard /usr/share/nginx/www/imgboard

# define mysql settings

#expose	80

#cmd		service php5-fpm start ; service nginx start ; tail -f /var/log/nginx/error.log

