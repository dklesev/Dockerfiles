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

# /etc/postfix/main.cf
#smtpd_tls_cert_file = /etc/ssl/certs/ssl-mail.pem
#smtpd_tls_key_file = /etc/ssl/private/ssl-mail.key


run		sed -i -e "/^ENABLED/s/0/1/" /etc/default/spamassassin
# run		sed -i -e "/^CRON/s/0/1/" /etc/default/spamassassin

# /etc/default/saslauthd

# push config?

expose	25
#expose	2525/587/465/2526

cmd		service postfix start ; service spamassassin start ; /usr/sbin/dovecot -F -c /etc/dovecot/dovecot.conf
