# Dovecot & Postfix

from    ubuntu

run     apt-get update

run		apt-get install -y postfix libsasl2-2 sasl2-bin libsasl2-modules
run		apt-get install -y dovecot-imapd dovecot-pop3d dovecot-common

#volume	["/mail"]

#add	dovecot.conf /etc/dovecot/dovecot.conf
#add	main.cf /etc/postfix/main.cf

# /etc/default/saslauthd

#expose	25
# 25/2525/587/465/2526 --> SMTP

#cmd	service saslauthd start ; service postfix start ; service dovecot start ; tail -f /var/log
