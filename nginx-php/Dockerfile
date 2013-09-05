# nginx-php

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends python-software-properties

run		add-apt-repository -y ppa:nginx/stable && apt-get update
run		apt-get install -y nginx

run		apt-get -y install php5-fpm php5-mysql php-apc php5-imagick php5-imap php5-mcrypt

add		nginx-default /etc/nginx/sites-available/local
run		ln -s /etc/nginx/site-available/local /etc/nginx/site-enabled/local
run		rm /etc/nginx/site-enabled/default

run		echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini
run		echo "daemon off;" >> /etc/nginx/nginx.conf
run		mkdir /var/www
run		echo "<?php phpinfo(); ?>" > /var/www/index.php

expose	80

cmd		service php5-fpm start; service nginx start ; tail -f /var/log/nginx/error.log

