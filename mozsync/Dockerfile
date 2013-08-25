# Mozilla Sync Server
# http://docs.services.mozilla.com/howtos/run-sync.html

# sudo docker build -t "mozsync" .
# sudo docker run -p :5000 mozsync
 
from ubuntu:precise

run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update && apt-get install -y python-dev mercurial sqlite3 python-virtualenv libssl-dev
run apt-get install -y build-essential
run hg clone https://hg.mozilla.org/services/server-full
run cd server-full && make build
#run cd server-full && make test
#run ./bin/pip install pysqlite

expose 5000

# sed development.ini
#[nodes]
#fallback_node = http://localhost:5000/
#[storage]
#sqluri = sqlite:////path/to/database/file.db
#[auth]
#sqluri = sqlite:////path/to/database/file.db
 
#cmd bin/paster serve development.ini
