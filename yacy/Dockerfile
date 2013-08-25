# Yacy
# sudo docker build -t "yacy" .
# sudo docker run -p :8090 yacy
 
from ubuntu
 
run echo "deb http://debian.yacy.net ./" > /etc/apt/sources.list.d/yacy.list
run apt-get update && apt-get install -y --force-yes yacy

expose 8090
 
cmd service yacy start && tail -f /var/log/yacy/yacy00.log
