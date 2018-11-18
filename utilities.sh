#!/bin/bash
clear

menu(){
	echo "----------------------------"
	echo 
	echo "	MAIN - MENU"
	echo
	echo "----------------------------"
	echo
	echo "1. Ongoing Processor Activity"
	echo "2. Users currently logged in"
	echo "3. Number of users currently logged in"
	echo "4. Users with bash shell"
	echo "5. Exit"
	echo
	echo "----------------------------"
	echo
	echo "Please enter option [1 - 5]:"  
}

option=y
while [ "$option" != "5" ]
do
	menu # calls the menu function each time, while the whileloop remains true
	read option
	case $option in
		1) top;; # the user has to press [q] to exit and get back to main menu 
		2) who;;
		3) who | wc -l;;
		4) ps aux | grep bash | grep -v grep | cut -d " " -f 1 | sort | uniq;;
		5) break;; # exit
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." # waits for the user to press [enter] to continue
clear

done

clear
