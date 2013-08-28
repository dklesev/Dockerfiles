# Dovecot, Postfix & spamassassin

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

env		HOSTNAME mail.example.com

run		echo "$HOSTNAME" > /etc/hostname

run		apt-get install -y --no-install-recommends mail-stack-delivery spamassassin

run		sed -i -e "/^127.0.0.1/s/$/ $HOSTNAME/" /etc/hosts

#volume	/var/lib/dovecot/
#volume /var/lib/postfix/
#volume	spamassassin rules?

#sed 	 /etc/dovecot/dovecot.conf

run		sed -i -e "/^protocols/s/ pop3//" /etc/dovecot/conf.d/01-mail-stack-delivery.conf

#sed -i -e "/^mydestination/s/$/ $HOSTNAME/" /etc/postfix/main.cf

run		sed -i -e "/^ENABLED/s/0/1/" /etc/default/spamassassin
# run		sed -i -e "/^CRON/s/0/1/" /etc/default/spamassassin

# push config?

expose	25
#expose 993
#expose 143

#expose	2525/587/465/2526

run	apt-get install nano

cmd		service postfix start ; service spamassassin start ; /usr/sbin/dovecot -F -c /etc/dovecot/dovecot.conf
# ; tail -f /var/log/mail.err
