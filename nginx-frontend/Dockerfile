# nginx-frontend

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends python-software-properties

run		add-apt-repository -y ppa:nginx/stable && apt-get update
run		apt-get install -y nginx

#add		proxy.conf /etc/nginx/
#add		local		/etc/nginx/site-available/
#run		ln -s /etc/nginx/site-available/local /etc/nginx/site-enabled/local
#run		rm /etc/nginx/site-enabled/default

expose	443

cmd		service nginx start ; tail -f /var/log/nginx/error.log
