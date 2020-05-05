!/bin/bash

# bash shell script that anonymize you and deanonymize you , it work behind whonix


downall(){

	service network-manager stop




	sleep 3
	ifdown eth0
	
	sleep 3

	ifconfig eth0 down
	
	sleep 3

	ip link set eth0 down

}

macchanger(){

	

	echo 'CHANGING MAC ADRESS'
	echo '----------------'
	macchanger -r eth0
	echo '----------------'
	echo 'MAC CHANGER RESULT AFTER SETTING UP'
	echo '----------------'
	macchanger -s eth0
	echo '----------------'
	sleep 5
}
timeshield(){
	#DEFFEND AGAINST DEANOMINIZATION ATTACK
	echo 'CHANGING DATE TO DEFFEND AGAINST DEANON TIME ATACK'
	timedatectl set-timezone UTC
	sleep 1
	echo 'DATE'
	echo '----------------'
	date
	echo '----------------'
}


whonixing(){
	#when using whonix


    cp /etc/resolv.conf /etc/resolv.conf.behindwhonixbackup

	#if there is something else with the line
	echo nameserver 10.152.152.10 > /etc/resolv.conf

	#ADRESS NETMASK GATEWAY

    cp /etc/network/interfaces /etc/network/interfaces.behindwhonixbackup

	#ifnot there
	echo -e '# This file describes the network interfaces available on your system\n# and how to activate them. For more information, see interfaces(5).\nsource /etc/network/interfaces.d/*\n##########NORMAL STUFF\nauto lo\niface lo inet loopback \n\n\n##########WHONIX STUFF\n#auto eth0\n\niface eth0 inet static\n\taddress 10.152.152.3\n\tnetmask 255.255.192.0\n\tgateway 10.152.152.10' > /etc/network/interfaces



}



upall(){

	sleep 3
	ifup eth0
	
	sleep 3

	ifconfig eth0 up
	
	sleep 3

	ip link set eth0 up
	sleep 3

	service network-manager start
}







downall
#MAC CHANGER SHOULD BE MANUAL IF YOU ARE IN A VM
#macchanger
timeshield
whonixing
upall

#route


reboot