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

# Disable POP3
run		sed -i -e "/^protocols/s/ pop3//" /etc/dovecot/conf.d/01-mail-stack-delivery.conf


#run	sed -i -e "/^mydestination/s/$/ $HOSTNAME/" /etc/postfix/main.cf
#mydomain
#myhostname


## Generate new ssl certificates and set in /etc/postfix/main.cf
##smtpd_tls_cert_file = /etc/ssl/certs/ssl-mail.pem
##smtpd_tls_key_file = /etc/ssl/private/ssl-mail.key

## enable port 587 (submission)
#run	sed -i -e "s/^#submission/submission/" /etc/postfix/master.cf
## enable port 465 (smtps)
#run	sed -i -e "s/^#smtps/smtps/" /etc/postfix/master.cf


run		sed -i -e "/^ENABLED/s/0/1/" /etc/default/spamassassin
# run		sed -i -e "/^CRON/s/0/1/" /etc/default/spamassassin

# push config?

expose	25 #smtp
#expose 993 #imaps
#expose 143 #imap
#expose 587 #submission
#expose 465 #smtps

run	apt-get install nano

cmd		service postfix start ; service spamassassin start ; /usr/sbin/dovecot -F -c /etc/dovecot/dovecot.conf
# ; tail -f /var/log/mail.err
