#samba

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends samba

#add	smb.conf /etc/samba/
#add	smbusers /etc/samba/

#volume ["/data"]

cmd		smbd -D ; nmbd -D ; tail -f /var/log/samba/log.smbd

