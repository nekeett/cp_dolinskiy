#!/bin/bash
mailto="nekeett@gmail.com"
theme="This configuration files has been changed:"
filesChanged="filesCh.txt"
debsums -c | awk '{print $1}' > $fileChanged

	if [ ! -e '$fileChanged' ]
	then
	theme="Something wrong with your script"
	echo "file does not exist" | mail -s "$theme" $mailto
	exit 2
	fi

	if [ ! -s '$fileChanged' ]
	then
 	exit 1
	fi

cat $fileChanged | mail -s "$theme" $mailto

