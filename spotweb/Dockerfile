# spotweb

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y git php5-mysql nginx php5-fpm

run		git clone https://github.com/spotweb/spotweb.git

#add	spotweb.nginx.conf /etc/nginx/site-available/spotweb

#run	sed -i "s/^;date.timezone =.*/date.timezone = Australia\/Melbourne/" /etc/php5/*/php.ini

#volume /spotweb/

#add	spotweb_setup.sql /tmp/ ?
#run	mysql
#CREATE DATABASE spotweb;
#GRANT ALL PRIVILEGES ON spotweb.* TO "spotweb"@"localhost" IDENTIFIED BY "DB_Verander_Mij_!";
#\q

# echo "" > /var/www/spotweb/dbsettings.inc.php


#echo > /etc/cron.d/spotweb
#30 */4 * * * /usr/bin/php /var/www/spotweb/retrieve.php >> /var/log/spotweb 2>&1
#0 1 * * * { cd /var/www/spotweb/ && git pull && /usr/bin/php upgrade-db.php ; } > /var/log/spotweb-upgrade 2>&1

# service cron start

# cmd service php5-fpm start ; service nginx start ; tail -f /var/log/nginx/error.log

# http://localhost/spotweb/install.php


