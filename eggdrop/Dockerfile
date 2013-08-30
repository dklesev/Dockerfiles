# eggdrop - ircbot

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

env		BOTNAME		demobot

run		apt-get install -y git build-essential tcl-dev

run		git clone https://github.com/eggheads/eggdrop-1.8.git /usr/src/eggdrop-1.8

run		cd /usr/src/eggdrop-1.8 && ./configure && make config && make && make install DEST=/usr/share/eggdrop

run		cp /usr/share/eggdrop/eggdrop.conf /usr/share/eggdrop/$BOTNAME.conf


run		apt-get install nano sudo

run		sed -i -e 's/^#!.*$/#! \/usr\/share\/eggdrop\/eggdrop/' /usr/share/eggdrop/$BOTNAME.conf
run		sed -i -e '/^die/s/^/#/' /usr/share/eggdrop/$BOTNAME.conf
run		sed -i -e 's/^loadmodule notes/#loadmodule notes/' /usr/share/eggdrop/$BOTNAME.conf

run		sed -i -e "/^set username/s/lamest/$BOTNAME/" /usr/share/eggdrop/$BOTNAME.conf

	##Server string in the form of;
	##you.need.to.change.this:6667 another.example.com:7000:password [2001:db8:618:5c0:263::]:6669:password ssl.example.net:+6697
run		perl -i -pe 'BEGIN{undef $/;} s/^(set servers \{).*?(\})/$1 ssl.example.net:+6697 $2/smg' /usr/share/eggdrop/$BOTNAME.conf

run		sed -i -e "/^set network/s/I.didn't.edit.my.config.file.net/example.net/" /usr/share/eggdrop/$BOTNAME.conf

run		sed -i -e "/^set admin/s/Lamer <email: lamer@lamest.lame.org>/$BOTNAME <email: admin@example.net>/" /usr/share/eggdrop/$BOTNAME.conf

run		sed -i -e "/^set userfile/s/LamestBot/$BOTNAME/" /usr/share/eggdrop/$BOTNAME.conf
run		sed -i -e "/^set chanfile/s/LamestBot/$BOTNAME/" /usr/share/eggdrop/$BOTNAME.conf

run		sed -i -e "/^set nick/s/LamestBot/$BOTNAME/" /usr/share/eggdrop/$BOTNAME.conf

run		sed -i -e "/^set realname/s/LamestBot/$BOTNAME/" /usr/share/eggdrop/$BOTNAME.conf

#set owner "MrLame, MrsLame"

#set timezone "EST"
#set offset "5"

	## strip all comments
run		sed -i '/ *#/d; /^ *$/d' /usr/share/eggdrop/$BOTNAME.conf

run		cat /usr/share/eggdrop/$BOTNAME.conf | grep "set servers {"

run		chmod u+x /usr/share/eggdrop/$BOTNAME.conf

run		addgroup --system eggdrop
run		adduser --system --shell /bin/bash --disabled-password --no-create-home --home /usr/share/eggdrop eggdrop
run		adduser eggdrop eggdrop
run		chown -R eggdrop:eggdrop /usr/share/eggdrop

run		cd /usr/share/eggdrop/ ; sudo -u eggdrop ./eggdrop -m $BOTNAME.conf

cmd		cd /usr/share/eggdrop/ ; sudo -u eggdrop ./eggdrop -n $BOTNAME.conf

# * USER FILE NOT FOUND!  (try './eggdrop -m demobot.conf' to make one)

