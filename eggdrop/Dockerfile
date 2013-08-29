# eggdrop - ircbot

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

env		BOTNAME		demobot

run		apt-get install -y git build-essential

run		git clone https://github.com/eggheads/eggdrop-1.8.git /usr/src/eggdrop-1.8

run		cd /usr/src/eggdrop-1.8 && ./configure && make config && make && make install DEST=/usr/share/eggdrop

#eggdrop.conf
# sed irc details
# sed botnames

## -m create userfiles
#run		./eggdrop -m LamestBot.conf

#run		 chmod u+x LamestBot.conf

##cmd		/usr/share/eggdrop/$BOTNAME.conf
