#mysqld

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y --no-install-recommends python-software-properties

run		apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80/ 0xcbcb082a1bb943db
run		add-apt-repository 'deb http://mirror.aarnet.edu.au/pub/MariaDB/repo/10.0/ubuntu precise main' && apt-get update

run		cat /proc/mounts > /etc/mtab

run		apt-get install -y --no-install-recommends mariadb-server

run		sed -i -e '/^bind-address/s/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
run		sed -i -e '/^innodb_flush_method/s/^/#/' /etc/mysql/my.cnf

#volume		/var/lib/mysql/

env		MYSQL_PASSWORD asuperstrongpass
run		mysqld& sleep 5 ; echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql

expose 	3306

cmd		/usr/bin/mysqld_safe
