#!/bin/bash -x

for folder in `ls *.txt`
do
        foldername=`echo $folder | awk -F'.' {print $1}`
	if [ -d $foldername ];
 	then
		rm -R $foldername
	fi
		mkdir $foldername
		cp $files $foldername
done
