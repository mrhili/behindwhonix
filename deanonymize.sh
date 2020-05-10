#!/bin/bash

# bash shell script that anonymize you and deanonymize you , it work behind whonix

restartnet(){

	/etc/init.d/networking restart
	iptables -F
	dhclient -r
	dhclient

}
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


dewhonixing(){
	#when using whonix


	FILE1=/etc/resolv.conf.behindwhonixbackup
	if [ -f "$FILE1" ]; then
		echo "$FILE1 exist thats why we will just copying it"
		echo "if you networking dont work after that"
		echo "pleez delete the file : $FILE1"
		echo "and rerun the script"
		cp $FILE1 /etc/network/interfaces

	else

		#ifnot there
		echo -e '# This file describes the network interfaces available on your system\n# and how to activate them. For more information, see interfaces(5).\nsource /etc/network/interfaces.d/*\n##########NORMAL STUFF\nauto lo\niface lo inet loopback \n\nauto eth0\niface eth0 inet dhcp' > /etc/network/interfaces

		echo -e '# This file describes the network interfaces available on your system\n# and how to activate them. For more information, see interfaces(5).\nsource /etc/network/interfaces.d/*\n##########NORMAL STUFF\nauto lo\niface lo inet loopback \n\nauto eth0\niface eth0 inet dhcp' > $FILE1


	fi


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






restartnet
downall
#MAC CHANGER SHOULD BE MANUAL IF YOU ARE IN A VM
#macchanger
timeshield
dewhonixing
upall

#route


reboot