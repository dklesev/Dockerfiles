# Dovecot, Postfix & spamassassin

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

env		HOSTNAME mail.example.com

run		echo "$HOSTNAME" > /etc/hostname

run		apt-get install -y postfix libsasl2-2 sasl2-bin libsasl2-modules dovecot-imapd dovecot-pop3d dovecot-common spamassassin

#run		sed -i -e "/^127.0.1.1/s/$/ $HOSTNAME/" /etc/hosts

#volume	["/mail"]

#add	dovecot.conf /etc/dovecot/dovecot.conf
#add	main.cf /etc/postfix/main.cf
#add 	spamassassin /etc/default/spamassassin

# /etc/default/saslauthd

# push config?

#expose	25
# 25/2525/587/465/2526 --> SMTP

#cmd	service saslauthd start ; service postfix start ; service dovecot start ; tail -f /var/log
