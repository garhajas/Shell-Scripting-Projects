#!/bin/bash
#if the path does not already exist, then make it.
if [ ! -d "/tmp/garhajas/eecs2031m/a1/recycle-bin" ]
	then 
	mkdir -p /tmp/garhajas/eecs2031m/a1/recycle-bin
fi

if [ $# -gt 0 ] #if there are more than 0 files to delete
	then 
	for i in $@
	do
		if [ -e "$i" ]
		then
			mv $i /tmp/garhajas/eecs2031m/a1/recycle-bin
			echo "deleteing $i"
		else 
			mv $i /tmp/garhajas/eecs2031m/a1/recycle-bin
		fi
	done

else
	#display error message
	echo "Error: no target specified"
	echo "usage:./myrm <files>"
fi