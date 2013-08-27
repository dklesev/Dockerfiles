# OpenVPN
# http://aahank.com/2013/debian-ubuntu-vpn-server/

from    ubuntu

env		DEBIAN_FRONTEND noninteractive

run     apt-get update && apt-get install -y openvpn
# 	resolvconf openssl

run		cp -R /usr/share/doc/openvpn/examples/easy-rsa/ /etc/openvpn

#add  	vars /etc/openvpn/easy-rsa/2.0/vars

expose	443

#cmd	service openvpn start ; tail -f /var/log/openvpn-status.log
