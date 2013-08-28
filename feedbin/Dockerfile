# Feedbin is a simple, fast and nice looking RSS reader. 
# https://github.com/feedbin/feedbin

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends python-software-properties

run		add-apt-repository -y ppa:pitti/postgresql && apt-get update

run 	apt-get install -y git ruby
run		apt-get install -y build-essential curl libreadline-dev libcurl4-gnutls-dev libpq-dev libxml2-dev libxslt1-dev libcurl4-gnutls-dev zlib1g-dev libssl-dev postgresql-client-9.2
run 	git clone https://github.com/feedbin/feedbin.git

#expose 	80

#cmd		cd feedbin ; 
