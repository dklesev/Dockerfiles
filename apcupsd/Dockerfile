#samba

from	ubuntu

env		DEBIAN_FRONTEND noninteractive

run		apt-get install -y --no-install-recommends apcupsd

#/etc/udev/rules.d/local.rules
## Bus 004 Device 002: ID 067b:2303 Prolific Technology, Inc. PL2303 Serial Port
#ENV{ID_BUS}=="usb", ENV{ID_VENDOR_ID}=="067b", ENV{ID_MODEL_ID}=="2303", SYMLINK+="apc-usb"

# sed -i -e '' /etc/apcupsd/apcupsd.conf

# set email out ability?

# access to device?

run		apcaccess status

#cmd		service apcdupsd start

