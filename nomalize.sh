#!/bin/bash
#


dhclient eth0


ifconfig eth0 down
ifconfig eth0 up


/etc/init.d/networking stop


/etc/init.d/networking start

service network-manager restart


#-------------STEP 2

cat /etc/resolv.conf
cat /etc/network/interfaces

/etc/init.d/networking stop


echo -e "\niface eth0 inet dhcp" >> /etc/network/interfaces
#or#ifconfig eth0 inet dhcp


cat /etc/network/interfaces
ifconfig eth0 down

ifconfig eth0 up





/etc/init.d/networking start

service network-manager restart

ifconfig eth0 up

ifup eth0