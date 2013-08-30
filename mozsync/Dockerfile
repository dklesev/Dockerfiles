# Mozilla Sync Server
# http://docs.services.mozilla.com/howtos/run-sync.html

# sudo docker build -t "mozsync" .
# sudo docker run -p :5000 mozsync
 
from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update

run		apt-get install -y python-dev mercurial sqlite3 python-virtualenv libssl-dev
run 	apt-get install -y build-essential
run 	hg clone https://hg.mozilla.org/services/server-full /usr/share/mozsync
run 	cd /usr/share/mozsync && make build
#run 	cd /usr/share/mozsync && make test
#run 	cd /usr/share/mozsync/bin && pip install pysqlite

expose 	5000

# append >> development.ini
#[nodes]
#fallback_node = http://localhost:5000/
#[storage]
#sqluri = sqlite:////path/to/database/file.db
#[auth]
#sqluri = sqlite:////path/to/database/file.db
 
cmd 	cd /usr/share/mozsync/ ; bin/paster serve development.ini
