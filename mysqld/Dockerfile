#mysqld

from	ubuntu:precise

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y --no-install-recommends python-software-properties

run		apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
run		add-apt-repository 'deb http://mirror.aarnet.edu.au/pub/MariaDB/repo/10.0/ubuntu precise main'

run		apt-get update

run		apt-get install -y --no-install-recommends mariadb-server

#add	mysql-listen.cnf /etc/mysql/conf.d/mysql-listen.cnf

run		sed -i -e '/^nodb_flush_method/s/^/#/' /etc/mysql/my.cnf

#run	cat /proc/mounts > /etc/mtab

cmd		/usr/bin/mysqld_safe
