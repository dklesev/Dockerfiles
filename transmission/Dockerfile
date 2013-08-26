# Transmission

from    ubuntu

run     apt-get update && apt-get install -y transmission-daemon

run		sed -i -e '/^OPTION/s/"$/ --foreground"/' /etc/default/transmission-daemon

# sed   /etc/transmission-daemon/settings.json
#    "blocklist-enabled": false,
#    "blocklist-url": "http://www.example.com/blocklist",
#	 "rpc-whitelist-enabled": true,
#	 "rpc-authentication-required": true,
#	 "umask": 18,

#volume /downloads /var/lib/transmission-daemon/downloads
#volume transmission-info	/var/lib/transmission-daemon/info

expose	9091

cmd		service transmission-daemon start
