#!/bin/bash
mailto="nekeett@gmail.com"
theme="Files has been changed"
message="This files has been changed:"
file="fileChanged.txt"
filesChanged=$(debsums -a | grep FAILED | awk -F ' ' '{print $1}')

	if [ -z '$filesChanged' ]
	then
	exit 0
	fi

echo "$message" > $file && echo "$filesChanged" >> $file

	if [ ! -f $file ]
	then
	theme="Something wrong with your script."
	echo "$file does not exists. Check it out." | mail -s "$theme" $mailto
	exit 1
	fi
cat $file | mail -s "$theme" $mailto
if [ "$?" == "0" ]
then
rm $file
fi

